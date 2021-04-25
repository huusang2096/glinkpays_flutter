// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'store_show_all_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoreShowAllStateDataTearOff {
  const _$StoreShowAllStateDataTearOff();

// ignore: unused_element
  StoreShowAllData call(
      {@nullable StoreShowAllResponse topWeekResponse,
      bool isLoading = false}) {
    return StoreShowAllData(
      topWeekResponse: topWeekResponse,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StoreShowAllStateData = _$StoreShowAllStateDataTearOff();

/// @nodoc
mixin _$StoreShowAllStateData {
  @nullable
  StoreShowAllResponse get topWeekResponse;
  bool get isLoading;

  @JsonKey(ignore: true)
  $StoreShowAllStateDataCopyWith<StoreShowAllStateData> get copyWith;
}

/// @nodoc
abstract class $StoreShowAllStateDataCopyWith<$Res> {
  factory $StoreShowAllStateDataCopyWith(StoreShowAllStateData value,
          $Res Function(StoreShowAllStateData) then) =
      _$StoreShowAllStateDataCopyWithImpl<$Res>;
  $Res call({@nullable StoreShowAllResponse topWeekResponse, bool isLoading});
}

/// @nodoc
class _$StoreShowAllStateDataCopyWithImpl<$Res>
    implements $StoreShowAllStateDataCopyWith<$Res> {
  _$StoreShowAllStateDataCopyWithImpl(this._value, this._then);

  final StoreShowAllStateData _value;
  // ignore: unused_field
  final $Res Function(StoreShowAllStateData) _then;

  @override
  $Res call({
    Object topWeekResponse = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      topWeekResponse: topWeekResponse == freezed
          ? _value.topWeekResponse
          : topWeekResponse as StoreShowAllResponse,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class $StoreShowAllDataCopyWith<$Res>
    implements $StoreShowAllStateDataCopyWith<$Res> {
  factory $StoreShowAllDataCopyWith(
          StoreShowAllData value, $Res Function(StoreShowAllData) then) =
      _$StoreShowAllDataCopyWithImpl<$Res>;
  @override
  $Res call({@nullable StoreShowAllResponse topWeekResponse, bool isLoading});
}

/// @nodoc
class _$StoreShowAllDataCopyWithImpl<$Res>
    extends _$StoreShowAllStateDataCopyWithImpl<$Res>
    implements $StoreShowAllDataCopyWith<$Res> {
  _$StoreShowAllDataCopyWithImpl(
      StoreShowAllData _value, $Res Function(StoreShowAllData) _then)
      : super(_value, (v) => _then(v as StoreShowAllData));

  @override
  StoreShowAllData get _value => super._value as StoreShowAllData;

  @override
  $Res call({
    Object topWeekResponse = freezed,
    Object isLoading = freezed,
  }) {
    return _then(StoreShowAllData(
      topWeekResponse: topWeekResponse == freezed
          ? _value.topWeekResponse
          : topWeekResponse as StoreShowAllResponse,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$StoreShowAllData implements StoreShowAllData {
  const _$StoreShowAllData(
      {@nullable this.topWeekResponse, this.isLoading = false})
      : assert(isLoading != null);

  @override
  @nullable
  final StoreShowAllResponse topWeekResponse;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StoreShowAllStateData(topWeekResponse: $topWeekResponse, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StoreShowAllData &&
            (identical(other.topWeekResponse, topWeekResponse) ||
                const DeepCollectionEquality()
                    .equals(other.topWeekResponse, topWeekResponse)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(topWeekResponse) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $StoreShowAllDataCopyWith<StoreShowAllData> get copyWith =>
      _$StoreShowAllDataCopyWithImpl<StoreShowAllData>(this, _$identity);
}

abstract class StoreShowAllData implements StoreShowAllStateData {
  const factory StoreShowAllData(
      {@nullable StoreShowAllResponse topWeekResponse,
      bool isLoading}) = _$StoreShowAllData;

  @override
  @nullable
  StoreShowAllResponse get topWeekResponse;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $StoreShowAllDataCopyWith<StoreShowAllData> get copyWith;
}

/// @nodoc
class _$StoreShowAllStateTearOff {
  const _$StoreShowAllStateTearOff();

// ignore: unused_element
  Initial initial(StoreShowAllData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Loading loading(StoreShowAllData data) {
    return Loading(
      data,
    );
  }

// ignore: unused_element
  Loaded loaded(StoreShowAllData data) {
    return Loaded(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StoreShowAllState = _$StoreShowAllStateTearOff();

/// @nodoc
mixin _$StoreShowAllState {
  StoreShowAllData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(StoreShowAllData data),
    @required TResult loading(StoreShowAllData data),
    @required TResult loaded(StoreShowAllData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(StoreShowAllData data),
    TResult loading(StoreShowAllData data),
    TResult loaded(StoreShowAllData data),
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
  $StoreShowAllStateCopyWith<StoreShowAllState> get copyWith;
}

/// @nodoc
abstract class $StoreShowAllStateCopyWith<$Res> {
  factory $StoreShowAllStateCopyWith(
          StoreShowAllState value, $Res Function(StoreShowAllState) then) =
      _$StoreShowAllStateCopyWithImpl<$Res>;
  $Res call({StoreShowAllData data});
}

/// @nodoc
class _$StoreShowAllStateCopyWithImpl<$Res>
    implements $StoreShowAllStateCopyWith<$Res> {
  _$StoreShowAllStateCopyWithImpl(this._value, this._then);

  final StoreShowAllState _value;
  // ignore: unused_field
  final $Res Function(StoreShowAllState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as StoreShowAllData,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $StoreShowAllStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({StoreShowAllData data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$StoreShowAllStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as StoreShowAllData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final StoreShowAllData data;

  @override
  String toString() {
    return 'StoreShowAllState.initial(data: $data)';
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
    @required TResult initial(StoreShowAllData data),
    @required TResult loading(StoreShowAllData data),
    @required TResult loaded(StoreShowAllData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(StoreShowAllData data),
    TResult loading(StoreShowAllData data),
    TResult loaded(StoreShowAllData data),
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

abstract class Initial implements StoreShowAllState {
  const factory Initial(StoreShowAllData data) = _$Initial;

  @override
  StoreShowAllData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $StoreShowAllStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({StoreShowAllData data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$StoreShowAllStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as StoreShowAllData,
    ));
  }
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading(this.data) : assert(data != null);

  @override
  final StoreShowAllData data;

  @override
  String toString() {
    return 'StoreShowAllState.loading(data: $data)';
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
    @required TResult initial(StoreShowAllData data),
    @required TResult loading(StoreShowAllData data),
    @required TResult loaded(StoreShowAllData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(StoreShowAllData data),
    TResult loading(StoreShowAllData data),
    TResult loaded(StoreShowAllData data),
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

abstract class Loading implements StoreShowAllState {
  const factory Loading(StoreShowAllData data) = _$Loading;

  @override
  StoreShowAllData get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $StoreShowAllStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({StoreShowAllData data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$StoreShowAllStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as StoreShowAllData,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.data) : assert(data != null);

  @override
  final StoreShowAllData data;

  @override
  String toString() {
    return 'StoreShowAllState.loaded(data: $data)';
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
    @required TResult initial(StoreShowAllData data),
    @required TResult loading(StoreShowAllData data),
    @required TResult loaded(StoreShowAllData data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(StoreShowAllData data),
    TResult loading(StoreShowAllData data),
    TResult loaded(StoreShowAllData data),
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

abstract class Loaded implements StoreShowAllState {
  const factory Loaded(StoreShowAllData data) = _$Loaded;

  @override
  StoreShowAllData get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}
