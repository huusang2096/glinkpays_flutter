// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsStateDataTearOff {
  const _$SettingsStateDataTearOff();

// ignore: unused_element
  Data call({bool isTouchFaceID, bool isTurnLight, bool isLoading}) {
    return Data(
      isTouchFaceID: isTouchFaceID,
      isTurnLight: isTurnLight,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsStateData = _$SettingsStateDataTearOff();

/// @nodoc
mixin _$SettingsStateData {
  bool get isTouchFaceID;
  bool get isTurnLight;
  bool get isLoading;

  @JsonKey(ignore: true)
  $SettingsStateDataCopyWith<SettingsStateData> get copyWith;
}

/// @nodoc
abstract class $SettingsStateDataCopyWith<$Res> {
  factory $SettingsStateDataCopyWith(
          SettingsStateData value, $Res Function(SettingsStateData) then) =
      _$SettingsStateDataCopyWithImpl<$Res>;
  $Res call({bool isTouchFaceID, bool isTurnLight, bool isLoading});
}

/// @nodoc
class _$SettingsStateDataCopyWithImpl<$Res>
    implements $SettingsStateDataCopyWith<$Res> {
  _$SettingsStateDataCopyWithImpl(this._value, this._then);

  final SettingsStateData _value;
  // ignore: unused_field
  final $Res Function(SettingsStateData) _then;

  @override
  $Res call({
    Object isTouchFaceID = freezed,
    Object isTurnLight = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isTouchFaceID: isTouchFaceID == freezed
          ? _value.isTouchFaceID
          : isTouchFaceID as bool,
      isTurnLight:
          isTurnLight == freezed ? _value.isTurnLight : isTurnLight as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $SettingsStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({bool isTouchFaceID, bool isTurnLight, bool isLoading});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$SettingsStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object isTouchFaceID = freezed,
    Object isTurnLight = freezed,
    Object isLoading = freezed,
  }) {
    return _then(Data(
      isTouchFaceID: isTouchFaceID == freezed
          ? _value.isTouchFaceID
          : isTouchFaceID as bool,
      isTurnLight:
          isTurnLight == freezed ? _value.isTurnLight : isTurnLight as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({this.isTouchFaceID, this.isTurnLight, this.isLoading});

  @override
  final bool isTouchFaceID;
  @override
  final bool isTurnLight;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SettingsStateData(isTouchFaceID: $isTouchFaceID, isTurnLight: $isTurnLight, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.isTouchFaceID, isTouchFaceID) ||
                const DeepCollectionEquality()
                    .equals(other.isTouchFaceID, isTouchFaceID)) &&
            (identical(other.isTurnLight, isTurnLight) ||
                const DeepCollectionEquality()
                    .equals(other.isTurnLight, isTurnLight)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTouchFaceID) ^
      const DeepCollectionEquality().hash(isTurnLight) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements SettingsStateData {
  const factory Data({bool isTouchFaceID, bool isTurnLight, bool isLoading}) =
      _$Data;

  @override
  bool get isTouchFaceID;
  @override
  bool get isTurnLight;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

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
  TouchTurnFaceID touchTurnFaceID(Data data) {
    return TouchTurnFaceID(
      data,
    );
  }

// ignore: unused_element
  TouchTurnLight touchTurnLight(Data data) {
    return TouchTurnLight(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult touchTurnFaceID(Data data),
    @required TResult touchTurnLight(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult touchTurnFaceID(Data data),
    TResult touchTurnLight(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult touchTurnFaceID(TouchTurnFaceID value),
    @required TResult touchTurnLight(TouchTurnLight value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult touchTurnFaceID(TouchTurnFaceID value),
    TResult touchTurnLight(TouchTurnLight value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

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
abstract class $InitialCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
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
    return 'SettingsState.initial(data: $data)';
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
    @required TResult touchTurnFaceID(Data data),
    @required TResult touchTurnLight(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult touchTurnFaceID(Data data),
    TResult touchTurnLight(Data data),
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
    @required TResult touchTurnFaceID(TouchTurnFaceID value),
    @required TResult touchTurnLight(TouchTurnLight value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult touchTurnFaceID(TouchTurnFaceID value),
    TResult touchTurnLight(TouchTurnLight value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SettingsState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SettingsStateCopyWithImpl<$Res>
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
    return 'SettingsState.loading(data: $data)';
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
    @required TResult touchTurnFaceID(Data data),
    @required TResult touchTurnLight(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult touchTurnFaceID(Data data),
    TResult touchTurnLight(Data data),
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
    @required TResult touchTurnFaceID(TouchTurnFaceID value),
    @required TResult touchTurnLight(TouchTurnLight value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult touchTurnFaceID(TouchTurnFaceID value),
    TResult touchTurnLight(TouchTurnLight value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SettingsState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $TouchTurnFaceIDCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $TouchTurnFaceIDCopyWith(
          TouchTurnFaceID value, $Res Function(TouchTurnFaceID) then) =
      _$TouchTurnFaceIDCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$TouchTurnFaceIDCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $TouchTurnFaceIDCopyWith<$Res> {
  _$TouchTurnFaceIDCopyWithImpl(
      TouchTurnFaceID _value, $Res Function(TouchTurnFaceID) _then)
      : super(_value, (v) => _then(v as TouchTurnFaceID));

  @override
  TouchTurnFaceID get _value => super._value as TouchTurnFaceID;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(TouchTurnFaceID(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$TouchTurnFaceID implements TouchTurnFaceID {
  const _$TouchTurnFaceID(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SettingsState.touchTurnFaceID(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TouchTurnFaceID &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $TouchTurnFaceIDCopyWith<TouchTurnFaceID> get copyWith =>
      _$TouchTurnFaceIDCopyWithImpl<TouchTurnFaceID>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult touchTurnFaceID(Data data),
    @required TResult touchTurnLight(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return touchTurnFaceID(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult touchTurnFaceID(Data data),
    TResult touchTurnLight(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (touchTurnFaceID != null) {
      return touchTurnFaceID(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult touchTurnFaceID(TouchTurnFaceID value),
    @required TResult touchTurnLight(TouchTurnLight value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return touchTurnFaceID(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult touchTurnFaceID(TouchTurnFaceID value),
    TResult touchTurnLight(TouchTurnLight value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (touchTurnFaceID != null) {
      return touchTurnFaceID(this);
    }
    return orElse();
  }
}

abstract class TouchTurnFaceID implements SettingsState {
  const factory TouchTurnFaceID(Data data) = _$TouchTurnFaceID;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $TouchTurnFaceIDCopyWith<TouchTurnFaceID> get copyWith;
}

/// @nodoc
abstract class $TouchTurnLightCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory $TouchTurnLightCopyWith(
          TouchTurnLight value, $Res Function(TouchTurnLight) then) =
      _$TouchTurnLightCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$TouchTurnLightCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements $TouchTurnLightCopyWith<$Res> {
  _$TouchTurnLightCopyWithImpl(
      TouchTurnLight _value, $Res Function(TouchTurnLight) _then)
      : super(_value, (v) => _then(v as TouchTurnLight));

  @override
  TouchTurnLight get _value => super._value as TouchTurnLight;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(TouchTurnLight(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$TouchTurnLight implements TouchTurnLight {
  const _$TouchTurnLight(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SettingsState.touchTurnLight(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TouchTurnLight &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $TouchTurnLightCopyWith<TouchTurnLight> get copyWith =>
      _$TouchTurnLightCopyWithImpl<TouchTurnLight>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult touchTurnFaceID(Data data),
    @required TResult touchTurnLight(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return touchTurnLight(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult touchTurnFaceID(Data data),
    TResult touchTurnLight(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (touchTurnLight != null) {
      return touchTurnLight(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult touchTurnFaceID(TouchTurnFaceID value),
    @required TResult touchTurnLight(TouchTurnLight value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(touchTurnFaceID != null);
    assert(touchTurnLight != null);
    return touchTurnLight(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult touchTurnFaceID(TouchTurnFaceID value),
    TResult touchTurnLight(TouchTurnLight value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (touchTurnLight != null) {
      return touchTurnLight(this);
    }
    return orElse();
  }
}

abstract class TouchTurnLight implements SettingsState {
  const factory TouchTurnLight(Data data) = _$TouchTurnLight;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $TouchTurnLightCopyWith<TouchTurnLight> get copyWith;
}
