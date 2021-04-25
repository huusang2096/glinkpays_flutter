// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'use_my_voucher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UseMyVoucherStateDataTearOff {
  const _$UseMyVoucherStateDataTearOff();

// ignore: unused_element
  Data call({BaseModel useMyVoucherResponse, bool isLoading, String message}) {
    return Data(
      useMyVoucherResponse: useMyVoucherResponse,
      isLoading: isLoading,
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UseMyVoucherStateData = _$UseMyVoucherStateDataTearOff();

/// @nodoc
mixin _$UseMyVoucherStateData {
  BaseModel get useMyVoucherResponse;
  bool get isLoading;
  String get message;

  @JsonKey(ignore: true)
  $UseMyVoucherStateDataCopyWith<UseMyVoucherStateData> get copyWith;
}

/// @nodoc
abstract class $UseMyVoucherStateDataCopyWith<$Res> {
  factory $UseMyVoucherStateDataCopyWith(UseMyVoucherStateData value,
          $Res Function(UseMyVoucherStateData) then) =
      _$UseMyVoucherStateDataCopyWithImpl<$Res>;
  $Res call({BaseModel useMyVoucherResponse, bool isLoading, String message});
}

/// @nodoc
class _$UseMyVoucherStateDataCopyWithImpl<$Res>
    implements $UseMyVoucherStateDataCopyWith<$Res> {
  _$UseMyVoucherStateDataCopyWithImpl(this._value, this._then);

  final UseMyVoucherStateData _value;
  // ignore: unused_field
  final $Res Function(UseMyVoucherStateData) _then;

  @override
  $Res call({
    Object useMyVoucherResponse = freezed,
    Object isLoading = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      useMyVoucherResponse: useMyVoucherResponse == freezed
          ? _value.useMyVoucherResponse
          : useMyVoucherResponse as BaseModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $UseMyVoucherStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({BaseModel useMyVoucherResponse, bool isLoading, String message});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$UseMyVoucherStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object useMyVoucherResponse = freezed,
    Object isLoading = freezed,
    Object message = freezed,
  }) {
    return _then(Data(
      useMyVoucherResponse: useMyVoucherResponse == freezed
          ? _value.useMyVoucherResponse
          : useMyVoucherResponse as BaseModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({this.useMyVoucherResponse, this.isLoading, this.message});

  @override
  final BaseModel useMyVoucherResponse;
  @override
  final bool isLoading;
  @override
  final String message;

  @override
  String toString() {
    return 'UseMyVoucherStateData(useMyVoucherResponse: $useMyVoucherResponse, isLoading: $isLoading, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.useMyVoucherResponse, useMyVoucherResponse) ||
                const DeepCollectionEquality().equals(
                    other.useMyVoucherResponse, useMyVoucherResponse)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(useMyVoucherResponse) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements UseMyVoucherStateData {
  const factory Data(
      {BaseModel useMyVoucherResponse,
      bool isLoading,
      String message}) = _$Data;

  @override
  BaseModel get useMyVoucherResponse;
  @override
  bool get isLoading;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$UseMyVoucherStateTearOff {
  const _$UseMyVoucherStateTearOff();

// ignore: unused_element
  Initial initial(Data data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Loading loading(Data data) {
    return Loading(
      data,
    );
  }

// ignore: unused_element
  Loaded loaded(Data data) {
    return Loaded(
      data,
    );
  }

// ignore: unused_element
  Error error(Data data) {
    return Error(
      data,
    );
  }

// ignore: unused_element
  UseVoucher useVoucher(Data data) {
    return UseVoucher(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UseMyVoucherState = _$UseMyVoucherStateTearOff();

/// @nodoc
mixin _$UseMyVoucherState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult error(Data data),
    @required TResult useVoucher(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult error(Data data),
    TResult useVoucher(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
    @required TResult useVoucher(UseVoucher value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    TResult useVoucher(UseVoucher value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $UseMyVoucherStateCopyWith<UseMyVoucherState> get copyWith;
}

/// @nodoc
abstract class $UseMyVoucherStateCopyWith<$Res> {
  factory $UseMyVoucherStateCopyWith(
          UseMyVoucherState value, $Res Function(UseMyVoucherState) then) =
      _$UseMyVoucherStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$UseMyVoucherStateCopyWithImpl<$Res>
    implements $UseMyVoucherStateCopyWith<$Res> {
  _$UseMyVoucherStateCopyWithImpl(this._value, this._then);

  final UseMyVoucherState _value;
  // ignore: unused_field
  final $Res Function(UseMyVoucherState) _then;

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
abstract class $InitialCopyWith<$Res>
    implements $UseMyVoucherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$UseMyVoucherStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'UseMyVoucherState.initial(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult error(Data data),
    @required TResult useVoucher(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult error(Data data),
    TResult useVoucher(Data data),
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
    @required TResult error(Error value),
    @required TResult useVoucher(UseVoucher value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    TResult useVoucher(UseVoucher value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UseMyVoucherState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $UseMyVoucherStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$UseMyVoucherStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'UseMyVoucherState.loading(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult error(Data data),
    @required TResult useVoucher(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult error(Data data),
    TResult useVoucher(Data data),
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
    @required TResult error(Error value),
    @required TResult useVoucher(UseVoucher value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    TResult useVoucher(UseVoucher value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UseMyVoucherState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $UseMyVoucherStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$UseMyVoucherStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'UseMyVoucherState.loaded(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult error(Data data),
    @required TResult useVoucher(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult error(Data data),
    TResult useVoucher(Data data),
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
    @required TResult error(Error value),
    @required TResult useVoucher(UseVoucher value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    TResult useVoucher(UseVoucher value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UseMyVoucherState {
  const factory Loaded(Data data) = _$Loaded;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $UseMyVoucherStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$UseMyVoucherStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Error(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'UseMyVoucherState.error(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult error(Data data),
    @required TResult useVoucher(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult error(Data data),
    TResult useVoucher(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
    @required TResult useVoucher(UseVoucher value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    TResult useVoucher(UseVoucher value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UseMyVoucherState {
  const factory Error(Data data) = _$Error;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}

/// @nodoc
abstract class $UseVoucherCopyWith<$Res>
    implements $UseMyVoucherStateCopyWith<$Res> {
  factory $UseVoucherCopyWith(
          UseVoucher value, $Res Function(UseVoucher) then) =
      _$UseVoucherCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UseVoucherCopyWithImpl<$Res>
    extends _$UseMyVoucherStateCopyWithImpl<$Res>
    implements $UseVoucherCopyWith<$Res> {
  _$UseVoucherCopyWithImpl(UseVoucher _value, $Res Function(UseVoucher) _then)
      : super(_value, (v) => _then(v as UseVoucher));

  @override
  UseVoucher get _value => super._value as UseVoucher;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UseVoucher(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UseVoucher implements UseVoucher {
  const _$UseVoucher(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'UseMyVoucherState.useVoucher(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UseVoucher &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UseVoucherCopyWith<UseVoucher> get copyWith =>
      _$UseVoucherCopyWithImpl<UseVoucher>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult error(Data data),
    @required TResult useVoucher(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return useVoucher(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult error(Data data),
    TResult useVoucher(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (useVoucher != null) {
      return useVoucher(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult error(Error value),
    @required TResult useVoucher(UseVoucher value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    assert(useVoucher != null);
    return useVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult error(Error value),
    TResult useVoucher(UseVoucher value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (useVoucher != null) {
      return useVoucher(this);
    }
    return orElse();
  }
}

abstract class UseVoucher implements UseMyVoucherState {
  const factory UseVoucher(Data data) = _$UseVoucher;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UseVoucherCopyWith<UseVoucher> get copyWith;
}
