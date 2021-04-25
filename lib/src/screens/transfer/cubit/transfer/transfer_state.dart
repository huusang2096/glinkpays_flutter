part of 'transfer_cubit.dart';

@freezed
abstract class TransferStateData with _$TransferStateData {
  const factory TransferStateData(
      {UserSearchItem user,
      @nullable Wallet selectedCurrency,
      @Default(false) bool isLoadingScaffold,
      @nullable GetBalanceAvailableResponse getBalanceAvailableResponse,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse}) = TransferData;
}

@freezed
abstract class TransferState with _$TransferState {
  const factory TransferState.initial(TransferData data) = Initial;

  const factory TransferState.loading(TransferData data) = Loading;

  const factory TransferState.loaded(TransferData data) = Loaded;
}
