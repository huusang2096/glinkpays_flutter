import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/request/login_request_model.dart';
import 'package:vipay/src/models/user.dart';
import 'package:simplest/simplest.dart';

part 'login_state.dart';

class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void loadData() {
    final loginRequest = appPref.loginRequest;
    if (loginRequest == null) {
      return;
    }
    emit(state.copyWith(existLoginRequest: loginRequest));
  }

  void submitLogin(
      {String email, PhoneNumber phoneNumber, String password}) async {
    LoginRequest request = LoginRequest();
    if (state.isCheckLoginByPhone && phoneNumber != null) {
      request.phone = phoneNumber.phoneNumber;
    } else {
      request.email = email;
    }
    if (password.isNullOrBlank) {
      snackbarService.showSnackbar(message: 'please_choose_a_password'.tr);
      return;
    }
    request.password = password;
    _loginWithRequest(request);
  }

  void _loginWithRequest(LoginRequest loginRequest) async {
    try {
      emit(state.copyWith(isLoading: true));
      loginRequest.deviceId = await DeviceHelper.deviceId;
      UserResponse response = await dataRepository.login(loginRequest);
      if (response.data != null) {
        await appPref.setToken(response.data.apiToken);
        await appPref.setUserId(response.data.id.toString());
        await appPref
            .statusVerifyDocument(response.data.identityVerificationWarring);
        await appPref.setUser(response);
        await dataRepository.loadAuthHeader();
        appPref.loginRequest = loginRequest;

        if (!appPref.isEnabledBioLogin) {
          await _askForUseBioLogin();
        }

        emit(LoginSuccessState(state));
      } else {
        throw response.message ?? 'unknow_error'.tr;
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(state.copyWith(isLoading: false));
  }

  @override
  void handleAppError(dynamic error) async {
    if (error is DioError) {
      if (error.response.statusCode == 401) {
        snackbarService.showSnackbar(
            message: 'these_credentials_do_not_match_our_records'.tr);
      }
    }
    super.handleAppError(error);
  }

  void _askForUseBioLogin() async {
    final isConfirmed = (await dialogService.showConfirmationDialog(
            title: 'unlock_with_touch_id_face_id'.tr,
            description: 'message_unlock_with_touch_id_face_id'.tr,
            cancelTitle: 'cancel'.tr,
            confirmationTitle: 'ok'.tr))
        .confirmed;
    if (isConfirmed) {
      appPref.isEnabledBioLogin = true;
    }
  }

  void toggleShowPassword() {
    bool isPasswordObscure = !state.isPasswordObscure;
    emit(state.copyWith(isPasswordObscure: isPasswordObscure));
  }

  void toggleLoginByPhone() {
    bool _isCheckLoginByPhone = !state.isCheckLoginByPhone;
    emit(ToggleLoginByPhoneState(state, _isCheckLoginByPhone));
  }

  void checkSavedCredential() {
    final oldRequest = appPref.loginRequest;
    if (oldRequest == null) {
      return;
    }
    emit(ShowSavedCredential(
      loginRequest: oldRequest,
      state: state,
    ));
  }

  void logInWithAnOtherAccount() {
    appPref.isEnabledBioLogin = false;
    appPref.loginRequest = null;
    final newState = state.copyWith();
    newState.existLoginRequest = null;
    emit(newState);
  }

  void onSelectBioLogin() async {
    final localAuth = LocalAuthentication();
    bool canCheckBiometrics = await localAuth.canCheckBiometrics;

    if (!canCheckBiometrics) {
      return snackbarService.showSnackbar(
          message: 'local_auth_does_not_support'.tr);
    }

    bool didAuthenticate = await localAuth.authenticateWithBiometrics(
        localizedReason: 'please_authenticate_to_login'.tr);

    if (!didAuthenticate) {
      return snackbarService.showSnackbar(
          message: 'local_auth_unable_to_authorize'.tr);
    }
    _loginWithRequest(state.existLoginRequest);
  }
}
