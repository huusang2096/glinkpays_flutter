part of 'use_my_voucher_cubit.dart';

@freezed
abstract class UseMyVoucherStateData with _$UseMyVoucherStateData {
  const factory UseMyVoucherStateData({
    BaseModel useMyVoucherResponse,
    bool isLoading,
    String message,
  }) = Data;
}

@freezed
abstract class UseMyVoucherState with _$UseMyVoucherState {
  const factory UseMyVoucherState.initial(Data data) = Initial;
  const factory UseMyVoucherState.loading(Data data) = Loading;
  const factory UseMyVoucherState.loaded(Data data) = Loaded;
  const factory UseMyVoucherState.error(Data data) = Error;
  const factory UseMyVoucherState.useVoucher(Data data) = UseVoucher;
}
