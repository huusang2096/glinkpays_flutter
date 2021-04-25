import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/screens/deposit/models/stripe_payment_store_request_model.dart';

part 'deposit_add_card_state.dart';

class DepositAddCardCubit extends BaseCubit<DepositAddCardState> {
  DepositAddCardCubit() : super(DepositAddCardInitial());

  void handleOnChangeTextField() {
    emit(DepositAddCardState.fromState(state));
  }

  void handleShowBackCard(FocusNode focusNode) {
    focusNode.hasFocus
        ? emit(DepositAddCardState.fromState(state, isShowBackCard: true))
        : emit(DepositAddCardState.fromState(state, isShowBackCard: false));
  }

  void onPressDone(
      {String cardNumber,
      String month,
      String year,
      String name,
      String cvc}) async {
    final stripePaymentStoreRequest = StripePaymentStoreRequest(
        number: cardNumber,
        name: name,
        cvv: cvc,
        expMonth: month,
        expYear: year);
    navigator.pop({'stripePaymentStoreRequest': stripePaymentStoreRequest});
  }

  String validateCardNumber(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    if (value.length < 16) {
      return 'wrong_format'.tr;
    }
    return null;
  }

  String validateCardMonth(String value, String month, String year) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }

    int yearNow = DateTime.now().year;
    int monthNow = DateTime.now().month;
    if (int.parse(year) == yearNow && int.parse(value) < monthNow) {
      return 'wrong_format'.tr;
    }
    if (int.parse(value) > 12 || int.parse(value) < 1) {
      return 'wrong_format'.tr;
    }
    return null;
  }

  String validateCardYear(String value, String month, String year) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    int yearNow = DateTime.now().year;
    if (int.parse(value) < yearNow) {
      return 'wrong_format'.tr;
    }
    return null;
  }

  String validateCardName(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String validateCardCvv(String value) {
    if (value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    if (value.length < 3) {
      return 'wrong_format'.tr;
    }
    return null;
  }

  void initDataCard(
      {TextEditingController controllerCardNumber,
      TextEditingController controllerCardHolderName,
      TextEditingController controllerExpiryMonth,
      TextEditingController controllerExpiryYear,
      TextEditingController controllerCvv,
      StripePaymentStoreRequest stripePaymentStoreRequest}) {
    controllerCardNumber.text = stripePaymentStoreRequest.number;
    controllerCardHolderName.text = stripePaymentStoreRequest.name;
    controllerExpiryMonth.text = stripePaymentStoreRequest.expMonth;
    controllerExpiryYear.text = stripePaymentStoreRequest.expYear;
    controllerCvv.text = stripePaymentStoreRequest.cvv;
    emit(DepositAddCardState.fromState(state));
  }
}
