import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:simplest/simplest.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/check_transaction_fee_response.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/models/transfer_money/check_voucher_response.dart';
import 'package:vipay/src/models/transfer_money/get_balance_available_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_merchan_request.dart';

import 'package:vipay/src/models/transfer_money/send_money_request.dart';
import 'package:vipay/src/screens/transfer/widgets/common.dart';
part 'transfer_confirm_state.dart';
part 'transfer_confirm_cubit.freezed.dart';

class TransferConfirmCubit extends BaseCubit<TransferConfirmState> {
  TransferConfirmCubit(
      {UserSearchItem user,
      Wallet selectedCurrency,
      MyVoucherOrder myVoucherOrder,
      CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse})
      : super(Initial(TransferConfirmData(
            user: user,
            selectedCurrency: selectedCurrency,
            myVoucherOrder: myVoucherOrder,
            checkVoucherResponse: checkVoucherResponse,
            sendMoneyRequest: sendMoneyRequest,
            feeResponse: feeResponse)));

  void sendMoney() async {
    final responseDialogCheck = await dialogService.showDialog(
        title: appConfig.appName,
        description: 'confirm_payment'.tr,
        barrierDismissible: false,
        buttonTitle: 'confirm'.tr,
        cancelTitle: 'cancel'.tr);
    if (!responseDialogCheck.confirmed) {
      return;
    }

    try {
      var _phone = appPref.getUser?.data?.phone ?? '';
      final _phoneAuthResponse =
          await locator<PhoneAuthService>().verifyPhoneNumber(_phone);

      if (_phoneAuthResponse.verifyToken.isBlank) {
        return;
      }

      final SendMoneyRequest request = SendMoneyRequest(
          amount: state.data.sendMoneyRequest.amount.replaceAll(',', ''),
          currencyId: state.data.sendMoneyRequest.currencyId,
          note: state.data.sendMoneyRequest.note,
          totalFees: state.data.sendMoneyRequest.totalFees,
          receiverId: state.data.sendMoneyRequest.receiverId);

      if (state.data.myVoucherOrder != null &&
          state.data.checkVoucherResponse != null &&
          state.data.selectedCurrency.currId == IdCurrency.ID_USD) {
        sendMoneyMerchant(request);
        return;
      }
      emit(Loading(state.data.copyWith(isLoadingScaffold: true)));

      final response = await dataRepository.sendMoney(request);
      if (response.success) {
        final dialogResponse = await dialogService.showDialog(
            title: appConfig.appName,
            description:
                'transfer_successfully_confirm_to_return_to_the_main_screen'.tr,
            barrierDismissible: false,
            buttonTitle: 'confirm'.tr,
            cancelTitle: 'cancel'.tr);
        emit(Loading(state.data.copyWith(isLoadingScaffold: false)));
        if (dialogResponse.confirmed) {
          await navigator.pushNamedAndRemoveUntil(
              RouteGenerator.tabScreen, (route) => false);
        } else {
          navigator.pop(true);
        }
      } else {
        await dialogService.showDialog(
            title: appConfig.appName,
            description: 'an_error_occurred_please_try_again_later'.tr,
            barrierDismissible: false,
            buttonTitle: 'ok'.tr);
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoadingScaffold: false)));
      handleAppError(e);
    }
  }

  void sendMoneyMerchant(SendMoneyRequest sendMoneyRequest) async {
    try {
      emit(Loading(state.data.copyWith(isLoadingScaffold: true)));
      final request = SendMoneyMerchantRequest(
          code: state.data.myVoucherOrder.couponCode,
          paymentAmount: int.parse(sendMoneyRequest.amount),
          merchantId: sendMoneyRequest.receiverId); //idRecived
      final response =
          await dataRepository.sendMoneyMerchant(request, appPref.token);
      emit(Loading(state.data.copyWith(isLoadingScaffold: false)));
      if (response.success) {
        final dialogResponse = await dialogService.showDialog(
            title: appConfig.appName,
            description:
                'transfer_successfully_confirm_to_return_to_the_main_screen'.tr,
            barrierDismissible: false,
            buttonTitle: 'confirm'.tr,
            cancelTitle: 'cancel'.tr);
        emit(Loading(state.data.copyWith(isLoadingScaffold: false)));
        if (dialogResponse.confirmed) {
          await navigator.pushNamedAndRemoveUntil(
              RouteGenerator.tabScreen, (route) => false);
        } else {
          navigator.pop(true);
        }
      } else {
        await dialogService.showDialog(
            title: appConfig.appName,
            description: 'an_error_occurred_please_try_again_later'.tr,
            barrierDismissible: false,
            buttonTitle: 'ok'.tr);
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoadingScaffold: false)));
      handleAppError(e);
    }
  }

  String handleReduceMoney() {
    final double amount =
        double.parse(state.data.sendMoneyRequest.amount.replaceAll(',', ''));
    final double paymentCheck =
        state.data.checkVoucherResponse.data?.paymentAmount ?? 0.0;

    final moneyFormat = MoneyMaskedTextController(
        decimalSeparator: '.',
        thousandSeparator: ',',
        precision: 2,
        initialValue: (amount - paymentCheck).toPrecision(2));

    return moneyFormat.text;
  }

  String handleTotalMoney() {
    if (state.data.checkVoucherResponse != null &&
        state.data.myVoucherOrder != null) {
      final double paymentCheck =
          state.data.feeResponse.data?.totalAmountWithFee ?? 0.0;
      final moneyFormat = MoneyMaskedTextController(
          decimalSeparator: '.',
          thousandSeparator: ',',
          precision: 2,
          initialValue: paymentCheck.toPrecision(2));
      return moneyFormat.text;
    } else {
      return state.data.feeResponse?.data?.totalAmountWithFee?.toString() ??
          state.data.sendMoneyRequest.amount;
    }
  }
}
