// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transfer_confirm_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransferConfirmStateDataTearOff {
  const _$TransferConfirmStateDataTearOff();

// ignore: unused_element
  TransferConfirmData call(
      {UserSearchItem user,
      Wallet selectedCurrency,
      bool isLoadingScaffold = false,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse}) {
    return TransferConfirmData(
      user: user,
      selectedCurrency: selectedCurrency,
      isLoadingScaffold: isLoadingScaffold,
      myVoucherOrder: myVoucherOrder,
      checkVoucherResponse: checkVoucherResponse,
      sendMoneyRequest: sendMoneyRequest,
      feeResponse: feeResponse,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferConfirmStateData = _$TransferConfirmStateDataTearOff();

/// @nodoc
mixin _$TransferConfirmStateData {
  UserSearchItem get user;
  Wallet get selectedCurrency;
  bool get isLoadingScaffold;
  @nullable
  MyVoucherOrder get myVoucherOrder;
  @nullable
  CheckVoucherResponse get checkVoucherResponse;
  SendMoneyRequest get sendMoneyRequest;
  CheckTransactionFeeResponse get feeResponse;

  @JsonKey(ignore: true)
  $TransferConfirmStateDataCopyWith<TransferConfirmStateData> get copyWith;
}

/// @nodoc
abstract class $TransferConfirmStateDataCopyWith<$Res> {
  factory $TransferConfirmStateDataCopyWith(TransferConfirmStateData value,
          $Res Function(TransferConfirmStateData) then) =
      _$TransferConfirmStateDataCopyWithImpl<$Res>;
  $Res call(
      {UserSearchItem user,
      Wallet selectedCurrency,
      bool isLoadingScaffold,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse});
}

/// @nodoc
class _$TransferConfirmStateDataCopyWithImpl<$Res>
    implements $TransferConfirmStateDataCopyWith<$Res> {
  _$TransferConfirmStateDataCopyWithImpl(this._value, this._then);

  final TransferConfirmStateData _value;
  // ignore: unused_field
  final $Res Function(TransferConfirmStateData) _then;

  @override
  $Res call({
    Object user = freezed,
    Object selectedCurrency = freezed,
    Object isLoadingScaffold = freezed,
    Object myVoucherOrder = freezed,
    Object checkVoucherResponse = freezed,
    Object sendMoneyRequest = freezed,
    Object feeResponse = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserSearchItem,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency as Wallet,
      isLoadingScaffold: isLoadingScaffold == freezed
          ? _value.isLoadingScaffold
          : isLoadingScaffold as bool,
      myVoucherOrder: myVoucherOrder == freezed
          ? _value.myVoucherOrder
          : myVoucherOrder as MyVoucherOrder,
      checkVoucherResponse: checkVoucherResponse == freezed
          ? _value.checkVoucherResponse
          : checkVoucherResponse as CheckVoucherResponse,
      sendMoneyRequest: sendMoneyRequest == freezed
          ? _value.sendMoneyRequest
          : sendMoneyRequest as SendMoneyRequest,
      feeResponse: feeResponse == freezed
          ? _value.feeResponse
          : feeResponse as CheckTransactionFeeResponse,
    ));
  }
}

/// @nodoc
abstract class $TransferConfirmDataCopyWith<$Res>
    implements $TransferConfirmStateDataCopyWith<$Res> {
  factory $TransferConfirmDataCopyWith(
          TransferConfirmData value, $Res Function(TransferConfirmData) then) =
      _$TransferConfirmDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserSearchItem user,
      Wallet selectedCurrency,
      bool isLoadingScaffold,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse});
}

/// @nodoc
class _$TransferConfirmDataCopyWithImpl<$Res>
    extends _$TransferConfirmStateDataCopyWithImpl<$Res>
    implements $TransferConfirmDataCopyWith<$Res> {
  _$TransferConfirmDataCopyWithImpl(
      TransferConfirmData _value, $Res Function(TransferConfirmData) _then)
      : super(_value, (v) => _then(v as TransferConfirmData));

  @override
  TransferConfirmData get _value => super._value as TransferConfirmData;

  @override
  $Res call({
    Object user = freezed,
    Object selectedCurrency = freezed,
    Object isLoadingScaffold = freezed,
    Object myVoucherOrder = freezed,
    Object checkVoucherResponse = freezed,
    Object sendMoneyRequest = freezed,
    Object feeResponse = freezed,
  }) {
    return _then(TransferConfirmData(
      user: user == freezed ? _value.user : user as UserSearchItem,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency as Wallet,
      isLoadingScaffold: isLoadingScaffold == freezed
          ? _value.isLoadingScaffold
          : isLoadingScaffold as bool,
      myVoucherOrder: myVoucherOrder == freezed
          ? _value.myVoucherOrder
          : myVoucherOrder as MyVoucherOrder,
      checkVoucherResponse: checkVoucherResponse == freezed
          ? _value.checkVoucherResponse
          : checkVoucherResponse as CheckVoucherResponse,
      sendMoneyRequest: sendMoneyRequest == freezed
          ? _value.sendMoneyRequest
          : sendMoneyRequest as SendMoneyRequest,
      feeResponse: feeResponse == freezed
          ? _value.feeResponse
          : feeResponse as CheckTransactionFeeResponse,
    ));
  }
}

/// @nodoc
class _$TransferConfirmData implements TransferConfirmData {
  const _$TransferConfirmData(
      {this.user,
      this.selectedCurrency,
      this.isLoadingScaffold = false,
      @nullable this.myVoucherOrder,
      @nullable this.checkVoucherResponse,
      this.sendMoneyRequest,
      this.feeResponse})
      : assert(isLoadingScaffold != null);

  @override
  final UserSearchItem user;
  @override
  final Wallet selectedCurrency;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingScaffold;
  @override
  @nullable
  final MyVoucherOrder myVoucherOrder;
  @override
  @nullable
  final CheckVoucherResponse checkVoucherResponse;
  @override
  final SendMoneyRequest sendMoneyRequest;
  @override
  final CheckTransactionFeeResponse feeResponse;

  @override
  String toString() {
    return 'TransferConfirmStateData(user: $user, selectedCurrency: $selectedCurrency, isLoadingScaffold: $isLoadingScaffold, myVoucherOrder: $myVoucherOrder, checkVoucherResponse: $checkVoucherResponse, sendMoneyRequest: $sendMoneyRequest, feeResponse: $feeResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransferConfirmData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCurrency, selectedCurrency)) &&
            (identical(other.isLoadingScaffold, isLoadingScaffold) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingScaffold, isLoadingScaffold)) &&
            (identical(other.myVoucherOrder, myVoucherOrder) ||
                const DeepCollectionEquality()
                    .equals(other.myVoucherOrder, myVoucherOrder)) &&
            (identical(other.checkVoucherResponse, checkVoucherResponse) ||
                const DeepCollectionEquality().equals(
                    other.checkVoucherResponse, checkVoucherResponse)) &&
            (identical(other.sendMoneyRequest, sendMoneyRequest) ||
                const DeepCollectionEquality()
                    .equals(other.sendMoneyRequest, sendMoneyRequest)) &&
            (identical(other.feeResponse, feeResponse) ||
                const DeepCollectionEquality()
                    .equals(other.feeResponse, feeResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(selectedCurrency) ^
      const DeepCollectionEquality().hash(isLoadingScaffold) ^
      const DeepCollectionEquality().hash(myVoucherOrder) ^
      const DeepCollectionEquality().hash(checkVoucherResponse) ^
      const DeepCollectionEquality().hash(sendMoneyRequest) ^
      const DeepCollectionEquality().hash(feeResponse);

  @JsonKey(ignore: true)
  @override
  $TransferConfirmDataCopyWith<TransferConfirmData> get copyWith =>
      _$TransferConfirmDataCopyWithImpl<TransferConfirmData>(this, _$identity);
}

abstract class TransferConfirmData implements TransferConfirmStateData {
  const factory TransferConfirmData(
      {UserSearchItem user,
      Wallet selectedCurrency,
      bool isLoadingScaffold,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse}) = _$TransferConfirmData;

  @override
  UserSearchItem get user;
  @override
  Wallet get selectedCurrency;
  @override
  bool get isLoadingScaffold;
  @override
  @nullable
  MyVoucherOrder get myVoucherOrder;
  @override
  @nullable
  CheckVoucherResponse get checkVoucherResponse;
  @override
  SendMoneyRequest get sendMoneyRequest;
  @override
  CheckTransactionFeeResponse get feeResponse;
  @override
  @JsonKey(ignore: true)
  $TransferConfirmDataCopyWith<TransferConfirmData> get copyWith;
}

/// @nodoc
class _$TransferConfirmStateTearOff {
  const _$TransferConfirmStateTearOff();

// ignore: unused_element
  Initial initial(TransferConfirmData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Loading loading(TransferConfirmData data) {
    return Loading(
      data,
    );
  }

// ignore: unused_element
  Loaded loaded(TransferConfirmData data) {
    return Loaded(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferConfirmState = _$TransferConfirmStateTearOff();

/// @nodoc
mixin _$TransferConfirmState {
  TransferConfirmData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransferConfirmData data),
    @required TResult loading(TransferConfirmData data),
    @required TResult loaded(TransferConfirmData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferConfirmData data),
    TResult loading(TransferConfirmData data),
    TResult loaded(TransferConfirmData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TransferConfirmStateCopyWith<TransferConfirmState> get copyWith;
}

/// @nodoc
abstract class $TransferConfirmStateCopyWith<$Res> {
  factory $TransferConfirmStateCopyWith(TransferConfirmState value,
          $Res Function(TransferConfirmState) then) =
      _$TransferConfirmStateCopyWithImpl<$Res>;
  $Res call({TransferConfirmData data});
}

/// @nodoc
class _$TransferConfirmStateCopyWithImpl<$Res>
    implements $TransferConfirmStateCopyWith<$Res> {
  _$TransferConfirmStateCopyWithImpl(this._value, this._then);

  final TransferConfirmState _value;
  // ignore: unused_field
  final $Res Function(TransferConfirmState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as TransferConfirmData,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $TransferConfirmStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({TransferConfirmData data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$TransferConfirmStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as TransferConfirmData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final TransferConfirmData data;

  @override
  String toString() {
    return 'TransferConfirmState.initial(data: $data)';
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
    @required TResult initial(TransferConfirmData data),
    @required TResult loading(TransferConfirmData data),
    @required TResult loaded(TransferConfirmData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferConfirmData data),
    TResult loading(TransferConfirmData data),
    TResult loaded(TransferConfirmData data),
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
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TransferConfirmState {
  const factory Initial(TransferConfirmData data) = _$Initial;

  @override
  TransferConfirmData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $TransferConfirmStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({TransferConfirmData data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$TransferConfirmStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as TransferConfirmData,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data) : assert(data != null);

  @override
  final TransferConfirmData data;

  @override
  String toString() {
    return 'TransferConfirmState.loading(data: $data)';
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
    @required TResult initial(TransferConfirmData data),
    @required TResult loading(TransferConfirmData data),
    @required TResult loaded(TransferConfirmData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferConfirmData data),
    TResult loading(TransferConfirmData data),
    TResult loaded(TransferConfirmData data),
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
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TransferConfirmState {
  const factory Loading(TransferConfirmData data) = _$Loading;

  @override
  TransferConfirmData get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $TransferConfirmStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({TransferConfirmData data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$TransferConfirmStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Loaded(
      data == freezed ? _value.data : data as TransferConfirmData,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data) : assert(data != null);

  @override
  final TransferConfirmData data;

  @override
  String toString() {
    return 'TransferConfirmState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransferConfirmData data),
    @required TResult loading(TransferConfirmData data),
    @required TResult loaded(TransferConfirmData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferConfirmData data),
    TResult loading(TransferConfirmData data),
    TResult loaded(TransferConfirmData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements TransferConfirmState {
  const factory Loaded(TransferConfirmData data) = _$Loaded;

  @override
  TransferConfirmData get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}
