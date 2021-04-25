part of 'forgot_password_cubit.dart';

class ForgotPasswordState {
  bool isPasswordObsecure;
  bool isConfirmObsecure;
  bool isPhoneVerified;
  bool isShowLoading;

  ForgotPasswordState(this.isPasswordObsecure, this.isConfirmObsecure,
      this.isPhoneVerified, this.isShowLoading);

  ForgotPasswordState.fromState(ForgotPasswordState state) {
    this.isPasswordObsecure = state.isPasswordObsecure;
    this.isConfirmObsecure = state.isConfirmObsecure;
    this.isPhoneVerified = state.isPhoneVerified;
    this.isShowLoading = isShowLoading;
  }

  ForgotPasswordState.copyWith(
      {bool isPasswordObsecure,
      bool isConfirmObsecure,
      bool isPhoneVerified,
      bool isShowLoading,
      ForgotPasswordState state}) {
    this.isPasswordObsecure = isPasswordObsecure ?? state.isPasswordObsecure;
    this.isConfirmObsecure = isConfirmObsecure ?? state.isConfirmObsecure;
    this.isPhoneVerified = isPhoneVerified ?? state.isPhoneVerified;
    this.isShowLoading = isShowLoading ?? state.isShowLoading;
  }
}

class ForgotPasswordInitial extends ForgotPasswordState {
  ForgotPasswordInitial() : super(true, true, false, false);
}

class ForgotPasswordSuccessState extends ForgotPasswordState {
  ForgotPasswordSuccessState(ForgotPasswordState state)
      : super.copyWith(state: state);
}

class ForgotPasswordFailState extends ForgotPasswordState {
  final String message;
  ForgotPasswordFailState(
      this.message, ForgotPasswordState state, bool isPhoneVerified)
      : super.copyWith(state: state, isPhoneVerified: isPhoneVerified);
}

class ForgotPasswordUpdateObsecurePassState extends ForgotPasswordState {
  ForgotPasswordUpdateObsecurePassState(bool isPasswordObsecure,
      bool isConfirmObsecure, ForgotPasswordState state)
      : super.copyWith(
            state: state,
            isPasswordObsecure: isPasswordObsecure,
            isConfirmObsecure: isConfirmObsecure);
}

class ForgotPasswordVerifyPhoneState extends ForgotPasswordState {
  String verificationId;
  String phoneNumber;
  ForgotPasswordVerifyPhoneState(
      ForgotPasswordState state, this.verificationId, this.phoneNumber)
      : super.copyWith(state: state);
}

class ForgotPasswordLoadingState extends ForgotPasswordState {
  ForgotPasswordLoadingState(bool isLoading, ForgotPasswordState state)
      : super.copyWith(state: state, isShowLoading: isLoading);
}
