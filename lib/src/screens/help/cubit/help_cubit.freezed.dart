// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'help_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HelpStateDataTearOff {
  const _$HelpStateDataTearOff();

// ignore: unused_element
  Data call({HelpResponse helpResponse, dynamic isLoading}) {
    return Data(
      helpResponse: helpResponse,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HelpStateData = _$HelpStateDataTearOff();

/// @nodoc
mixin _$HelpStateData {
  HelpResponse get helpResponse;
  dynamic get isLoading;

  @JsonKey(ignore: true)
  $HelpStateDataCopyWith<HelpStateData> get copyWith;
}

/// @nodoc
abstract class $HelpStateDataCopyWith<$Res> {
  factory $HelpStateDataCopyWith(
          HelpStateData value, $Res Function(HelpStateData) then) =
      _$HelpStateDataCopyWithImpl<$Res>;
  $Res call({HelpResponse helpResponse, dynamic isLoading});
}

/// @nodoc
class _$HelpStateDataCopyWithImpl<$Res>
    implements $HelpStateDataCopyWith<$Res> {
  _$HelpStateDataCopyWithImpl(this._value, this._then);

  final HelpStateData _value;
  // ignore: unused_field
  final $Res Function(HelpStateData) _then;

  @override
  $Res call({
    Object helpResponse = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      helpResponse: helpResponse == freezed
          ? _value.helpResponse
          : helpResponse as HelpResponse,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as dynamic,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $HelpStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({HelpResponse helpResponse, dynamic isLoading});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$HelpStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object helpResponse = freezed,
    Object isLoading = freezed,
  }) {
    return _then(Data(
      helpResponse: helpResponse == freezed
          ? _value.helpResponse
          : helpResponse as HelpResponse,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({this.helpResponse, this.isLoading});

  @override
  final HelpResponse helpResponse;
  @override
  final dynamic isLoading;

  @override
  String toString() {
    return 'HelpStateData(helpResponse: $helpResponse, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.helpResponse, helpResponse) ||
                const DeepCollectionEquality()
                    .equals(other.helpResponse, helpResponse)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(helpResponse) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements HelpStateData {
  const factory Data({HelpResponse helpResponse, dynamic isLoading}) = _$Data;

  @override
  HelpResponse get helpResponse;
  @override
  dynamic get isLoading;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$HelpStateTearOff {
  const _$HelpStateTearOff();

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
}

/// @nodoc
// ignore: unused_element
const $HelpState = _$HelpStateTearOff();

/// @nodoc
mixin _$HelpState {
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
  $HelpStateCopyWith<HelpState> get copyWith;
}

/// @nodoc
abstract class $HelpStateCopyWith<$Res> {
  factory $HelpStateCopyWith(HelpState value, $Res Function(HelpState) then) =
      _$HelpStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$HelpStateCopyWithImpl<$Res> implements $HelpStateCopyWith<$Res> {
  _$HelpStateCopyWithImpl(this._value, this._then);

  final HelpState _value;
  // ignore: unused_field
  final $Res Function(HelpState) _then;

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
abstract class $InitialCopyWith<$Res> implements $HelpStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HelpStateCopyWithImpl<$Res>
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
    return 'HelpState.initial(data: $data)';
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

abstract class Initial implements HelpState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $HelpStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$HelpStateCopyWithImpl<$Res>
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
    return 'HelpState.loading(data: $data)';
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

abstract class Loading implements HelpState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $HelpStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$HelpStateCopyWithImpl<$Res>
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
    return 'HelpState.loaded(data: $data)';
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

abstract class Loaded implements HelpState {
  const factory Loaded(Data data) = _$Loaded;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}
