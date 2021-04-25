import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/list_country_response.dart';
import 'package:vipay/src/screens/with_draw_screen/models/add_bank_request.dart';
import 'package:vipay/src/screens/with_draw_screen/models/delete_bank_response.dart';
import 'package:vipay/src/screens/with_draw_screen/models/update_bank_request.dart';

part 'withdraw_add_bank_state.dart';

class WithdrawAddBankCubit extends BaseCubit<WithdrawAddBankState> {
  WithdrawAddBankCubit() : super(WithdrawAddBankInitial());
  @override
  void initData() {
    initCountryList();
    super.initData();
  }

  void initCountryList() async {
    try {
      final response = await dataRepository.getListCountry();
      emit(GetListCountry(response.data, state));
    } catch (e) {
      handleAppError(e);
    }
  }

  void handleAddBank({
    String accountName,
    String accountNumber,
    String swiftCode,
    String bankName,
    String globalName,
    String bankBranchName,
    String bankBranchCity,
    String bankBranchAddress,
    String country,
  }) async {
    try {
      emit(WithdrawAddBankState.fromState(state, isLoading: true));
      final AddBankRequest addBankRequest = AddBankRequest(
          accountName: accountName,
          accountNumber: accountNumber,
          bankBranchAddress: bankBranchAddress,
          bankBranchCity: bankBranchCity,
          bankBranchName: bankBranchName,
          bankName: bankName,
          globalName: globalName,
          countryId: int.tryParse(country),
          swiftCode: swiftCode);
      final response = await dataRepository.addBank(addBankRequest);
      if (response.success) {
        emit(WithdrawAddBankState.fromState(state, isLoading: false));
        await dialogService.showDialog(
          title: appConfig.appName,
          description: 'link_bank_added_successfully'.tr,
        );
        navigator.pop({'bankAccount': response.data});
      } else {
        await snackbarService.showSnackbar(message: response.message);
      }
    } catch (e) {
      emit(WithdrawAddBankState.fromState(state, isLoading: false));
      handleAppError(e);
    }
  }

  void handleEditBank({
    int id,
    String accountName,
    String accountNumber,
    String swiftCode,
    String bankName,
    String globalName,
    String bankBranchName,
    String bankBranchCity,
    String bankBranchAddress,
    String country,
  }) async {
    try {
      emit(WithdrawAddBankState.fromState(state, isLoading: true));
      final UpdateBankRequest addBankRequest = UpdateBankRequest(
          id: id,
          accountName: accountName,
          accountNumber: accountNumber,
          bankBranchAddress: bankBranchAddress,
          bankBranchCity: bankBranchCity,
          bankBranchName: bankBranchName,
          bankName: bankName,
          globalName: globalName,
          countryId: int.tryParse(country),
          swiftCode: swiftCode);
      final response = await dataRepository.updateBank(addBankRequest);
      if (response.success) {
        emit(WithdrawAddBankState.fromState(state, isLoading: false));
        await dialogService.showDialog(
            title: appConfig.appName,
            description: 'link_bank_edit_successfully'.tr);
        navigator.pop({'bankAccount': response.data});
      } else {
        await snackbarService.showSnackbar(message: response.message);
      }
    } catch (e) {
      emit(WithdrawAddBankState.fromState(state, isLoading: false));
      handleAppError(e);
    }
  }

  Future<void> deleteBank(int id) async {
    try {
      final isConfirm = await dialogService.showConfirmationDialog(
          title: appConfig.appName,
          description: 'confirm_delete'.tr,
          cancelTitle: 'cancel'.tr,
          confirmationTitle: 'ok'.tr);
      if (isConfirm.confirmed) {
        final response = await dataRepository.deleteBank(id);
        if (response.success) {
          await dialogService.showDialog(
            title: appConfig.appName,
            description: 'delete_bank_success'.tr,
          );
          navigator.pop();
          return;
        } else {
          await dialogService.showDialog(
            title: appConfig.appName,
            description: 'delete_bank_failed'.tr,
          );
          return;
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  String validatorAccountName(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorAccountNumber(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorSwiftCode(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorBankName(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorBranchBankName(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorBranchBankCity(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorBranchBankAddress(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorCountry(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validatorEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    var regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'enter_valid_email'.tr;
    } else {
      return null;
    }
  }
}
