part of 'wallet_cubit.dart';

@freezed
abstract class WalletStateData with _$WalletStateData {
  const factory WalletStateData(
      {@nullable
          AvailableResponse availableResponse,
      @nullable
          UserResponse userProfile,
      @Default([])
          List<TransactionModel> transactionUsd,
      @Default([])
          List<TransactionModel> transactionGas,
      @Default(0)
          int selectTab,
      @Default(0)
          double usd,
      @Default(0)
          double gas,
      @Default(false)
          bool isLoading,
      @Default(false)
          bool isConvertLoading,
      @nullable
          ExchangeMoneyCompleteResponse buyGasReponse,
      @Default('0 GAS')
          String valueConvert,
      @Default(0)
          double exchangeRate,
      @Default([])
          List<Series<ChartColumn, String>> barData,
      @nullable
          GetCurrenciesExchangeRateResponse getCurrenciesExchangeRateResponse,
      @nullable
          PendingWalletResponse pendingWallet}) = WalletData;
}

@freezed
abstract class WalletState with _$WalletState {
  const factory WalletState.intial(WalletData data) = Initial;

  const factory WalletState.getAvailableResponseUser(WalletData data) =
      GetAvailableResponseUser;

  const factory WalletState.getUSD(WalletData data) = GetUSD;

  const factory WalletState.getGAS(WalletData data) = GetGAS;

  const factory WalletState.getUserProfileResponseUser(WalletData data) =
      GetUserProfileResponseUser;

  const factory WalletState.getTransactionUsdResponseUser(WalletData data) =
      GetTransactionUsdResponseUser;

  const factory WalletState.getTransactionGasResponseUser(WalletData data) =
      GetTransactionGasResponseUser;

  const factory WalletState.changeSelectTab(WalletData data) = ChangeSelectTab;

  const factory WalletState.buyGasState(WalletData data) = BuyGasState;

  const factory WalletState.convertValueState(WalletData data) = ConvertValue;
}
