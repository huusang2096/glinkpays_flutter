// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wallet_detail_transaction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WalletDetailTransactionStateDataTearOff {
  const _$WalletDetailTransactionStateDataTearOff();

// ignore: unused_element
  DetailTransactionData call(
      {@nullable TransactionDetailResponse transactionDetailResponse,
      bool isLoading = true}) {
    return DetailTransactionData(
      transactionDetailResponse: transactionDetailResponse,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WalletDetailTransactionStateData =
    _$WalletDetailTransactionStateDataTearOff();

/// @nodoc
mixin _$WalletDetailTransactionStateData {
  @nullable
  TransactionDetailResponse get transactionDetailResponse;
  bool get isLoading;

  @JsonKey(ignore: true)
  $WalletDetailTransactionStateDataCopyWith<WalletDetailTransactionStateData>
      get copyWith;
}

/// @nodoc
abstract class $WalletDetailTransactionStateDataCopyWith<$Res> {
  factory $WalletDetailTransactionStateDataCopyWith(
          WalletDetailTransactionStateData value,
          $Res Function(WalletDetailTransactionStateData) then) =
      _$WalletDetailTransactionStateDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable TransactionDetailResponse transactionDetailResponse,
      bool isLoading});
}

/// @nodoc
class _$WalletDetailTransactionStateDataCopyWithImpl<$Res>
    implements $WalletDetailTransactionStateDataCopyWith<$Res> {
  _$WalletDetailTransactionStateDataCopyWithImpl(this._value, this._then);

  final WalletDetailTransactionStateData _value;
  // ignore: unused_field
  final $Res Function(WalletDetailTransactionStateData) _then;

  @override
  $Res call({
    Object transactionDetailResponse = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      transactionDetailResponse: transactionDetailResponse == freezed
          ? _value.transactionDetailResponse
          : transactionDetailResponse as TransactionDetailResponse,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class $DetailTransactionDataCopyWith<$Res>
    implements $WalletDetailTransactionStateDataCopyWith<$Res> {
  factory $DetailTransactionDataCopyWith(DetailTransactionData value,
          $Res Function(DetailTransactionData) then) =
      _$DetailTransactionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable TransactionDetailResponse transactionDetailResponse,
      bool isLoading});
}

/// @nodoc
class _$DetailTransactionDataCopyWithImpl<$Res>
    extends _$WalletDetailTransactionStateDataCopyWithImpl<$Res>
    implements $DetailTransactionDataCopyWith<$Res> {
  _$DetailTransactionDataCopyWithImpl(
      DetailTransactionData _value, $Res Function(DetailTransactionData) _then)
      : super(_value, (v) => _then(v as DetailTransactionData));

  @override
  DetailTransactionData get _value => super._value as DetailTransactionData;

  @override
  $Res call({
    Object transactionDetailResponse = freezed,
    Object isLoading = freezed,
  }) {
    return _then(DetailTransactionData(
      transactionDetailResponse: transactionDetailResponse == freezed
          ? _value.transactionDetailResponse
          : transactionDetailResponse as TransactionDetailResponse,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$DetailTransactionData implements DetailTransactionData {
  const _$DetailTransactionData(
      {@nullable this.transactionDetailResponse, this.isLoading = true})
      : assert(isLoading != null);

  @override
  @nullable
  final TransactionDetailResponse transactionDetailResponse;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'WalletDetailTransactionStateData(transactionDetailResponse: $transactionDetailResponse, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DetailTransactionData &&
            (identical(other.transactionDetailResponse,
                    transactionDetailResponse) ||
                const DeepCollectionEquality().equals(
                    other.transactionDetailResponse,
                    transactionDetailResponse)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionDetailResponse) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DetailTransactionDataCopyWith<DetailTransactionData> get copyWith =>
      _$DetailTransactionDataCopyWithImpl<DetailTransactionData>(
          this, _$identity);
}

abstract class DetailTransactionData
    implements WalletDetailTransactionStateData {
  const factory DetailTransactionData(
      {@nullable TransactionDetailResponse transactionDetailResponse,
      bool isLoading}) = _$DetailTransactionData;

  @override
  @nullable
  TransactionDetailResponse get transactionDetailResponse;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $DetailTransactionDataCopyWith<DetailTransactionData> get copyWith;
}

/// @nodoc
class _$WalletDetailTransactionStateTearOff {
  const _$WalletDetailTransactionStateTearOff();

// ignore: unused_element
  Initial initial(DetailTransactionData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Success success(DetailTransactionData data) {
    return Success(
      data,
    );
  }

// ignore: unused_element
  Error error(DetailTransactionData data, String error) {
    return Error(
      data,
      error,
    );
  }

// ignore: unused_element
  Loading loading(DetailTransactionData data) {
    return Loading(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WalletDetailTransactionState = _$WalletDetailTransactionStateTearOff();

/// @nodoc
mixin _$WalletDetailTransactionState {
  DetailTransactionData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DetailTransactionData data),
    @required TResult success(DetailTransactionData data),
    @required TResult error(DetailTransactionData data, String error),
    @required TResult loading(DetailTransactionData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DetailTransactionData data),
    TResult success(DetailTransactionData data),
    TResult error(DetailTransactionData data, String error),
    TResult loading(DetailTransactionData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult error(Error value),
    @required TResult loading(Loading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult error(Error value),
    TResult loading(Loading value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $WalletDetailTransactionStateCopyWith<WalletDetailTransactionState>
      get copyWith;
}

/// @nodoc
abstract class $WalletDetailTransactionStateCopyWith<$Res> {
  factory $WalletDetailTransactionStateCopyWith(
          WalletDetailTransactionState value,
          $Res Function(WalletDetailTransactionState) then) =
      _$WalletDetailTransactionStateCopyWithImpl<$Res>;
  $Res call({DetailTransactionData data});
}

/// @nodoc
class _$WalletDetailTransactionStateCopyWithImpl<$Res>
    implements $WalletDetailTransactionStateCopyWith<$Res> {
  _$WalletDetailTransactionStateCopyWithImpl(this._value, this._then);

  final WalletDetailTransactionState _value;
  // ignore: unused_field
  final $Res Function(WalletDetailTransactionState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as DetailTransactionData,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $WalletDetailTransactionStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DetailTransactionData data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$WalletDetailTransactionStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as DetailTransactionData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final DetailTransactionData data;

  @override
  String toString() {
    return 'WalletDetailTransactionState.initial(data: $data)';
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
    @required TResult initial(DetailTransactionData data),
    @required TResult success(DetailTransactionData data),
    @required TResult error(DetailTransactionData data, String error),
    @required TResult loading(DetailTransactionData data),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DetailTransactionData data),
    TResult success(DetailTransactionData data),
    TResult error(DetailTransactionData data, String error),
    TResult loading(DetailTransactionData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult error(Error value),
    @required TResult loading(Loading value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult error(Error value),
    TResult loading(Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WalletDetailTransactionState {
  const factory Initial(DetailTransactionData data) = _$Initial;

  @override
  DetailTransactionData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res>
    implements $WalletDetailTransactionStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({DetailTransactionData data});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$WalletDetailTransactionStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Success(
      data == freezed ? _value.data : data as DetailTransactionData,
    ));
  }
}

/// @nodoc
class _$Success implements Success {
  const _$Success(this.data) : assert(data != null);

  @override
  final DetailTransactionData data;

  @override
  String toString() {
    return 'WalletDetailTransactionState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DetailTransactionData data),
    @required TResult success(DetailTransactionData data),
    @required TResult error(DetailTransactionData data, String error),
    @required TResult loading(DetailTransactionData data),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DetailTransactionData data),
    TResult success(DetailTransactionData data),
    TResult error(DetailTransactionData data, String error),
    TResult loading(DetailTransactionData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult error(Error value),
    @required TResult loading(Loading value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult error(Error value),
    TResult loading(Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements WalletDetailTransactionState {
  const factory Success(DetailTransactionData data) = _$Success;

  @override
  DetailTransactionData get data;
  @override
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $WalletDetailTransactionStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DetailTransactionData data, String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    extends _$WalletDetailTransactionStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object data = freezed,
    Object error = freezed,
  }) {
    return _then(Error(
      data == freezed ? _value.data : data as DetailTransactionData,
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data, this.error)
      : assert(data != null),
        assert(error != null);

  @override
  final DetailTransactionData data;
  @override
  final String error;

  @override
  String toString() {
    return 'WalletDetailTransactionState.error(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DetailTransactionData data),
    @required TResult success(DetailTransactionData data),
    @required TResult error(DetailTransactionData data, String error),
    @required TResult loading(DetailTransactionData data),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return error(data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DetailTransactionData data),
    TResult success(DetailTransactionData data),
    TResult error(DetailTransactionData data, String error),
    TResult loading(DetailTransactionData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult error(Error value),
    @required TResult loading(Loading value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult error(Error value),
    TResult loading(Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements WalletDetailTransactionState {
  const factory Error(DetailTransactionData data, String error) = _$Error;

  @override
  DetailTransactionData get data;
  String get error;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $WalletDetailTransactionStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DetailTransactionData data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$WalletDetailTransactionStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Loading(
      data == freezed ? _value.data : data as DetailTransactionData,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data) : assert(data != null);

  @override
  final DetailTransactionData data;

  @override
  String toString() {
    return 'WalletDetailTransactionState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(DetailTransactionData data),
    @required TResult success(DetailTransactionData data),
    @required TResult error(DetailTransactionData data, String error),
    @required TResult loading(DetailTransactionData data),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(DetailTransactionData data),
    TResult success(DetailTransactionData data),
    TResult error(DetailTransactionData data, String error),
    TResult loading(DetailTransactionData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult success(Success value),
    @required TResult error(Error value),
    @required TResult loading(Loading value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult success(Success value),
    TResult error(Error value),
    TResult loading(Loading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements WalletDetailTransactionState {
  const factory Loading(DetailTransactionData data) = _$Loading;

  @override
  DetailTransactionData get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}
