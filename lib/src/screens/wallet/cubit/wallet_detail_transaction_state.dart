part of 'wallet_detail_transaction_cubit.dart';

@freezed
abstract class WalletDetailTransactionStateData
    with _$WalletDetailTransactionStateData {
  const factory WalletDetailTransactionStateData(
      {@nullable TransactionDetailResponse transactionDetailResponse,
      @Default(true) bool isLoading}) = DetailTransactionData;
}

@freezed
abstract class WalletDetailTransactionState
    with _$WalletDetailTransactionState {
  const factory WalletDetailTransactionState.initial(
      DetailTransactionData data) = Initial;
  const factory WalletDetailTransactionState.success(
      DetailTransactionData data) = Success;
  const factory WalletDetailTransactionState.error(
      DetailTransactionData data, String error) = Error;
  const factory WalletDetailTransactionState.loading(
      DetailTransactionData data) = Loading;
}
