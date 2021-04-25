part of 'voucher_list_cubit.dart';

// part 'voucher_list_state.freezed.dart';

@freezed
abstract class VoucherListData with _$VoucherListData {
  const factory VoucherListData({List<FoodData> vouchers, bool inAsyncCall}) =
      Data;
}

@freezed
abstract class VoucherListState with _$VoucherListState {
  const factory VoucherListState.initial(Data data) = _Initial;
  const factory VoucherListState.loading(Data data) = _Loading;
  const factory VoucherListState.loaded(Data data) = _Loaded;
}
