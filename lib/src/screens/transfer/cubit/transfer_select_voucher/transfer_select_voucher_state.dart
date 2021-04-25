part of 'transfer_select_voucher_cubit.dart';

@freezed
abstract class TransferSelectVoucherStateData
    with _$TransferSelectVoucherStateData {
  const factory TransferSelectVoucherStateData(
      {@Default(false) bool isLoading,
      @Default(false) bool isLoadingShimmer,
      @nullable MyVoucherOrder selectedItem,
      @nullable MyVoucherOrderResponse myVoucherResponse}) = Data;
}

@freezed
abstract class TransferSelectVoucherState with _$TransferSelectVoucherState {
  const factory TransferSelectVoucherState.initial(Data data) = Initial;
  const factory TransferSelectVoucherState.loading(Data data) = Loading;
  const factory TransferSelectVoucherState.loaded(Data data) = Loaded;
}
