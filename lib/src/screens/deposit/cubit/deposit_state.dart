part of 'deposit_cubit.dart';

class PaymentStatus {
  static const String CARD = 'CARD';
  static const String BANK = 'BANK';
}

class DepositState {
  BankAccountResponse bankAccount;
  StripePaymentStoreRequest stripePaymentStoreRequest;
  StripeKeyResponse stripeKeyResponse;
  BrainTreeKeyResponse brainTreeKeyResponse;
  BrainTreeClientTokenResponse brainTreeClientTokenResponse;
  bool isLogin;
  bool isLoading;
  bool isShowShimmer;
  int selectIdBank;
  int selectCard;
  String depositType;
  DepositState(
      this.bankAccount,
      this.stripePaymentStoreRequest,
      this.stripeKeyResponse,
      this.brainTreeKeyResponse,
      this.brainTreeClientTokenResponse,
      this.isLogin,
      this.isLoading,
      this.isShowShimmer,
      this.selectIdBank,
      this.selectCard,
      this.depositType);

  DepositState.fromState(DepositState state,
      {BankAccountResponse bankAccount,
      StripePaymentStoreRequest stripePaymentStoreRequest,
      StripeKeyResponse stripeKeyResponse,
      BrainTreeKeyResponse brainTreeKeyResponse,
      BrainTreeClientTokenResponse brainTreeClientTokenResponse,
      bool isLogin,
      bool isLoading,
      bool isShowShimmer,
      int selectIdBank,
      int selectCard,
      String depositType}) {
    this.bankAccount = bankAccount ?? state.bankAccount;
    this.stripePaymentStoreRequest =
        stripePaymentStoreRequest ?? state.stripePaymentStoreRequest;
    this.stripeKeyResponse = stripeKeyResponse ?? state.stripeKeyResponse;
    this.brainTreeKeyResponse =
        brainTreeKeyResponse ?? state.brainTreeKeyResponse;
    this.brainTreeClientTokenResponse =
        brainTreeClientTokenResponse ?? state.brainTreeClientTokenResponse;
    this.isLogin = isLogin ?? state.isLogin;
    this.isLoading = isLoading ?? state.isLoading;
    this.isShowShimmer = isShowShimmer ?? state.isShowShimmer;
    this.selectIdBank = selectIdBank ?? state.selectIdBank;
    this.selectCard = selectCard ?? state.selectCard;
    this.depositType = depositType ?? state.depositType;
  }

  DepositState copyWith(
      {BankAccountResponse bankAccount,
      StripePaymentStoreRequest stripePaymentStoreRequest,
      StripeKeyResponse stripeKeyResponse,
      BrainTreeKeyResponse brainTreeKeyResponse,
      BrainTreeClientTokenResponse brainTreeClientTokenResponse,
      bool isLogin,
      bool isLoading,
      bool isShowShimmer,
      int selectIdBank,
      int selectCard,
      String depositType}) {
    return DepositState(
        bankAccount ?? this.bankAccount,
        stripePaymentStoreRequest ?? this.stripePaymentStoreRequest,
        stripeKeyResponse ?? this.stripeKeyResponse,
        brainTreeKeyResponse ?? this.brainTreeKeyResponse,
        brainTreeClientTokenResponse ?? this.brainTreeClientTokenResponse,
        isLogin ?? this.isLogin,
        isLoading ?? this.isLoading,
        isShowShimmer ?? this.isShowShimmer,
        selectIdBank ?? this.selectIdBank,
        selectCard ?? this.selectCard,
        depositType ?? this.depositType);
  }
}

class DepositInitial extends DepositState {
  DepositInitial()
      : super(BankAccountResponse(), null, null, null, null, false, false, true,
            -1, -1, '');
}

class DepositGetBankAccount extends DepositState {
  DepositGetBankAccount(
      DepositState state, BankAccountResponse bankAccountResponse)
      : super.fromState(state, bankAccount: bankAccountResponse);
}

class DepositNotLogin extends DepositState {
  DepositNotLogin(DepositState state) : super.fromState(state);
}

class ShowComfirmDepositDialog extends DepositState {
  ShowComfirmDepositDialog(DepositState state, String depositType)
      : super.fromState(state, depositType: depositType);
}

// class StripePaymentStoreState extends DepositState {
//   StripePaymentStoreState(StripePaymentStoreResponse stripePaymentResponse)
//       : super(stripePaymentResponse: stripePaymentResponse);
// }
