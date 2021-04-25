// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transfer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransferStateDataTearOff {
  const _$TransferStateDataTearOff();

// ignore: unused_element
  TransferData call(
      {UserSearchItem user,
      @nullable Wallet selectedCurrency,
      bool isLoadingScaffold = false,
      @nullable GetBalanceAvailableResponse getBalanceAvailableResponse,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse}) {
    return TransferData(
      user: user,
      selectedCurrency: selectedCurrency,
      isLoadingScaffold: isLoadingScaffold,
      getBalanceAvailableResponse: getBalanceAvailableResponse,
      myVoucherOrder: myVoucherOrder,
      checkVoucherResponse: checkVoucherResponse,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferStateData = _$TransferStateDataTearOff();

/// @nodoc
mixin _$TransferStateData {
  UserSearchItem get user;
  @nullable
  Wallet get selectedCurrency;
  bool get isLoadingScaffold;
  @nullable
  GetBalanceAvailableResponse get getBalanceAvailableResponse;
  @nullable
  MyVoucherOrder get myVoucherOrder;
  @nullable
  CheckVoucherResponse get checkVoucherResponse;

  @JsonKey(ignore: true)
  $TransferStateDataCopyWith<TransferStateData> get copyWith;
}

/// @nodoc
abstract class $TransferStateDataCopyWith<$Res> {
  factory $TransferStateDataCopyWith(
          TransferStateData value, $Res Function(TransferStateData) then) =
      _$TransferStateDataCopyWithImpl<$Res>;
  $Res call(
      {UserSearchItem user,
      @nullable Wallet selectedCurrency,
      bool isLoadingScaffold,
      @nullable GetBalanceAvailableResponse getBalanceAvailableResponse,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse});
}

/// @nodoc
class _$TransferStateDataCopyWithImpl<$Res>
    implements $TransferStateDataCopyWith<$Res> {
  _$TransferStateDataCopyWithImpl(this._value, this._then);

  final TransferStateData _value;
  // ignore: unused_field
  final $Res Function(TransferStateData) _then;

  @override
  $Res call({
    Object user = freezed,
    Object selectedCurrency = freezed,
    Object isLoadingScaffold = freezed,
    Object getBalanceAvailableResponse = freezed,
    Object myVoucherOrder = freezed,
    Object checkVoucherResponse = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as UserSearchItem,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency as Wallet,
      isLoadingScaffold: isLoadingScaffold == freezed
          ? _value.isLoadingScaffold
          : isLoadingScaffold as bool,
      getBalanceAvailableResponse: getBalanceAvailableResponse == freezed
          ? _value.getBalanceAvailableResponse
          : getBalanceAvailableResponse as GetBalanceAvailableResponse,
      myVoucherOrder: myVoucherOrder == freezed
          ? _value.myVoucherOrder
          : myVoucherOrder as MyVoucherOrder,
      checkVoucherResponse: checkVoucherResponse == freezed
          ? _value.checkVoucherResponse
          : checkVoucherResponse as CheckVoucherResponse,
    ));
  }
}

/// @nodoc
abstract class $TransferDataCopyWith<$Res>
    implements $TransferStateDataCopyWith<$Res> {
  factory $TransferDataCopyWith(
          TransferData value, $Res Function(TransferData) then) =
      _$TransferDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserSearchItem user,
      @nullable Wallet selectedCurrency,
      bool isLoadingScaffold,
      @nullable GetBalanceAvailableResponse getBalanceAvailableResponse,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse});
}

/// @nodoc
class _$TransferDataCopyWithImpl<$Res>
    extends _$TransferStateDataCopyWithImpl<$Res>
    implements $TransferDataCopyWith<$Res> {
  _$TransferDataCopyWithImpl(
      TransferData _value, $Res Function(TransferData) _then)
      : super(_value, (v) => _then(v as TransferData));

  @override
  TransferData get _value => super._value as TransferData;

  @override
  $Res call({
    Object user = freezed,
    Object selectedCurrency = freezed,
    Object isLoadingScaffold = freezed,
    Object getBalanceAvailableResponse = freezed,
    Object myVoucherOrder = freezed,
    Object checkVoucherResponse = freezed,
  }) {
    return _then(TransferData(
      user: user == freezed ? _value.user : user as UserSearchItem,
      selectedCurrency: selectedCurrency == freezed
          ? _value.selectedCurrency
          : selectedCurrency as Wallet,
      isLoadingScaffold: isLoadingScaffold == freezed
          ? _value.isLoadingScaffold
          : isLoadingScaffold as bool,
      getBalanceAvailableResponse: getBalanceAvailableResponse == freezed
          ? _value.getBalanceAvailableResponse
          : getBalanceAvailableResponse as GetBalanceAvailableResponse,
      myVoucherOrder: myVoucherOrder == freezed
          ? _value.myVoucherOrder
          : myVoucherOrder as MyVoucherOrder,
      checkVoucherResponse: checkVoucherResponse == freezed
          ? _value.checkVoucherResponse
          : checkVoucherResponse as CheckVoucherResponse,
    ));
  }
}

/// @nodoc
class _$TransferData implements TransferData {
  const _$TransferData(
      {this.user,
      @nullable this.selectedCurrency,
      this.isLoadingScaffold = false,
      @nullable this.getBalanceAvailableResponse,
      @nullable this.myVoucherOrder,
      @nullable this.checkVoucherResponse})
      : assert(isLoadingScaffold != null);

  @override
  final UserSearchItem user;
  @override
  @nullable
  final Wallet selectedCurrency;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingScaffold;
  @override
  @nullable
  final GetBalanceAvailableResponse getBalanceAvailableResponse;
  @override
  @nullable
  final MyVoucherOrder myVoucherOrder;
  @override
  @nullable
  final CheckVoucherResponse checkVoucherResponse;

  @override
  String toString() {
    return 'TransferStateData(user: $user, selectedCurrency: $selectedCurrency, isLoadingScaffold: $isLoadingScaffold, getBalanceAvailableResponse: $getBalanceAvailableResponse, myVoucherOrder: $myVoucherOrder, checkVoucherResponse: $checkVoucherResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransferData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.selectedCurrency, selectedCurrency) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCurrency, selectedCurrency)) &&
            (identical(other.isLoadingScaffold, isLoadingScaffold) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingScaffold, isLoadingScaffold)) &&
            (identical(other.getBalanceAvailableResponse,
                    getBalanceAvailableResponse) ||
                const DeepCollectionEquality().equals(
                    other.getBalanceAvailableResponse,
                    getBalanceAvailableResponse)) &&
            (identical(other.myVoucherOrder, myVoucherOrder) ||
                const DeepCollectionEquality()
                    .equals(other.myVoucherOrder, myVoucherOrder)) &&
            (identical(other.checkVoucherResponse, checkVoucherResponse) ||
                const DeepCollectionEquality()
                    .equals(other.checkVoucherResponse, checkVoucherResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(selectedCurrency) ^
      const DeepCollectionEquality().hash(isLoadingScaffold) ^
      const DeepCollectionEquality().hash(getBalanceAvailableResponse) ^
      const DeepCollectionEquality().hash(myVoucherOrder) ^
      const DeepCollectionEquality().hash(checkVoucherResponse);

  @JsonKey(ignore: true)
  @override
  $TransferDataCopyWith<TransferData> get copyWith =>
      _$TransferDataCopyWithImpl<TransferData>(this, _$identity);
}

abstract class TransferData implements TransferStateData {
  const factory TransferData(
      {UserSearchItem user,
      @nullable Wallet selectedCurrency,
      bool isLoadingScaffold,
      @nullable GetBalanceAvailableResponse getBalanceAvailableResponse,
      @nullable MyVoucherOrder myVoucherOrder,
      @nullable CheckVoucherResponse checkVoucherResponse}) = _$TransferData;

  @override
  UserSearchItem get user;
  @override
  @nullable
  Wallet get selectedCurrency;
  @override
  bool get isLoadingScaffold;
  @override
  @nullable
  GetBalanceAvailableResponse get getBalanceAvailableResponse;
  @override
  @nullable
  MyVoucherOrder get myVoucherOrder;
  @override
  @nullable
  CheckVoucherResponse get checkVoucherResponse;
  @override
  @JsonKey(ignore: true)
  $TransferDataCopyWith<TransferData> get copyWith;
}

/// @nodoc
class _$TransferStateTearOff {
  const _$TransferStateTearOff();

// ignore: unused_element
  Initial initial(TransferData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Loading loading(TransferData data) {
    return Loading(
      data,
    );
  }

// ignore: unused_element
  Loaded loaded(TransferData data) {
    return Loaded(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferState = _$TransferStateTearOff();

/// @nodoc
mixin _$TransferState {
  TransferData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(TransferData data),
    @required TResult loading(TransferData data),
    @required TResult loaded(TransferData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferData data),
    TResult loading(TransferData data),
    TResult loaded(TransferData data),
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
  $TransferStateCopyWith<TransferState> get copyWith;
}

/// @nodoc
abstract class $TransferStateCopyWith<$Res> {
  factory $TransferStateCopyWith(
          TransferState value, $Res Function(TransferState) then) =
      _$TransferStateCopyWithImpl<$Res>;
  $Res call({TransferData data});
}

/// @nodoc
class _$TransferStateCopyWithImpl<$Res>
    implements $TransferStateCopyWith<$Res> {
  _$TransferStateCopyWithImpl(this._value, this._then);

  final TransferState _value;
  // ignore: unused_field
  final $Res Function(TransferState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as TransferData,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $TransferStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({TransferData data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$TransferStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as TransferData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final TransferData data;

  @override
  String toString() {
    return 'TransferState.initial(data: $data)';
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
    @required TResult initial(TransferData data),
    @required TResult loading(TransferData data),
    @required TResult loaded(TransferData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferData data),
    TResult loading(TransferData data),
    TResult loaded(TransferData data),
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

abstract class Initial implements TransferState {
  const factory Initial(TransferData data) = _$Initial;

  @override
  TransferData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $TransferStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({TransferData data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$TransferStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as TransferData,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data) : assert(data != null);

  @override
  final TransferData data;

  @override
  String toString() {
    return 'TransferState.loading(data: $data)';
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
    @required TResult initial(TransferData data),
    @required TResult loading(TransferData data),
    @required TResult loaded(TransferData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferData data),
    TResult loading(TransferData data),
    TResult loaded(TransferData data),
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

abstract class Loading implements TransferState {
  const factory Loading(TransferData data) = _$Loading;

  @override
  TransferData get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $TransferStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({TransferData data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$TransferStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as TransferData,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data) : assert(data != null);

  @override
  final TransferData data;

  @override
  String toString() {
    return 'TransferState.loaded(data: $data)';
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
    @required TResult initial(TransferData data),
    @required TResult loading(TransferData data),
    @required TResult loaded(TransferData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(TransferData data),
    TResult loading(TransferData data),
    TResult loaded(TransferData data),
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

abstract class Loaded implements TransferState {
  const factory Loaded(TransferData data) = _$Loaded;

  @override
  TransferData get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}
