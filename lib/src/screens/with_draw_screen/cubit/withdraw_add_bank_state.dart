part of 'withdraw_add_bank_cubit.dart';

class WithdrawAddBankState {
  bool isLoading;
  List<Country> countries;
  WithdrawAddBankState(this.isLoading, this.countries);

  WithdrawAddBankState.fromState(WithdrawAddBankState state,
      {bool isLoading, List<Country> countries}) {
    this.isLoading = isLoading ?? state.isLoading;
    this.countries = countries ?? state.countries;
  }
}

class WithdrawAddBankInitial extends WithdrawAddBankState {
  WithdrawAddBankInitial() : super(false, []);
}

class GetListCountry extends WithdrawAddBankState {
  GetListCountry(List<Country> countries, WithdrawAddBankState state)
      : super.fromState(state, countries: countries);
}
