part of 'login_cubit.dart';

class LoginState {
  bool isPasswordObscure;
  bool isCheckLoginByPhone;
  bool isLoading;
  LoginRequest existLoginRequest;

  LoginState(
      {this.isPasswordObscure,
      this.isCheckLoginByPhone,
      this.isLoading,
      this.existLoginRequest});

  LoginState copyWith(
      {bool isPasswordObscure,
      bool isCheckLoginByPhone,
      bool isLoading,
      LoginRequest existLoginRequest}) {
    return LoginState(
        isPasswordObscure: isPasswordObscure ?? this.isPasswordObscure,
        isCheckLoginByPhone: isCheckLoginByPhone ?? this.isCheckLoginByPhone,
        isLoading: isLoading ?? this.isLoading,
        existLoginRequest: existLoginRequest ?? this.existLoginRequest);
  }

  LoginState.from(LoginState state) {
    isPasswordObscure = state.isPasswordObscure;
    isCheckLoginByPhone = state.isCheckLoginByPhone;
    isLoading = state.isLoading;
    existLoginRequest = state.existLoginRequest;
  }
}

class LoginInitial extends LoginState {
  LoginInitial()
      : super(
            isPasswordObscure: true,
            isCheckLoginByPhone: true,
            isLoading: false,
            existLoginRequest: null);
}

class LoginSuccessState extends LoginState {
  LoginSuccessState(LoginState state) : super.from(state);
}

class LoginFailState extends LoginState {
  String message;
  LoginFailState(this.message, LoginState state) : super.from(state);
}

class LoginUpdateObscurePassState extends LoginState {
  LoginUpdateObscurePassState(LoginState state) : super.from(state);
}

class ToggleLoginByPhoneState extends LoginState {
  ToggleLoginByPhoneState(LoginState state, bool isCheckLoginByPhone)
      : super.from(state.copyWith(
          isCheckLoginByPhone: isCheckLoginByPhone,
        ));
}

class ShowSavedCredential extends LoginState {
  final LoginRequest loginRequest;
  ShowSavedCredential({
    LoginState state,
    this.loginRequest,
  }) : super.from(state.copyWith());
}

class CheckDeviceState extends LoginState {
  CheckDeviceState({bool hasSupportBiometrics, LoginState state})
      : super.from(state.copyWith());
}
