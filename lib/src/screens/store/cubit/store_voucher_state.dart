part of 'store_voucher_cubit.dart';

class StoreVoucherState {
  FoodDetailResponse voucher;
  bool isLoading;

  StoreVoucherState(this.voucher, this.isLoading);

  StoreVoucherState.fromState(StoreVoucherState state,
      {FoodDetailResponse voucher, bool isLoading}) {
    this.voucher = voucher ?? state.voucher;
    this.isLoading = isLoading ?? state.isLoading;
  }
}

class StoreVoucherInitial extends StoreVoucherState {
  StoreVoucherInitial() : super(null, true);
}

class StoreVoucherChangeLoading extends StoreVoucherState {
  StoreVoucherChangeLoading(StoreVoucherState state, bool isLoading)
      : super.fromState(state, isLoading: isLoading);
}
