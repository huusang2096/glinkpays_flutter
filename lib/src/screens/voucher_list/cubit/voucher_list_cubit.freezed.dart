// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'voucher_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VoucherListDataTearOff {
  const _$VoucherListDataTearOff();

// ignore: unused_element
  Data call({List<FoodData> vouchers, bool inAsyncCall}) {
    return Data(
      vouchers: vouchers,
      inAsyncCall: inAsyncCall,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VoucherListData = _$VoucherListDataTearOff();

/// @nodoc
mixin _$VoucherListData {
  List<FoodData> get vouchers;
  bool get inAsyncCall;

  @JsonKey(ignore: true)
  $VoucherListDataCopyWith<VoucherListData> get copyWith;
}

/// @nodoc
abstract class $VoucherListDataCopyWith<$Res> {
  factory $VoucherListDataCopyWith(
          VoucherListData value, $Res Function(VoucherListData) then) =
      _$VoucherListDataCopyWithImpl<$Res>;
  $Res call({List<FoodData> vouchers, bool inAsyncCall});
}

/// @nodoc
class _$VoucherListDataCopyWithImpl<$Res>
    implements $VoucherListDataCopyWith<$Res> {
  _$VoucherListDataCopyWithImpl(this._value, this._then);

  final VoucherListData _value;
  // ignore: unused_field
  final $Res Function(VoucherListData) _then;

  @override
  $Res call({
    Object vouchers = freezed,
    Object inAsyncCall = freezed,
  }) {
    return _then(_value.copyWith(
      vouchers:
          vouchers == freezed ? _value.vouchers : vouchers as List<FoodData>,
      inAsyncCall:
          inAsyncCall == freezed ? _value.inAsyncCall : inAsyncCall as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $VoucherListDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<FoodData> vouchers, bool inAsyncCall});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$VoucherListDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object vouchers = freezed,
    Object inAsyncCall = freezed,
  }) {
    return _then(Data(
      vouchers:
          vouchers == freezed ? _value.vouchers : vouchers as List<FoodData>,
      inAsyncCall:
          inAsyncCall == freezed ? _value.inAsyncCall : inAsyncCall as bool,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({this.vouchers, this.inAsyncCall});

  @override
  final List<FoodData> vouchers;
  @override
  final bool inAsyncCall;

  @override
  String toString() {
    return 'VoucherListData(vouchers: $vouchers, inAsyncCall: $inAsyncCall)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.vouchers, vouchers) ||
                const DeepCollectionEquality()
                    .equals(other.vouchers, vouchers)) &&
            (identical(other.inAsyncCall, inAsyncCall) ||
                const DeepCollectionEquality()
                    .equals(other.inAsyncCall, inAsyncCall)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vouchers) ^
      const DeepCollectionEquality().hash(inAsyncCall);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements VoucherListData {
  const factory Data({List<FoodData> vouchers, bool inAsyncCall}) = _$Data;

  @override
  List<FoodData> get vouchers;
  @override
  bool get inAsyncCall;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$VoucherListStateTearOff {
  const _$VoucherListStateTearOff();

// ignore: unused_element
  _Initial initial(Data data) {
    return _Initial(
      data,
    );
  }

// ignore: unused_element
  _Loading loading(Data data) {
    return _Loading(
      data,
    );
  }

// ignore: unused_element
  _Loaded loaded(Data data) {
    return _Loaded(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VoucherListState = _$VoucherListStateTearOff();

/// @nodoc
mixin _$VoucherListState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $VoucherListStateCopyWith<VoucherListState> get copyWith;
}

/// @nodoc
abstract class $VoucherListStateCopyWith<$Res> {
  factory $VoucherListStateCopyWith(
          VoucherListState value, $Res Function(VoucherListState) then) =
      _$VoucherListStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$VoucherListStateCopyWithImpl<$Res>
    implements $VoucherListStateCopyWith<$Res> {
  _$VoucherListStateCopyWithImpl(this._value, this._then);

  final VoucherListState _value;
  // ignore: unused_field
  final $Res Function(VoucherListState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $VoucherListStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VoucherListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_Initial(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'VoucherListState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
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
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VoucherListState {
  const factory _Initial(Data data) = _$_Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $VoucherListStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$VoucherListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_Loading(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'VoucherListState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
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
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VoucherListState {
  const factory _Loading(Data data) = _$_Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res>
    implements $VoucherListStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$VoucherListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_Loaded(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'VoucherListState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
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
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements VoucherListState {
  const factory _Loaded(Data data) = _$_Loaded;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}
