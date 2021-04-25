import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/models/change_password/change_password_response.dart';

part 'change_password_state.dart';
part 'change_password_cubit.freezed.dart';

class ChangePasswordCubit extends BaseCubit<ChangePasswordState> {
  ChangePasswordCubit() : super(Initial(Data()));

  void toggleShowPassword() {
    emit(UpdateObscurePass(
        state.data.copyWith(isPasswordObscure: !state.data.isPasswordObscure)));
  }

  void toggleShowConfirmPassword() {
    emit(UpdateObscureConfirmPass(state.data.copyWith(
        isConfirmPasswordObscure: !state.data.isConfirmPasswordObscure)));
  }

  void toggleShowOldPassword() {
    emit(UpdateObscureConfirmPass(state.data
        .copyWith(isOldPasswordObscure: !state.data.isOldPasswordObscure)));
  }

  void submitChangePassword(
      {String oldPass, String password, String confirmPassword}) async {
    try {
      if (password.isEmpty || confirmPassword.isEmpty || oldPass.isEmpty) {
        snackbarService.showSnackbar(message: 'all_field_is_require'.tr);
        return;
      } else if (password != confirmPassword) {
        snackbarService.showSnackbar(
            message: 'pass_or_confirm_pass_dont_match'.tr);
        return;
      } else if (oldPass == password) {
        snackbarService.showSnackbar(message: 'enter_other_pass'.tr);
        return;
      }
      emit(Loading(state.data.copyWith(isLoading: true)));
      final userResponse = await dataRepository.changePassword(
          oldPassword: oldPass,
          password: password,
          confirmPassword: confirmPassword);
      if (userResponse != null) {
        if (userResponse.success == true) {
          emit(UpdatePasswordSuccess(
              state.data.copyWith(userResponse: userResponse)));
          snackbarService.showSnackbar(message: 'update_pass_success'.tr);
        } else {
          emit(Loading(state.data.copyWith(isLoading: false)));
          snackbarService.showSnackbar(
              message: userResponse.message ?? 'unknow_error'.tr);
        }
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }

  @override
  void handleAppError(error) {
    if (error is DioError) {
      if (error.response?.statusCode == 401) {
        snackbarService.showSnackbar(message: 'old_pass_is_not_correct'.tr);
        return;
      }
    }
    return super.handleAppError(error);
  }
}
