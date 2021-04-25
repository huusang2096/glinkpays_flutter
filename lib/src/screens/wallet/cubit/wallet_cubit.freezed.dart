// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WalletStateDataTearOff {
  const _$WalletStateDataTearOff();

// ignore: unused_element
  WalletData call(
      {@nullable
          AvailableResponse availableResponse,
      @nullable
          UserResponse userProfile,
      List<TransactionModel> transactionUsd = const [],
      List<TransactionModel> transactionGas = const [],
      int selectTab = 0,
      double usd = 0,
      double gas = 0,
      bool isLoading = false,
      bool isConvertLoading = false,
      @nullable
          ExchangeMoneyCompleteResponse buyGasReponse,
      String valueConvert = '0 GAS',
      double exchangeRate = 0,
      List<Series<ChartColumn, String>> barData = const [],
      @nullable
          GetCurrenciesExchangeRateResponse getCurrenciesExchangeRateResponse,
      @nullable
          PendingWalletResponse pendingWallet}) {
    return WalletData(
      availableResponse: availableResponse,
      userProfile: userProfile,
      transactionUsd: transactionUsd,
      transactionGas: transactionGas,
      selectTab: selectTab,
      usd: usd,
      gas: gas,
      isLoading: isLoading,
      isConvertLoading: isConvertLoading,
      buyGasReponse: buyGasReponse,
      valueConvert: valueConvert,
      exchangeRate: exchangeRate,
      barData: barData,
      getCurrenciesExchangeRateResponse: getCurrenciesExchangeRateResponse,
      pendingWallet: pendingWallet,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WalletStateData = _$WalletStateDataTearOff();

/// @nodoc
mixin _$WalletStateData {
  @nullable
  AvailableResponse get availableResponse;
  @nullable
  UserResponse get userProfile;
  List<TransactionModel> get transactionUsd;
  List<TransactionModel> get transactionGas;
  int get selectTab;
  double get usd;
  double get gas;
  bool get isLoading;
  bool get isConvertLoading;
  @nullable
  ExchangeMoneyCompleteResponse get buyGasReponse;
  String get valueConvert;
  double get exchangeRate;
  List<Series<ChartColumn, String>> get barData;
  @nullable
  GetCurrenciesExchangeRateResponse get getCurrenciesExchangeRateResponse;
  @nullable
  PendingWalletResponse get pendingWallet;

  @JsonKey(ignore: true)
  $WalletStateDataCopyWith<WalletStateData> get copyWith;
}

/// @nodoc
abstract class $WalletStateDataCopyWith<$Res> {
  factory $WalletStateDataCopyWith(
          WalletStateData value, $Res Function(WalletStateData) then) =
      _$WalletStateDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable
          AvailableResponse availableResponse,
      @nullable
          UserResponse userProfile,
      List<TransactionModel> transactionUsd,
      List<TransactionModel> transactionGas,
      int selectTab,
      double usd,
      double gas,
      bool isLoading,
      bool isConvertLoading,
      @nullable
          ExchangeMoneyCompleteResponse buyGasReponse,
      String valueConvert,
      double exchangeRate,
      List<Series<ChartColumn, String>> barData,
      @nullable
          GetCurrenciesExchangeRateResponse getCurrenciesExchangeRateResponse,
      @nullable
          PendingWalletResponse pendingWallet});
}

/// @nodoc
class _$WalletStateDataCopyWithImpl<$Res>
    implements $WalletStateDataCopyWith<$Res> {
  _$WalletStateDataCopyWithImpl(this._value, this._then);

  final WalletStateData _value;
  // ignore: unused_field
  final $Res Function(WalletStateData) _then;

  @override
  $Res call({
    Object availableResponse = freezed,
    Object userProfile = freezed,
    Object transactionUsd = freezed,
    Object transactionGas = freezed,
    Object selectTab = freezed,
    Object usd = freezed,
    Object gas = freezed,
    Object isLoading = freezed,
    Object isConvertLoading = freezed,
    Object buyGasReponse = freezed,
    Object valueConvert = freezed,
    Object exchangeRate = freezed,
    Object barData = freezed,
    Object getCurrenciesExchangeRateResponse = freezed,
    Object pendingWallet = freezed,
  }) {
    return _then(_value.copyWith(
      availableResponse: availableResponse == freezed
          ? _value.availableResponse
          : availableResponse as AvailableResponse,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile as UserResponse,
      transactionUsd: transactionUsd == freezed
          ? _value.transactionUsd
          : transactionUsd as List<TransactionModel>,
      transactionGas: transactionGas == freezed
          ? _value.transactionGas
          : transactionGas as List<TransactionModel>,
      selectTab: selectTab == freezed ? _value.selectTab : selectTab as int,
      usd: usd == freezed ? _value.usd : usd as double,
      gas: gas == freezed ? _value.gas : gas as double,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isConvertLoading: isConvertLoading == freezed
          ? _value.isConvertLoading
          : isConvertLoading as bool,
      buyGasReponse: buyGasReponse == freezed
          ? _value.buyGasReponse
          : buyGasReponse as ExchangeMoneyCompleteResponse,
      valueConvert: valueConvert == freezed
          ? _value.valueConvert
          : valueConvert as String,
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate as double,
      barData: barData == freezed
          ? _value.barData
          : barData as List<Series<ChartColumn, String>>,
      getCurrenciesExchangeRateResponse:
          getCurrenciesExchangeRateResponse == freezed
              ? _value.getCurrenciesExchangeRateResponse
              : getCurrenciesExchangeRateResponse
                  as GetCurrenciesExchangeRateResponse,
      pendingWallet: pendingWallet == freezed
          ? _value.pendingWallet
          : pendingWallet as PendingWalletResponse,
    ));
  }
}

/// @nodoc
abstract class $WalletDataCopyWith<$Res>
    implements $WalletStateDataCopyWith<$Res> {
  factory $WalletDataCopyWith(
          WalletData value, $Res Function(WalletData) then) =
      _$WalletDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable
          AvailableResponse availableResponse,
      @nullable
          UserResponse userProfile,
      List<TransactionModel> transactionUsd,
      List<TransactionModel> transactionGas,
      int selectTab,
      double usd,
      double gas,
      bool isLoading,
      bool isConvertLoading,
      @nullable
          ExchangeMoneyCompleteResponse buyGasReponse,
      String valueConvert,
      double exchangeRate,
      List<Series<ChartColumn, String>> barData,
      @nullable
          GetCurrenciesExchangeRateResponse getCurrenciesExchangeRateResponse,
      @nullable
          PendingWalletResponse pendingWallet});
}

/// @nodoc
class _$WalletDataCopyWithImpl<$Res> extends _$WalletStateDataCopyWithImpl<$Res>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(WalletData _value, $Res Function(WalletData) _then)
      : super(_value, (v) => _then(v as WalletData));

  @override
  WalletData get _value => super._value as WalletData;

  @override
  $Res call({
    Object availableResponse = freezed,
    Object userProfile = freezed,
    Object transactionUsd = freezed,
    Object transactionGas = freezed,
    Object selectTab = freezed,
    Object usd = freezed,
    Object gas = freezed,
    Object isLoading = freezed,
    Object isConvertLoading = freezed,
    Object buyGasReponse = freezed,
    Object valueConvert = freezed,
    Object exchangeRate = freezed,
    Object barData = freezed,
    Object getCurrenciesExchangeRateResponse = freezed,
    Object pendingWallet = freezed,
  }) {
    return _then(WalletData(
      availableResponse: availableResponse == freezed
          ? _value.availableResponse
          : availableResponse as AvailableResponse,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile as UserResponse,
      transactionUsd: transactionUsd == freezed
          ? _value.transactionUsd
          : transactionUsd as List<TransactionModel>,
      transactionGas: transactionGas == freezed
          ? _value.transactionGas
          : transactionGas as List<TransactionModel>,
      selectTab: selectTab == freezed ? _value.selectTab : selectTab as int,
      usd: usd == freezed ? _value.usd : usd as double,
      gas: gas == freezed ? _value.gas : gas as double,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isConvertLoading: isConvertLoading == freezed
          ? _value.isConvertLoading
          : isConvertLoading as bool,
      buyGasReponse: buyGasReponse == freezed
          ? _value.buyGasReponse
          : buyGasReponse as ExchangeMoneyCompleteResponse,
      valueConvert: valueConvert == freezed
          ? _value.valueConvert
          : valueConvert as String,
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate as double,
      barData: barData == freezed
          ? _value.barData
          : barData as List<Series<ChartColumn, String>>,
      getCurrenciesExchangeRateResponse:
          getCurrenciesExchangeRateResponse == freezed
              ? _value.getCurrenciesExchangeRateResponse
              : getCurrenciesExchangeRateResponse
                  as GetCurrenciesExchangeRateResponse,
      pendingWallet: pendingWallet == freezed
          ? _value.pendingWallet
          : pendingWallet as PendingWalletResponse,
    ));
  }
}

/// @nodoc
class _$WalletData implements WalletData {
  const _$WalletData(
      {@nullable this.availableResponse,
      @nullable this.userProfile,
      this.transactionUsd = const [],
      this.transactionGas = const [],
      this.selectTab = 0,
      this.usd = 0,
      this.gas = 0,
      this.isLoading = false,
      this.isConvertLoading = false,
      @nullable this.buyGasReponse,
      this.valueConvert = '0 GAS',
      this.exchangeRate = 0,
      this.barData = const [],
      @nullable this.getCurrenciesExchangeRateResponse,
      @nullable this.pendingWallet})
      : assert(transactionUsd != null),
        assert(transactionGas != null),
        assert(selectTab != null),
        assert(usd != null),
        assert(gas != null),
        assert(isLoading != null),
        assert(isConvertLoading != null),
        assert(valueConvert != null),
        assert(exchangeRate != null),
        assert(barData != null);

  @override
  @nullable
  final AvailableResponse availableResponse;
  @override
  @nullable
  final UserResponse userProfile;
  @JsonKey(defaultValue: const [])
  @override
  final List<TransactionModel> transactionUsd;
  @JsonKey(defaultValue: const [])
  @override
  final List<TransactionModel> transactionGas;
  @JsonKey(defaultValue: 0)
  @override
  final int selectTab;
  @JsonKey(defaultValue: 0)
  @override
  final double usd;
  @JsonKey(defaultValue: 0)
  @override
  final double gas;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isConvertLoading;
  @override
  @nullable
  final ExchangeMoneyCompleteResponse buyGasReponse;
  @JsonKey(defaultValue: '0 GAS')
  @override
  final String valueConvert;
  @JsonKey(defaultValue: 0)
  @override
  final double exchangeRate;
  @JsonKey(defaultValue: const [])
  @override
  final List<Series<ChartColumn, String>> barData;
  @override
  @nullable
  final GetCurrenciesExchangeRateResponse getCurrenciesExchangeRateResponse;
  @override
  @nullable
  final PendingWalletResponse pendingWallet;

  @override
  String toString() {
    return 'WalletStateData(availableResponse: $availableResponse, userProfile: $userProfile, transactionUsd: $transactionUsd, transactionGas: $transactionGas, selectTab: $selectTab, usd: $usd, gas: $gas, isLoading: $isLoading, isConvertLoading: $isConvertLoading, buyGasReponse: $buyGasReponse, valueConvert: $valueConvert, exchangeRate: $exchangeRate, barData: $barData, getCurrenciesExchangeRateResponse: $getCurrenciesExchangeRateResponse, pendingWallet: $pendingWallet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WalletData &&
            (identical(other.availableResponse, availableResponse) ||
                const DeepCollectionEquality()
                    .equals(other.availableResponse, availableResponse)) &&
            (identical(other.userProfile, userProfile) ||
                const DeepCollectionEquality()
                    .equals(other.userProfile, userProfile)) &&
            (identical(other.transactionUsd, transactionUsd) ||
                const DeepCollectionEquality()
                    .equals(other.transactionUsd, transactionUsd)) &&
            (identical(other.transactionGas, transactionGas) ||
                const DeepCollectionEquality()
                    .equals(other.transactionGas, transactionGas)) &&
            (identical(other.selectTab, selectTab) ||
                const DeepCollectionEquality()
                    .equals(other.selectTab, selectTab)) &&
            (identical(other.usd, usd) ||
                const DeepCollectionEquality().equals(other.usd, usd)) &&
            (identical(other.gas, gas) ||
                const DeepCollectionEquality().equals(other.gas, gas)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isConvertLoading, isConvertLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isConvertLoading, isConvertLoading)) &&
            (identical(other.buyGasReponse, buyGasReponse) ||
                const DeepCollectionEquality()
                    .equals(other.buyGasReponse, buyGasReponse)) &&
            (identical(other.valueConvert, valueConvert) ||
                const DeepCollectionEquality()
                    .equals(other.valueConvert, valueConvert)) &&
            (identical(other.exchangeRate, exchangeRate) ||
                const DeepCollectionEquality()
                    .equals(other.exchangeRate, exchangeRate)) &&
            (identical(other.barData, barData) ||
                const DeepCollectionEquality()
                    .equals(other.barData, barData)) &&
            (identical(other.getCurrenciesExchangeRateResponse,
                    getCurrenciesExchangeRateResponse) ||
                const DeepCollectionEquality().equals(
                    other.getCurrenciesExchangeRateResponse,
                    getCurrenciesExchangeRateResponse)) &&
            (identical(other.pendingWallet, pendingWallet) ||
                const DeepCollectionEquality()
                    .equals(other.pendingWallet, pendingWallet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(availableResponse) ^
      const DeepCollectionEquality().hash(userProfile) ^
      const DeepCollectionEquality().hash(transactionUsd) ^
      const DeepCollectionEquality().hash(transactionGas) ^
      const DeepCollectionEquality().hash(selectTab) ^
      const DeepCollectionEquality().hash(usd) ^
      const DeepCollectionEquality().hash(gas) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isConvertLoading) ^
      const DeepCollectionEquality().hash(buyGasReponse) ^
      const DeepCollectionEquality().hash(valueConvert) ^
      const DeepCollectionEquality().hash(exchangeRate) ^
      const DeepCollectionEquality().hash(barData) ^
      const DeepCollectionEquality().hash(getCurrenciesExchangeRateResponse) ^
      const DeepCollectionEquality().hash(pendingWallet);

  @JsonKey(ignore: true)
  @override
  $WalletDataCopyWith<WalletData> get copyWith =>
      _$WalletDataCopyWithImpl<WalletData>(this, _$identity);
}

abstract class WalletData implements WalletStateData {
  const factory WalletData(
      {@nullable
          AvailableResponse availableResponse,
      @nullable
          UserResponse userProfile,
      List<TransactionModel> transactionUsd,
      List<TransactionModel> transactionGas,
      int selectTab,
      double usd,
      double gas,
      bool isLoading,
      bool isConvertLoading,
      @nullable
          ExchangeMoneyCompleteResponse buyGasReponse,
      String valueConvert,
      double exchangeRate,
      List<Series<ChartColumn, String>> barData,
      @nullable
          GetCurrenciesExchangeRateResponse getCurrenciesExchangeRateResponse,
      @nullable
          PendingWalletResponse pendingWallet}) = _$WalletData;

  @override
  @nullable
  AvailableResponse get availableResponse;
  @override
  @nullable
  UserResponse get userProfile;
  @override
  List<TransactionModel> get transactionUsd;
  @override
  List<TransactionModel> get transactionGas;
  @override
  int get selectTab;
  @override
  double get usd;
  @override
  double get gas;
  @override
  bool get isLoading;
  @override
  bool get isConvertLoading;
  @override
  @nullable
  ExchangeMoneyCompleteResponse get buyGasReponse;
  @override
  String get valueConvert;
  @override
  double get exchangeRate;
  @override
  List<Series<ChartColumn, String>> get barData;
  @override
  @nullable
  GetCurrenciesExchangeRateResponse get getCurrenciesExchangeRateResponse;
  @override
  @nullable
  PendingWalletResponse get pendingWallet;
  @override
  @JsonKey(ignore: true)
  $WalletDataCopyWith<WalletData> get copyWith;
}

/// @nodoc
class _$WalletStateTearOff {
  const _$WalletStateTearOff();

// ignore: unused_element
  Initial intial(WalletData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  GetAvailableResponseUser getAvailableResponseUser(WalletData data) {
    return GetAvailableResponseUser(
      data,
    );
  }

// ignore: unused_element
  GetUSD getUSD(WalletData data) {
    return GetUSD(
      data,
    );
  }

// ignore: unused_element
  GetGAS getGAS(WalletData data) {
    return GetGAS(
      data,
    );
  }

// ignore: unused_element
  GetUserProfileResponseUser getUserProfileResponseUser(WalletData data) {
    return GetUserProfileResponseUser(
      data,
    );
  }

// ignore: unused_element
  GetTransactionUsdResponseUser getTransactionUsdResponseUser(WalletData data) {
    return GetTransactionUsdResponseUser(
      data,
    );
  }

// ignore: unused_element
  GetTransactionGasResponseUser getTransactionGasResponseUser(WalletData data) {
    return GetTransactionGasResponseUser(
      data,
    );
  }

// ignore: unused_element
  ChangeSelectTab changeSelectTab(WalletData data) {
    return ChangeSelectTab(
      data,
    );
  }

// ignore: unused_element
  BuyGasState buyGasState(WalletData data) {
    return BuyGasState(
      data,
    );
  }

// ignore: unused_element
  ConvertValue convertValueState(WalletData data) {
    return ConvertValue(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WalletState = _$WalletStateTearOff();

/// @nodoc
mixin _$WalletState {
  WalletData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
  $Res call({WalletData data});
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Initial(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.intial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return intial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (intial != null) {
      return intial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WalletState {
  const factory Initial(WalletData data) = _$Initial;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $GetAvailableResponseUserCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $GetAvailableResponseUserCopyWith(GetAvailableResponseUser value,
          $Res Function(GetAvailableResponseUser) then) =
      _$GetAvailableResponseUserCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$GetAvailableResponseUserCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements $GetAvailableResponseUserCopyWith<$Res> {
  _$GetAvailableResponseUserCopyWithImpl(GetAvailableResponseUser _value,
      $Res Function(GetAvailableResponseUser) _then)
      : super(_value, (v) => _then(v as GetAvailableResponseUser));

  @override
  GetAvailableResponseUser get _value =>
      super._value as GetAvailableResponseUser;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetAvailableResponseUser(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$GetAvailableResponseUser implements GetAvailableResponseUser {
  const _$GetAvailableResponseUser(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.getAvailableResponseUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAvailableResponseUser &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetAvailableResponseUserCopyWith<GetAvailableResponseUser> get copyWith =>
      _$GetAvailableResponseUserCopyWithImpl<GetAvailableResponseUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getAvailableResponseUser(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAvailableResponseUser != null) {
      return getAvailableResponseUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getAvailableResponseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAvailableResponseUser != null) {
      return getAvailableResponseUser(this);
    }
    return orElse();
  }
}

abstract class GetAvailableResponseUser implements WalletState {
  const factory GetAvailableResponseUser(WalletData data) =
      _$GetAvailableResponseUser;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $GetAvailableResponseUserCopyWith<GetAvailableResponseUser> get copyWith;
}

/// @nodoc
abstract class $GetUSDCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory $GetUSDCopyWith(GetUSD value, $Res Function(GetUSD) then) =
      _$GetUSDCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$GetUSDCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $GetUSDCopyWith<$Res> {
  _$GetUSDCopyWithImpl(GetUSD _value, $Res Function(GetUSD) _then)
      : super(_value, (v) => _then(v as GetUSD));

  @override
  GetUSD get _value => super._value as GetUSD;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetUSD(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$GetUSD implements GetUSD {
  const _$GetUSD(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.getUSD(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUSD &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetUSDCopyWith<GetUSD> get copyWith =>
      _$GetUSDCopyWithImpl<GetUSD>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getUSD(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUSD != null) {
      return getUSD(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getUSD(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUSD != null) {
      return getUSD(this);
    }
    return orElse();
  }
}

abstract class GetUSD implements WalletState {
  const factory GetUSD(WalletData data) = _$GetUSD;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $GetUSDCopyWith<GetUSD> get copyWith;
}

/// @nodoc
abstract class $GetGASCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory $GetGASCopyWith(GetGAS value, $Res Function(GetGAS) then) =
      _$GetGASCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$GetGASCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $GetGASCopyWith<$Res> {
  _$GetGASCopyWithImpl(GetGAS _value, $Res Function(GetGAS) _then)
      : super(_value, (v) => _then(v as GetGAS));

  @override
  GetGAS get _value => super._value as GetGAS;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetGAS(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$GetGAS implements GetGAS {
  const _$GetGAS(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.getGAS(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetGAS &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetGASCopyWith<GetGAS> get copyWith =>
      _$GetGASCopyWithImpl<GetGAS>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getGAS(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getGAS != null) {
      return getGAS(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getGAS(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getGAS != null) {
      return getGAS(this);
    }
    return orElse();
  }
}

abstract class GetGAS implements WalletState {
  const factory GetGAS(WalletData data) = _$GetGAS;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $GetGASCopyWith<GetGAS> get copyWith;
}

/// @nodoc
abstract class $GetUserProfileResponseUserCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $GetUserProfileResponseUserCopyWith(GetUserProfileResponseUser value,
          $Res Function(GetUserProfileResponseUser) then) =
      _$GetUserProfileResponseUserCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$GetUserProfileResponseUserCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements $GetUserProfileResponseUserCopyWith<$Res> {
  _$GetUserProfileResponseUserCopyWithImpl(GetUserProfileResponseUser _value,
      $Res Function(GetUserProfileResponseUser) _then)
      : super(_value, (v) => _then(v as GetUserProfileResponseUser));

  @override
  GetUserProfileResponseUser get _value =>
      super._value as GetUserProfileResponseUser;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetUserProfileResponseUser(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$GetUserProfileResponseUser implements GetUserProfileResponseUser {
  const _$GetUserProfileResponseUser(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.getUserProfileResponseUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserProfileResponseUser &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetUserProfileResponseUserCopyWith<GetUserProfileResponseUser>
      get copyWith =>
          _$GetUserProfileResponseUserCopyWithImpl<GetUserProfileResponseUser>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getUserProfileResponseUser(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserProfileResponseUser != null) {
      return getUserProfileResponseUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getUserProfileResponseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserProfileResponseUser != null) {
      return getUserProfileResponseUser(this);
    }
    return orElse();
  }
}

abstract class GetUserProfileResponseUser implements WalletState {
  const factory GetUserProfileResponseUser(WalletData data) =
      _$GetUserProfileResponseUser;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $GetUserProfileResponseUserCopyWith<GetUserProfileResponseUser> get copyWith;
}

/// @nodoc
abstract class $GetTransactionUsdResponseUserCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $GetTransactionUsdResponseUserCopyWith(
          GetTransactionUsdResponseUser value,
          $Res Function(GetTransactionUsdResponseUser) then) =
      _$GetTransactionUsdResponseUserCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$GetTransactionUsdResponseUserCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements $GetTransactionUsdResponseUserCopyWith<$Res> {
  _$GetTransactionUsdResponseUserCopyWithImpl(
      GetTransactionUsdResponseUser _value,
      $Res Function(GetTransactionUsdResponseUser) _then)
      : super(_value, (v) => _then(v as GetTransactionUsdResponseUser));

  @override
  GetTransactionUsdResponseUser get _value =>
      super._value as GetTransactionUsdResponseUser;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetTransactionUsdResponseUser(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$GetTransactionUsdResponseUser implements GetTransactionUsdResponseUser {
  const _$GetTransactionUsdResponseUser(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.getTransactionUsdResponseUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTransactionUsdResponseUser &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetTransactionUsdResponseUserCopyWith<GetTransactionUsdResponseUser>
      get copyWith => _$GetTransactionUsdResponseUserCopyWithImpl<
          GetTransactionUsdResponseUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getTransactionUsdResponseUser(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransactionUsdResponseUser != null) {
      return getTransactionUsdResponseUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getTransactionUsdResponseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransactionUsdResponseUser != null) {
      return getTransactionUsdResponseUser(this);
    }
    return orElse();
  }
}

abstract class GetTransactionUsdResponseUser implements WalletState {
  const factory GetTransactionUsdResponseUser(WalletData data) =
      _$GetTransactionUsdResponseUser;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $GetTransactionUsdResponseUserCopyWith<GetTransactionUsdResponseUser>
      get copyWith;
}

/// @nodoc
abstract class $GetTransactionGasResponseUserCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $GetTransactionGasResponseUserCopyWith(
          GetTransactionGasResponseUser value,
          $Res Function(GetTransactionGasResponseUser) then) =
      _$GetTransactionGasResponseUserCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$GetTransactionGasResponseUserCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements $GetTransactionGasResponseUserCopyWith<$Res> {
  _$GetTransactionGasResponseUserCopyWithImpl(
      GetTransactionGasResponseUser _value,
      $Res Function(GetTransactionGasResponseUser) _then)
      : super(_value, (v) => _then(v as GetTransactionGasResponseUser));

  @override
  GetTransactionGasResponseUser get _value =>
      super._value as GetTransactionGasResponseUser;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(GetTransactionGasResponseUser(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$GetTransactionGasResponseUser implements GetTransactionGasResponseUser {
  const _$GetTransactionGasResponseUser(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.getTransactionGasResponseUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTransactionGasResponseUser &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $GetTransactionGasResponseUserCopyWith<GetTransactionGasResponseUser>
      get copyWith => _$GetTransactionGasResponseUserCopyWithImpl<
          GetTransactionGasResponseUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getTransactionGasResponseUser(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransactionGasResponseUser != null) {
      return getTransactionGasResponseUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return getTransactionGasResponseUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransactionGasResponseUser != null) {
      return getTransactionGasResponseUser(this);
    }
    return orElse();
  }
}

abstract class GetTransactionGasResponseUser implements WalletState {
  const factory GetTransactionGasResponseUser(WalletData data) =
      _$GetTransactionGasResponseUser;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $GetTransactionGasResponseUserCopyWith<GetTransactionGasResponseUser>
      get copyWith;
}

/// @nodoc
abstract class $ChangeSelectTabCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $ChangeSelectTabCopyWith(
          ChangeSelectTab value, $Res Function(ChangeSelectTab) then) =
      _$ChangeSelectTabCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$ChangeSelectTabCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res>
    implements $ChangeSelectTabCopyWith<$Res> {
  _$ChangeSelectTabCopyWithImpl(
      ChangeSelectTab _value, $Res Function(ChangeSelectTab) _then)
      : super(_value, (v) => _then(v as ChangeSelectTab));

  @override
  ChangeSelectTab get _value => super._value as ChangeSelectTab;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ChangeSelectTab(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$ChangeSelectTab implements ChangeSelectTab {
  const _$ChangeSelectTab(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.changeSelectTab(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeSelectTab &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ChangeSelectTabCopyWith<ChangeSelectTab> get copyWith =>
      _$ChangeSelectTabCopyWithImpl<ChangeSelectTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return changeSelectTab(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectTab != null) {
      return changeSelectTab(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return changeSelectTab(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeSelectTab != null) {
      return changeSelectTab(this);
    }
    return orElse();
  }
}

abstract class ChangeSelectTab implements WalletState {
  const factory ChangeSelectTab(WalletData data) = _$ChangeSelectTab;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $ChangeSelectTabCopyWith<ChangeSelectTab> get copyWith;
}

/// @nodoc
abstract class $BuyGasStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $BuyGasStateCopyWith(
          BuyGasState value, $Res Function(BuyGasState) then) =
      _$BuyGasStateCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$BuyGasStateCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $BuyGasStateCopyWith<$Res> {
  _$BuyGasStateCopyWithImpl(
      BuyGasState _value, $Res Function(BuyGasState) _then)
      : super(_value, (v) => _then(v as BuyGasState));

  @override
  BuyGasState get _value => super._value as BuyGasState;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(BuyGasState(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$BuyGasState implements BuyGasState {
  const _$BuyGasState(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.buyGasState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BuyGasState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $BuyGasStateCopyWith<BuyGasState> get copyWith =>
      _$BuyGasStateCopyWithImpl<BuyGasState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return buyGasState(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (buyGasState != null) {
      return buyGasState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return buyGasState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (buyGasState != null) {
      return buyGasState(this);
    }
    return orElse();
  }
}

abstract class BuyGasState implements WalletState {
  const factory BuyGasState(WalletData data) = _$BuyGasState;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $BuyGasStateCopyWith<BuyGasState> get copyWith;
}

/// @nodoc
abstract class $ConvertValueCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory $ConvertValueCopyWith(
          ConvertValue value, $Res Function(ConvertValue) then) =
      _$ConvertValueCopyWithImpl<$Res>;
  @override
  $Res call({WalletData data});
}

/// @nodoc
class _$ConvertValueCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements $ConvertValueCopyWith<$Res> {
  _$ConvertValueCopyWithImpl(
      ConvertValue _value, $Res Function(ConvertValue) _then)
      : super(_value, (v) => _then(v as ConvertValue));

  @override
  ConvertValue get _value => super._value as ConvertValue;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ConvertValue(
      data == freezed ? _value.data : data as WalletData,
    ));
  }
}

/// @nodoc
class _$ConvertValue implements ConvertValue {
  const _$ConvertValue(this.data) : assert(data != null);

  @override
  final WalletData data;

  @override
  String toString() {
    return 'WalletState.convertValueState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConvertValue &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ConvertValueCopyWith<ConvertValue> get copyWith =>
      _$ConvertValueCopyWithImpl<ConvertValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult intial(WalletData data),
    @required TResult getAvailableResponseUser(WalletData data),
    @required TResult getUSD(WalletData data),
    @required TResult getGAS(WalletData data),
    @required TResult getUserProfileResponseUser(WalletData data),
    @required TResult getTransactionUsdResponseUser(WalletData data),
    @required TResult getTransactionGasResponseUser(WalletData data),
    @required TResult changeSelectTab(WalletData data),
    @required TResult buyGasState(WalletData data),
    @required TResult convertValueState(WalletData data),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return convertValueState(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult intial(WalletData data),
    TResult getAvailableResponseUser(WalletData data),
    TResult getUSD(WalletData data),
    TResult getGAS(WalletData data),
    TResult getUserProfileResponseUser(WalletData data),
    TResult getTransactionUsdResponseUser(WalletData data),
    TResult getTransactionGasResponseUser(WalletData data),
    TResult changeSelectTab(WalletData data),
    TResult buyGasState(WalletData data),
    TResult convertValueState(WalletData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (convertValueState != null) {
      return convertValueState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult intial(Initial value),
    @required TResult getAvailableResponseUser(GetAvailableResponseUser value),
    @required TResult getUSD(GetUSD value),
    @required TResult getGAS(GetGAS value),
    @required
        TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    @required
        TResult getTransactionUsdResponseUser(
            GetTransactionUsdResponseUser value),
    @required
        TResult getTransactionGasResponseUser(
            GetTransactionGasResponseUser value),
    @required TResult changeSelectTab(ChangeSelectTab value),
    @required TResult buyGasState(BuyGasState value),
    @required TResult convertValueState(ConvertValue value),
  }) {
    assert(intial != null);
    assert(getAvailableResponseUser != null);
    assert(getUSD != null);
    assert(getGAS != null);
    assert(getUserProfileResponseUser != null);
    assert(getTransactionUsdResponseUser != null);
    assert(getTransactionGasResponseUser != null);
    assert(changeSelectTab != null);
    assert(buyGasState != null);
    assert(convertValueState != null);
    return convertValueState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult intial(Initial value),
    TResult getAvailableResponseUser(GetAvailableResponseUser value),
    TResult getUSD(GetUSD value),
    TResult getGAS(GetGAS value),
    TResult getUserProfileResponseUser(GetUserProfileResponseUser value),
    TResult getTransactionUsdResponseUser(GetTransactionUsdResponseUser value),
    TResult getTransactionGasResponseUser(GetTransactionGasResponseUser value),
    TResult changeSelectTab(ChangeSelectTab value),
    TResult buyGasState(BuyGasState value),
    TResult convertValueState(ConvertValue value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (convertValueState != null) {
      return convertValueState(this);
    }
    return orElse();
  }
}

abstract class ConvertValue implements WalletState {
  const factory ConvertValue(WalletData data) = _$ConvertValue;

  @override
  WalletData get data;
  @override
  @JsonKey(ignore: true)
  $ConvertValueCopyWith<ConvertValue> get copyWith;
}
