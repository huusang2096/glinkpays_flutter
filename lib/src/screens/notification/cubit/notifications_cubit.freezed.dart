// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationsStateDataTearOff {
  const _$NotificationsStateDataTearOff();

// ignore: unused_element
  Data call(
      {@nullable NotificationResponse notificationResponse,
      int tabNotification = 0,
      bool isLoading = false}) {
    return Data(
      notificationResponse: notificationResponse,
      tabNotification: tabNotification,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsStateData = _$NotificationsStateDataTearOff();

/// @nodoc
mixin _$NotificationsStateData {
  @nullable
  NotificationResponse get notificationResponse;
  int get tabNotification;
  bool get isLoading;

  @JsonKey(ignore: true)
  $NotificationsStateDataCopyWith<NotificationsStateData> get copyWith;
}

/// @nodoc
abstract class $NotificationsStateDataCopyWith<$Res> {
  factory $NotificationsStateDataCopyWith(NotificationsStateData value,
          $Res Function(NotificationsStateData) then) =
      _$NotificationsStateDataCopyWithImpl<$Res>;
  $Res call(
      {@nullable NotificationResponse notificationResponse,
      int tabNotification,
      bool isLoading});
}

/// @nodoc
class _$NotificationsStateDataCopyWithImpl<$Res>
    implements $NotificationsStateDataCopyWith<$Res> {
  _$NotificationsStateDataCopyWithImpl(this._value, this._then);

  final NotificationsStateData _value;
  // ignore: unused_field
  final $Res Function(NotificationsStateData) _then;

  @override
  $Res call({
    Object notificationResponse = freezed,
    Object tabNotification = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      notificationResponse: notificationResponse == freezed
          ? _value.notificationResponse
          : notificationResponse as NotificationResponse,
      tabNotification: tabNotification == freezed
          ? _value.tabNotification
          : tabNotification as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $NotificationsStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable NotificationResponse notificationResponse,
      int tabNotification,
      bool isLoading});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$NotificationsStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object notificationResponse = freezed,
    Object tabNotification = freezed,
    Object isLoading = freezed,
  }) {
    return _then(Data(
      notificationResponse: notificationResponse == freezed
          ? _value.notificationResponse
          : notificationResponse as NotificationResponse,
      tabNotification: tabNotification == freezed
          ? _value.tabNotification
          : tabNotification as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {@nullable this.notificationResponse,
      this.tabNotification = 0,
      this.isLoading = false})
      : assert(tabNotification != null),
        assert(isLoading != null);

  @override
  @nullable
  final NotificationResponse notificationResponse;
  @JsonKey(defaultValue: 0)
  @override
  final int tabNotification;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'NotificationsStateData(notificationResponse: $notificationResponse, tabNotification: $tabNotification, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.notificationResponse, notificationResponse) ||
                const DeepCollectionEquality().equals(
                    other.notificationResponse, notificationResponse)) &&
            (identical(other.tabNotification, tabNotification) ||
                const DeepCollectionEquality()
                    .equals(other.tabNotification, tabNotification)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationResponse) ^
      const DeepCollectionEquality().hash(tabNotification) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements NotificationsStateData {
  const factory Data(
      {@nullable NotificationResponse notificationResponse,
      int tabNotification,
      bool isLoading}) = _$Data;

  @override
  @nullable
  NotificationResponse get notificationResponse;
  @override
  int get tabNotification;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$NotificationsStateTearOff {
  const _$NotificationsStateTearOff();

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
  ChangeTab changeTab(Data data) {
    return ChangeTab(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsState = _$NotificationsStateTearOff();

/// @nodoc
mixin _$NotificationsState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult changeTab(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult changeTab(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult changeTab(ChangeTab value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult changeTab(ChangeTab value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;

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
    implements $NotificationsStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$NotificationsStateCopyWithImpl<$Res>
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
    return 'NotificationsState.initial(data: $data)';
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
    @required TResult changeTab(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult changeTab(Data data),
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
    @required TResult changeTab(ChangeTab value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult changeTab(ChangeTab value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NotificationsState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$NotificationsStateCopyWithImpl<$Res>
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
    return 'NotificationsState.loading(data: $data)';
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
    @required TResult changeTab(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult changeTab(Data data),
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
    @required TResult changeTab(ChangeTab value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult changeTab(ChangeTab value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NotificationsState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$NotificationsStateCopyWithImpl<$Res>
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
    return 'NotificationsState.loaded(data: $data)';
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
    @required TResult changeTab(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult changeTab(Data data),
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
    @required TResult changeTab(ChangeTab value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult changeTab(ChangeTab value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements NotificationsState {
  const factory Loaded(Data data) = _$Loaded;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $ChangeTabCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory $ChangeTabCopyWith(ChangeTab value, $Res Function(ChangeTab) then) =
      _$ChangeTabCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ChangeTabCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements $ChangeTabCopyWith<$Res> {
  _$ChangeTabCopyWithImpl(ChangeTab _value, $Res Function(ChangeTab) _then)
      : super(_value, (v) => _then(v as ChangeTab));

  @override
  ChangeTab get _value => super._value as ChangeTab;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ChangeTab(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ChangeTab implements ChangeTab {
  const _$ChangeTab(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'NotificationsState.changeTab(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeTab &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ChangeTabCopyWith<ChangeTab> get copyWith =>
      _$ChangeTabCopyWithImpl<ChangeTab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult changeTab(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return changeTab(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult changeTab(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTab != null) {
      return changeTab(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult changeTab(ChangeTab value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(changeTab != null);
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult changeTab(ChangeTab value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class ChangeTab implements NotificationsState {
  const factory ChangeTab(Data data) = _$ChangeTab;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ChangeTabCopyWith<ChangeTab> get copyWith;
}
