part of 'transfer_confirm_cubit.dart';

@freezed
abstract class TransferConfirmStateData with _$TransferConfirmStateData {
  const factory TransferConfirmStateData(
      {UserSearchItem user,
      Wallet selectedCurrency,
      @Default(false) bool isLoadingScaffold,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse}) = TransferConfirmData;
}

@freezed
abstract class TransferConfirmState with _$TransferConfirmState {
  const factory TransferConfirmState.initial(TransferConfirmData data) =
      Initial;
  const factory TransferConfirmState.loading(TransferConfirmData data) =
      Loading;
  const factory TransferConfirmState.loaded(TransferConfirmData data) = Loaded;
}
