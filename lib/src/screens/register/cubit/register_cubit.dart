import 'package:vipay/locator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/register/type_user.dart';
import 'package:vipay/src/models/request/register_request_model.dart';
import 'package:simplest/simplest.dart';

part 'register_state.dart';

class RegisterCubit extends BaseCubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  final _phoneAuthService = locator<PhoneAuthService>();

  void changeTypeUser(TypeUser typeUser) {
    emit(ChangeTypeUserRegister(typeUser, state));
  }

  Future<void> submit(
      {String firstName,
      String lastName,
      String email,
      String phone,
      String password,
      String confirmPassword}) async {
    try {
      RegisterRequest registerRequest = RegisterRequest(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phone: phone,
          password: password,
          type: state.typeUser.name);
      registerRequest.confirmPassword = confirmPassword;
      if (_validateRequest(registerRequest).isNotEmpty) {
        await showErrorMessage(_validateRequest(registerRequest));
        return;
      }
      emit(state.copyWith(isLoading: true));
      final responseVerifyToken =
          await _phoneAuthService.verifyPhoneNumber(phone);
      registerRequest.verifyToken = responseVerifyToken.verifyToken;
      print(registerRequest.toString());
      final response = await dataRepository.registerUser(registerRequest);
      if (response.success) {
        final dialogResponse = await dialogService.showDialog(
            title: kAppName, description: response.message);
        if (dialogResponse.confirmed) {
          navigator.pop();
        }
      } else {
        final dialogResponse = await dialogService.showDialog(
            title: kAppName, description: response.message);
        if (dialogResponse.confirmed) {
          return;
        }
      }
    } catch (error) {
      await handleAppError(error);
    }
    emit(state.copyWith(isLoading: false));
  }

  /// Validate request, return error key, empty if success
  String _validateRequest(RegisterRequest request) {
    if (request.firstName.isNullOrBlank ||
        request.lastName.isNullOrBlank ||
        request.phone.isNullOrBlank ||
        request.password.isNullOrBlank ||
        request.confirmPassword.isNullOrBlank ||
        request.type.isNullOrBlank) {
      print(request.toRawJson());
      return 'all_field_is_required'.tr;
    }

    if (!request.email.isEmail) {
      return 'email_incorrect_format'.tr;
    }

    if (request.confirmPassword != request.password) {
      return 'password_not_match'.tr;
    }

    return '';
  }
}
