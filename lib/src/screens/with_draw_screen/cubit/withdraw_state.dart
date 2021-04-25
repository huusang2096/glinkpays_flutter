part of 'withdraw_cubit.dart';

class WithdrawState {
  AvailableResponse availableResponse;
  List<Bank> listBankAccount;
  bool isLoading;
  bool isShowShimmer;
  bool isLogin;
  int selectIdBank;

  WithdrawState(this.availableResponse, this.listBankAccount, this.isLoading,
      this.isShowShimmer, this.isLogin, this.selectIdBank);

  WithdrawState.fromState(WithdrawState state,
      {AvailableResponse availableResponse,
      List<Bank> listBankAccount,
      bool isLoading,
      bool isShowShimmer,
      bool isLogin,
      int selectIdBank}) {
    this.availableResponse = availableResponse ?? state.availableResponse;
    this.listBankAccount = listBankAccount ?? state.listBankAccount;
    this.isLoading = isLoading ?? state.isLoading;
    this.isShowShimmer = isShowShimmer ?? state.isShowShimmer;
    this.isLogin = isLogin ?? state.isLogin;
    this.selectIdBank = selectIdBank ?? state.selectIdBank;
  }

  WithdrawState copyWith(
      {AvailableResponse availableResponse,
      List<Bank> listBankAccount,
      bool isLoading,
      bool isShowShimmer,
      bool isLogin,
      int selectIdBank}) {
    return WithdrawState(
        availableResponse ?? this.availableResponse,
        listBankAccount ?? this.listBankAccount,
        isLoading ?? this.isLoading,
        isShowShimmer ?? this.isShowShimmer,
        isLogin ?? this.isLogin,
        selectIdBank ?? this.selectIdBank);
  }
}

class WithdrawInitial extends WithdrawState {
  WithdrawInitial() : super(AvailableResponse(), [], false, true, false, -1);
}

class WithdrawGetAvailable extends WithdrawState {
  WithdrawGetAvailable(WithdrawState state, AvailableResponse availableResponse,
      List<Bank> listBankAccount)
      : super.fromState(state,
            availableResponse: availableResponse,
            listBankAccount: listBankAccount);
}

class WithdrawShowNotLogin extends WithdrawState {
  WithdrawShowNotLogin(WithdrawState state) : super.fromState(state);
}
