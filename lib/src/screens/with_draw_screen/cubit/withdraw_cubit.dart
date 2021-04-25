import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/withdraw/withdraw_money_request.dart';
import 'package:vipay/src/screens/deposit/models/bank_account_response_model.dart';
import 'package:vipay/src/screens/transfer/widgets/common.dart';

part 'withdraw_state.dart';

class WithdrawCubit extends BaseCubit<WithdrawState> {
  WithdrawCubit() : super(WithdrawInitial());

  Future<bool> checkLogin() async {
    final token = await appPref.token;
    if (token.isEmpty) {
      emit(WithdrawState.fromState(state, isLogin: false));
      return false;
    }
    emit(WithdrawState.fromState(state, isLogin: true));
    return true;
  }

  @override
  dynamic initData() async {
    final _checkLogin = await checkLogin();
    if (_checkLogin) {
      getAvailable();
    } else {
      snackbarService.showSnackbar(message: 'signin_to_use_feature'.tr);
    }
    return super.initData();
  }

  void getAvailable() async {
    try {
      changeLoadingShimmer(true);
      final responseAvailable = await dataRepository.getUserAvailable();
      final responseGetBankAccount = await dataRepository.getBankAccount();
      emit(WithdrawGetAvailable(
          state, responseAvailable, responseGetBankAccount.data));
      changeLoadingShimmer(false);
    } catch (e) {
      handleAppError(e);
    }
  }

  void changeLoadingShimmer(bool isLoading) {
    emit(WithdrawState.fromState(state, isShowShimmer: isLoading));
  }

  void handleButtonWithDraw(TextEditingController controller) async {
    if (state.isLogin) {
      if (state.isLoading || state.isShowShimmer) {
        await snackbarService.showSnackbar(
            message: 'please_wait_for_a_moment'.tr);
        return;
      }
      if (state.selectIdBank == -1) {
        await snackbarService.showSnackbar(
            message: 'please_select_the_associated_bank'.tr);
      } else {
        final dialogResponse = await dialogService.showDialog(
            title: appConfig.appName,
            cancelTitle: 'cancel'.tr,
            buttonTitle: 'confirm'.tr,
            description:
                'you_will_transfer_to_your_account_number_click_confirm_to_withdraw_your_money'
                    .trArgs(['${controller.text}', 'USD', 'bank', '\n']));
        if (dialogResponse.confirmed) {
          withdrawMoney(controller);
        }
      }
    } else {
      emit(WithdrawShowNotLogin(state));
    }
  }

  void changeSelectBank(int select) {
    emit(WithdrawState.fromState(state, selectIdBank: select));
  }

  void onPressItemBank(int idBank) {
    if (idBank == state.selectIdBank) {
      emit(WithdrawState.fromState(state, selectIdBank: -1));
    } else {
      emit(WithdrawState.fromState(state, selectIdBank: idBank));
    }
  }

  String validateAmount(String value) {
    if (value.isEmpty) {
      return 'amount_must_be_greater_than'.tr;
    }
    if (int.parse(value.replaceAll(',', '')) < 1) {
      return 'amount_must_be_greater_than'.tr;
    }
    if (state.availableResponse.data != null &&
        state.availableResponse.data.wallets.isNotEmpty) {
      final indexWalletUsd = state.availableResponse?.data != null
          ? state.availableResponse.data.wallets.isNotEmpty
              ? state.availableResponse.data.wallets.indexWhere(
                  (element) => element.currCode == CodeCurrency.CODE_USD)
              : -1
          : -1;
      final walletUsd = indexWalletUsd != -1
          ? state.availableResponse.data.wallets[indexWalletUsd]
          : null;

      if (walletUsd == null) {
        return 'server_error'.tr;
      }

      if (walletUsd.balance.parseDouble() <
          value.replaceAll(',', '').parseDouble()) {
        final currencyFormatter =
            NumberFormat.currency(locale: 'vi_VN', symbol: walletUsd.currCode);
        String result = 'withdrawal_amount_must_not_exceed_available_balance'
            .trArgs([
          '${currencyFormatter.format(walletUsd.balance.parseDouble())}'
        ]);
        return result;
      } else {
        return null;
        // return 'an_error_occurred_please_try_again_later'.tr;
      }
    } else {
      return 'server_error'.tr;
    }
  }

  void withdrawMoney(TextEditingController controller) async {
    try {
      int money = int.parse(controller.text.replaceAll(',', ''));
      emit(WithdrawState.fromState(state, isLoading: true));
      final withdrawMoneyRequest = WithdrawMoneyRequest(
          amount: money,
          currencyId: IdCurrency.ID_USD,
          bankId: state.selectIdBank);
      final response = await dataRepository.withdrawMoney(withdrawMoneyRequest);
      if (response.success) {
        emit(WithdrawState.fromState(state, isLoading: false));
        await getAvailable();
        await dialogService.showDialog(
            title: appConfig.appName, description: 'successful_withdrawal'.tr);
        controller.clear();
        emit(WithdrawState.fromState(state, selectIdBank: -1));
      }
    } catch (e) {
      emit(WithdrawState.fromState(state, isLoading: false));
      await handleAppError(e);
    }
  }

  void addBank() async {
    final response =
        await navigator.pushNamed(RouteGenerator.withdrawAddBankScreen) as Map;
    if (response != null) {
      final listBank = state.listBankAccount;
      listBank.add(response['bankAccount']);
      emit(WithdrawState.fromState(state, listBankAccount: listBank));
    }
  }

  String handleAccountNumber(String accountNumber) {
    /*List<String> resultSplit =
        accountNumber.isEmpty ? [] : accountNumber.split('');*/
    String result = accountNumber ?? [];
    if (result.length > 3) {
      result = result.toString().substring(result.length - 4);
    } else if (result.length < 3 && result.isNotEmpty) {
      result = result.toString().substring(result.length - 1);
    } else {
      result = '';
    }
    return ('**** ' + result);
  }

}
