import 'package:flutter/material.dart';
import 'package:flutter_braintree/flutter_braintree.dart';
import 'package:simplest/simplest.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/screens/deposit/models/bank_account_response_model.dart';
import 'package:vipay/src/screens/deposit/models/braintree_client_token_response.dart';
import 'package:vipay/src/screens/deposit/models/braintree_key_request.dart';
import 'package:vipay/src/screens/deposit/models/braintree_key_response.dart';
import 'package:vipay/src/screens/deposit/models/braintree_payment_store_request.dart';
import 'package:vipay/src/screens/deposit/models/stripe_key_request.dart';
import 'package:vipay/src/screens/deposit/models/stripe_key_response.dart';
import 'package:vipay/src/screens/deposit/models/stripe_payment_store_request_model.dart';

part 'deposit_state.dart';

class DepositCubit extends BaseCubit<DepositState> {
  DepositCubit() : super(DepositInitial());

  @override
  dynamic initData() async {
    final _checkLogin = await checkLogin();
    if (_checkLogin) {
      getKeyStripeAndBrainTreeToken(currencyId: 1); //USD : 1, GAS : 4
    } else {
      snackbarService.showSnackbar(message: 'signin_to_use_feature'.tr);
    }
    return super.initData();
  }

  Future<bool> checkLogin() async {
    final token = await appPref.token;
    if (token.isEmpty) {
      emit(DepositState.fromState(state, isLogin: false));
      return false;
    }
    emit(DepositState.fromState(state, isLogin: true));
    return true;
  }

  void fetchDataInit() async {
    try {
      changeLoadingShimmer(true);
      final response = await dataRepository.getBankAccount();
      emit(DepositGetBankAccount(state, response));
      changeLoadingShimmer(false);
    } catch (e) {
      handleAppError(e);
    }
  }

  void changeLoadingShimmer(bool isLoading) {
    emit(DepositState.fromState(state, isShowShimmer: isLoading));
  }

  void onPressItemBank(int idBank) {
    if (idBank == state.selectIdBank) {
      emit(DepositState.fromState(state, selectIdBank: -1));
    } else {
      emit(DepositState.fromState(state, selectIdBank: idBank, selectCard: -1));
    }
  }

  void createCard() async {
    if (!state.isLogin) {
      emit(DepositNotLogin(state));
      return;
    }
    try {
      final stripePaymentStoreRequest = await navigator
          .pushNamed(RouteGenerator.depositAddCardScreen, arguments: {
        'stripePaymentStoreRequest': state.stripePaymentStoreRequest
      }) as Map;
      if (stripePaymentStoreRequest == null) {
        if (state.stripePaymentStoreRequest != null) {
          emit(
            DepositState.fromState(
              state,
              selectIdBank: -1,
              selectCard: 1,
            ),
          );
        }
        return;
      }
      emit(
        DepositState.fromState(state,
            selectIdBank: -1,
            selectCard: 1,
            stripePaymentStoreRequest:
                stripePaymentStoreRequest['stripePaymentStoreRequest']),
      );
    } catch (e) {
      print(e);
    }
  }

  void handleDeposit(TextEditingController moneyController) async {
    if (state.isLogin) {
      if (state.selectIdBank == -1 && state.selectCard == -1) {
        await snackbarService.showSnackbar(
            message: 'select_a_payment_method'.tr);
        return;
      }
      if (state.stripeKeyResponse == null) {
        await dialogService.showDialog(
          title: appConfig.appName,
          description: 'server_error'.tr,
          buttonTitle: 'confirm'.tr,
          barrierDismissible: false,
        );
        return;
      }
      if (state.selectCard != -1) {
        final dialogResponse = await dialogService.showDialog(
          title: appConfig.appName,
          description:
              'payment_methods_You_have_confirmed_to_deposit_USD_into_your_wallet'
                  .trArgs(['credit_debit_card'.tr, '\n', moneyController.text]),
          buttonTitle: 'confirm'.tr,
          cancelTitle: 'cancel'.tr,
          barrierDismissible: false,
        );
        if (dialogResponse.confirmed) {
          try {
            emit(DepositState.fromState(state, isLoading: true));
            final responseCreateTokenWithCard =
                await StripePayment.createTokenWithCard(
              CreditCard(
                number: state.stripePaymentStoreRequest.number,
                expMonth: int.parse(state.stripePaymentStoreRequest.expMonth),
                expYear: int.parse(state.stripePaymentStoreRequest.expYear),
              ),
            );
            state.stripePaymentStoreRequest.amount =
                int.parse(moneyController.text.replaceAll(',', ''));

            state.stripePaymentStoreRequest.totalAmount =
                int.parse(moneyController.text.replaceAll(',', ''));

            state.stripePaymentStoreRequest.stripeToken =
                responseCreateTokenWithCard.tokenId;
            state.stripePaymentStoreRequest.currencyId = 1;
            state.stripePaymentStoreRequest.depositPaymentId = 2;
            final responseStripePaymentStore = await dataRepository
                .stripePaymentStore(state.stripePaymentStoreRequest);
            if (responseStripePaymentStore.success) {
              emit(DepositState.fromState(state, isLoading: false));
              await dialogService.showDialog(
                title: appConfig.appName,
                description: 'you_have_deposited_USD_in_your_wallet'
                    .trArgs([moneyController.text]),
                buttonTitle: 'confirm'.tr,
                barrierDismissible: false,
              );
              moneyController.clear();
            }
          } catch (e) {
            emit(DepositState.fromState(state, isLoading: false));
            handleAppError(e);
          }
        }
      }
    } else {
      emit(DepositNotLogin(state));
    }
  }

  String validateAmount(String value) {
    if (value.isEmpty) {
      return 'amount_must_be_greater_than'.tr;
    }
    if (int.parse(value.replaceAll(',', '')) < 1) {
      return 'amount_must_be_greater_than'.tr;
    }
    return null;
  }

  void getKeyStripeAndBrainTreeToken({int currencyId}) async {
    try {
      emit(DepositState.fromState(state, isLoading: true));
      final stripeKeyRequest =
          StripeKeyRequest(currencyId: currencyId, methodId: 2);

      final brainTreeKeyRequest =
          BrainTreeKeyRequest(currencyId: currencyId, methodId: 3);

      final List<Future> futures = [
        dataRepository.getClientTokenBrainTree(brainTreeKeyRequest),
        dataRepository.getKeyStripe(stripeKeyRequest),
        dataRepository.getKeyBrainTree(brainTreeKeyRequest),
      ];

      final listResponse = await Future.wait(futures);

      final brainTreeClientTokenResponse =
          listResponse[0] as BrainTreeClientTokenResponse;
      final stripeKeyResponse = listResponse[1] as StripeKeyResponse;

      final brainTreeKeyResponse = listResponse[2] as BrainTreeKeyResponse;

      if (brainTreeKeyResponse.success &&
          brainTreeClientTokenResponse.success &&
          stripeKeyResponse.success) {
        StripePayment.setOptions(StripeOptions(
          publishableKey: stripeKeyResponse.data.stripeKeys.publishableKey,
        ));

        emit(DepositState.fromState(state,
            brainTreeKeyResponse: brainTreeKeyResponse,
            brainTreeClientTokenResponse: brainTreeClientTokenResponse,
            stripeKeyResponse: stripeKeyResponse,
            isLoading: false));
      }
    } catch (e) {
      emit(DepositState.fromState(state, isLoading: false));
      handleAppError(e);
    }
  }

  void handlePayPal(TextEditingController moneyController) async {
    if (state.isLogin) {
      if (state.brainTreeClientTokenResponse == null) {
        await dialogService.showDialog(
          title: appConfig.appName,
          description: 'server_error'.tr,
          buttonTitle: 'confirm'.tr,
          barrierDismissible: false,
        );
        return;
      }
      final request = BraintreePayPalRequest(
          amount: moneyController.text.replaceAll(',', ''),
          displayName: 'ViPay',
          currencyCode: 'USD',
          billingAgreementDescription: null);
      BraintreePaymentMethodNonce result = await Braintree.requestPaypalNonce(
        state.brainTreeClientTokenResponse.data.clientPaymentToken,
        request,
      );
      if (result != null) {
        try {
          emit(DepositState.fromState(state, isLoading: true));

          final request = BrainTreePaymentStoreRequest();

          request.amount = int.parse(moneyController.text.replaceAll(',', ''));

          request.totalAmount =
              int.parse(moneyController.text.replaceAll(',', ''));

          request.paymentMethodNonce = result.nonce;
          request.currencyId = 1; // 1 usd, 4 GAS
          request.depositPaymentId = 3; //default

          final responseStripePaymentStore =
              await dataRepository.brainTreePaymentStore(request);

          if (responseStripePaymentStore.success) {
            emit(DepositState.fromState(state, isLoading: false));
            await dialogService.showDialog(
              title: appConfig.appName,
              description: 'paypal_payment_was_successful'.tr,
              buttonTitle: 'confirm'.tr,
              barrierDismissible: false,
            );
            moneyController.clear();
          }
        } catch (e) {
          emit(DepositState.fromState(state, isLoading: false));
          handleAppError(e);
        }
      } else {
        await dialogService.showDialog(
          title: appConfig.appName,
          description: 'paypal_payment_has_been_canceled'.tr,
          buttonTitle: 'confirm'.tr,
          barrierDismissible: false,
        );
      }
    } else {
      emit(DepositNotLogin(state));
    }
  }

  Future<void> handleBaoKimPayment(String amount) async {
    if (state.isLogin) {
      try {
        final response = await dataRepository.paymentBaoKim(
            amount: int.parse(amount), paymentMethodId: 9, currId: 1);
        if (response != null) {
          if (await canLaunch(response.success.paymentUrl)) {
            await launch(
              response.success.paymentUrl,
              forceSafariVC: false,
              forceWebView: false,
            );
          } else {
            throw 'Could not launch $response.success.paymentUrl';
          }
        }
      } catch (e) {
        handleAppError(e);
      }
    } else {
      emit(DepositNotLogin(state));
    }
  }

  showDialogDeposit(String depositType) async {
    emit(ShowComfirmDepositDialog(state, depositType));
  }
}
