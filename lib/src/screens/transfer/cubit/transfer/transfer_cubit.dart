import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/models/transfer_money/check_voucher_response.dart';
import 'package:vipay/src/models/transfer_money/get_balance_available_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_merchan_request.dart';
import 'package:vipay/src/models/transfer_money/send_money_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/screens/transfer/widgets/common.dart';

part 'transfer_state.dart';

part 'transfer_cubit.freezed.dart';

class TransferCubit extends BaseCubit<TransferState> {
  TransferCubit(UserSearchItem user)
      : super(Initial(TransferStateData(user: user)));

  @override
  dynamic initData() {
    getBalanceAvailable();
    return super.initData();
  }

  void changeSelectedCurrency(Wallet selectedCurrency) {
    if (selectedCurrency.currId == IdCurrency.ID_GAS) {
      emit(Loaded(state.data.copyWith(
          selectedCurrency: selectedCurrency,
          myVoucherOrder: null,
          checkVoucherResponse: null)));
    } else {
      emit(Loaded(state.data.copyWith(
        selectedCurrency: selectedCurrency,
      )));
    }
  }

  void sendMoney(
      {TextEditingController amountController,
      TextEditingController noteController}) async {
    //default;
    try {
      int totalFees = 0;
      int currencyId = state.data?.selectedCurrency?.currId;
      int receiverId = state.data.user.id;
      String note = noteController.text.isEmpty ? 'CT' : noteController.text;

      if (currencyId == null ||
          state.data.getBalanceAvailableResponse.data == null) {
        await snackbarService.showSnackbar(
            message: 'an_error_occurred_please_try_again_later'.tr);
        return;
      }

      final sendMoneyRequest = SendMoneyRequest(
          note: note,
          totalFees: totalFees,
          amount: amountController.text,
          currencyId: currencyId,
          receiverId: receiverId);

      final bool check = await checkVoucher(amountController.text);

      if (!check) {
        return;
      }
      final getFeeResponse = await dataRepository.getFeeTransaction(
          receiverId: receiverId,
          totalFee: totalFees.toString(),
          currId: currencyId.toString(),
          amount: amountController.text);
      final responsePushScreen = await navigator
          .pushNamed(RouteGenerator.transferConfirmScreen, arguments: {
        'user': state.data.user,
        'selectedCurrency': state.data.selectedCurrency,
        'myVoucherOrder': state.data.myVoucherOrder,
        'checkVoucherResponse': state.data.checkVoucherResponse,
        'sendMoneyRequest': sendMoneyRequest,
        'feeResponse': getFeeResponse,
      });

      if (responsePushScreen != null && responsePushScreen) {
        amountController.clear();
        noteController.clear();
        emit(Loaded(state.data
            .copyWith(myVoucherOrder: null, checkVoucherResponse: null)));
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void changeIsLoading(bool isLoading) {
    emit(Loaded(state.data.copyWith(isLoadingScaffold: isLoading)));
  }

  void getBalanceAvailable() async {
    changeIsLoading(true);
    try {
      final response = await dataRepository.getBalanceAvailable();
      if (response.success) {
        emit(Loaded(state.data.copyWith(
            getBalanceAvailableResponse: response,
            selectedCurrency: response.data.wallets.first)));
      } else {
        await dialogService.showDialog(
            title: appConfig.appName, description: response.message);
      }
      changeIsLoading(false);
    } catch (e) {
      changeIsLoading(false);
      handleAppError(e);
    }
  }

  String validateAmount(String value) {
    if (value.isEmpty) {
      return 'amount_must_be_greater_than'.tr;
    }

    if (int.parse(value.replaceAll(',', '')) < 1) {
      return 'amount_must_be_greater_than'.tr;
    }

    if (state.data.getBalanceAvailableResponse.data != null &&
        state.data.selectedCurrency.currId != null) {
      for (var item in state.data.getBalanceAvailableResponse.data.wallets) {
        if (item.currId == state.data.selectedCurrency.currId) {
          if (value.replaceAll(',', '').parseDouble() >
              item.balance.parseDouble()) {
            String result = 'transfer_amount_must_not_exceed_available_balance'
                .trArgs([
              '${item.balance.parseDouble()}',
              state.data.selectedCurrency.currCode
            ]);
            return result;
          } else {
            return null;
          }
        }
      }
    } else {
      return 'server_error'.tr;
    }
    return null;
  }

  void handleSelectVoucher(String money) async {
    if (money.isEmpty) {
      snackbarService.showSnackbar(
          message:
              'please_enter_the_amount_before_choosing_the_discount_code'.tr);
      return;
    }
    final data = await navigator
        .pushNamed(RouteGenerator.transferSelectVoucherScreen, arguments: {
      'voucher': state.data.myVoucherOrder,
      'money': money,
      'user': state.data.user
    }) as Map;

    if (data != null) {
      emit(Loaded(state.data.copyWith(
          myVoucherOrder: data['myVoucherOrder'],
          checkVoucherResponse: data['checkVoucherResponse'])));
    }
  }

  void handleTapIconDeleteSelectVoucher() {
    if (state.data.myVoucherOrder == null &&
        state.data.checkVoucherResponse == null) {
      return;
    }
    emit(Loaded(
        state.data.copyWith(myVoucherOrder: null, checkVoucherResponse: null)));
  }

  void changeResponseWhenChangeMoney() {
    if (state.data.myVoucherOrder != null &&
        state.data.checkVoucherResponse != null &&
        state.data.selectedCurrency.currId == IdCurrency.ID_USD) {
      emit(Loaded(state.data.copyWith(checkVoucherResponse: null)));
    }
  }

  Future<bool> checkVoucher(String money) async {
    if (state.data.myVoucherOrder != null &&
        state.data.checkVoucherResponse == null) {
      try {
        emit(Loading(state.data.copyWith(isLoadingScaffold: true)));
        final sendMoneyMerchantRequest = SendMoneyMerchantRequest(
            code: state.data.myVoucherOrder.couponCode,
            merchantId: state.data.user.id,
            paymentAmount: int.parse(money.replaceAll(',', '')));
        final response = await dataRepository.checkVoucher(
            sendMoneyMerchantRequest, appPref.token);
        if (response.success) {
          emit(Loading(state.data.copyWith(
              isLoadingScaffold: false, checkVoucherResponse: response)));
          return true;
        } else {
          snackbarService.showSnackbar(message: response.message);
          return false;
        }
      } catch (e) {
        emit(Loading(state.data.copyWith(isLoadingScaffold: false)));
        await handleAppError(e);
        return false;
      }
    } else {
      return true;
    }
  }
}
