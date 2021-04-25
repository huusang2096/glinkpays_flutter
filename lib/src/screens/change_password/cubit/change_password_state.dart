part of 'change_password_cubit.dart';

@freezed
abstract class ChangePasswordStateData with _$ChangePasswordStateData {
  const factory ChangePasswordStateData({
    @Default(false) bool isLoading,
    @nullable ChangePasswordResponse userResponse,
    @Default(true) bool isPasswordObscure,
    @Default(true) bool isConfirmPasswordObscure,
    @Default(true) bool isOldPasswordObscure,
  }) = Data;
}

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial(Data data) = Initial;
  const factory ChangePasswordState.loading(Data data) = Loading;
  const factory ChangePasswordState.updateObscurePass(Data data) =
      UpdateObscurePass;
  const factory ChangePasswordState.updateObscureConfirmPass(Data data) =
      UpdateObscureConfirmPass;
  const factory ChangePasswordState.updateObscureOldPass(Data data) =
      UpdateObscureOldPass;
  const factory ChangePasswordState.updatePasswordSuccess(Data data) =
      UpdatePasswordSuccess;
}
