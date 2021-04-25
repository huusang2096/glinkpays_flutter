import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/forgot_pass/forgot_password_request.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends BaseCubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  final PhoneAuthService _phoneAuthService = locator<PhoneAuthService>();

  void submitReset(
      {PhoneNumber phoneNumber,
      String password,
      String confirmPassword}) async {
    if (state.isShowLoading) {
      return;
    }

    try {
      phoneNumber = await PhoneNumber.getRegionInfoFromPhoneNumber(
          phoneNumber.phoneNumber);
    } catch (err) {
      showErrorMessage('invalid_phone_number'.tr);
      return;
    }

    if (password.length < 6) {
      showErrorMessage('passsword_requirement'.tr);
      return;
    }

    if (password != confirmPassword) {
      showErrorMessage('passsword_does_not_match'.tr);
      return;
    }

    emit(ForgotPasswordLoadingState(true, state));

    try {
      final verifyResponse =
          await _phoneAuthService.verifyPhoneNumber(phoneNumber.phoneNumber);
      await dataRepository.resetPassword(ForgotPasswordRequest(
        verifyToken: verifyResponse.verifyToken,
        phone: phoneNumber.phoneNumber,
        newPassword: password,
      ));

      await locator<DialogService>().showDialog(
        title: locator<IAppConfig>().appName,
        buttonTitle: 'ok'.tr,
        barrierDismissible: false,
        description: 'update_pass_success'.tr,
      );

      emit(ForgotPasswordSuccessState(state));
    } catch (e) {
      handleAppError(e);
    }

    emit(ForgotPasswordLoadingState(false, state));
  }

  @override
  initData() {}

  touchShowPassword() {
    emit(ForgotPasswordUpdateObsecurePassState(
        !state.isPasswordObsecure, state.isConfirmObsecure, state));
  }

  touchShowPasswordAgain() {
    emit(ForgotPasswordUpdateObsecurePassState(
        state.isPasswordObsecure, !state.isConfirmObsecure, state));
  }
}
