// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'policy_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PolicyStateDataTearOff {
  const _$PolicyStateDataTearOff();

// ignore: unused_element
  Data call(
      {List<Policy> policies = const [],
      bool isLoading = false,
      dynamic isAgree = false}) {
    return Data(
      policies: policies,
      isLoading: isLoading,
      isAgree: isAgree,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PolicyStateData = _$PolicyStateDataTearOff();

/// @nodoc
mixin _$PolicyStateData {
  List<Policy> get policies;
  bool get isLoading;
  dynamic get isAgree;

  @JsonKey(ignore: true)
  $PolicyStateDataCopyWith<PolicyStateData> get copyWith;
}

/// @nodoc
abstract class $PolicyStateDataCopyWith<$Res> {
  factory $PolicyStateDataCopyWith(
          PolicyStateData value, $Res Function(PolicyStateData) then) =
      _$PolicyStateDataCopyWithImpl<$Res>;
  $Res call({List<Policy> policies, bool isLoading, dynamic isAgree});
}

/// @nodoc
class _$PolicyStateDataCopyWithImpl<$Res>
    implements $PolicyStateDataCopyWith<$Res> {
  _$PolicyStateDataCopyWithImpl(this._value, this._then);

  final PolicyStateData _value;
  // ignore: unused_field
  final $Res Function(PolicyStateData) _then;

  @override
  $Res call({
    Object policies = freezed,
    Object isLoading = freezed,
    Object isAgree = freezed,
  }) {
    return _then(_value.copyWith(
      policies:
          policies == freezed ? _value.policies : policies as List<Policy>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isAgree: isAgree == freezed ? _value.isAgree : isAgree as dynamic,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $PolicyStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call({List<Policy> policies, bool isLoading, dynamic isAgree});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$PolicyStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object policies = freezed,
    Object isLoading = freezed,
    Object isAgree = freezed,
  }) {
    return _then(Data(
      policies:
          policies == freezed ? _value.policies : policies as List<Policy>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isAgree: isAgree == freezed ? _value.isAgree : isAgree,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.policies = const [], this.isLoading = false, this.isAgree = false})
      : assert(policies != null),
        assert(isLoading != null),
        assert(isAgree != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Policy> policies;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isAgree;

  @override
  String toString() {
    return 'PolicyStateData(policies: $policies, isLoading: $isLoading, isAgree: $isAgree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.policies, policies) ||
                const DeepCollectionEquality()
                    .equals(other.policies, policies)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isAgree, isAgree) ||
                const DeepCollectionEquality().equals(other.isAgree, isAgree)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(policies) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isAgree);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements PolicyStateData {
  const factory Data({List<Policy> policies, bool isLoading, dynamic isAgree}) =
      _$Data;

  @override
  List<Policy> get policies;
  @override
  bool get isLoading;
  @override
  dynamic get isAgree;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$PolicyStateTearOff {
  const _$PolicyStateTearOff();

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
  UpdateAgree updateAgrre(Data data) {
    return UpdateAgree(
      data,
    );
  }

// ignore: unused_element
  Error error(Data data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PolicyState = _$PolicyStateTearOff();

/// @nodoc
mixin _$PolicyState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult updateAgrre(Data data),
    @required TResult error(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult updateAgrre(Data data),
    TResult error(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult updateAgrre(UpdateAgree value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult updateAgrre(UpdateAgree value),
    TResult error(Error value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $PolicyStateCopyWith<PolicyState> get copyWith;
}

/// @nodoc
abstract class $PolicyStateCopyWith<$Res> {
  factory $PolicyStateCopyWith(
          PolicyState value, $Res Function(PolicyState) then) =
      _$PolicyStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$PolicyStateCopyWithImpl<$Res> implements $PolicyStateCopyWith<$Res> {
  _$PolicyStateCopyWithImpl(this._value, this._then);

  final PolicyState _value;
  // ignore: unused_field
  final $Res Function(PolicyState) _then;

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
abstract class $InitialCopyWith<$Res> implements $PolicyStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$PolicyStateCopyWithImpl<$Res>
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
    return 'PolicyState.initial(data: $data)';
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
    @required TResult updateAgrre(Data data),
    @required TResult error(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult updateAgrre(Data data),
    TResult error(Data data),
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
    @required TResult updateAgrre(UpdateAgree value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult updateAgrre(UpdateAgree value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PolicyState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $PolicyStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$PolicyStateCopyWithImpl<$Res>
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
    return 'PolicyState.loading(data: $data)';
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
    @required TResult updateAgrre(Data data),
    @required TResult error(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult updateAgrre(Data data),
    TResult error(Data data),
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
    @required TResult updateAgrre(UpdateAgree value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult updateAgrre(UpdateAgree value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PolicyState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> implements $PolicyStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$PolicyStateCopyWithImpl<$Res>
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
    return 'PolicyState.loaded(data: $data)';
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
    @required TResult updateAgrre(Data data),
    @required TResult error(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult updateAgrre(Data data),
    TResult error(Data data),
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
    @required TResult updateAgrre(UpdateAgree value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult updateAgrre(UpdateAgree value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements PolicyState {
  const factory Loaded(Data data) = _$Loaded;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $UpdateAgreeCopyWith<$Res>
    implements $PolicyStateCopyWith<$Res> {
  factory $UpdateAgreeCopyWith(
          UpdateAgree value, $Res Function(UpdateAgree) then) =
      _$UpdateAgreeCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UpdateAgreeCopyWithImpl<$Res> extends _$PolicyStateCopyWithImpl<$Res>
    implements $UpdateAgreeCopyWith<$Res> {
  _$UpdateAgreeCopyWithImpl(
      UpdateAgree _value, $Res Function(UpdateAgree) _then)
      : super(_value, (v) => _then(v as UpdateAgree));

  @override
  UpdateAgree get _value => super._value as UpdateAgree;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UpdateAgree(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UpdateAgree implements UpdateAgree {
  const _$UpdateAgree(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'PolicyState.updateAgrre(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateAgree &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdateAgreeCopyWith<UpdateAgree> get copyWith =>
      _$UpdateAgreeCopyWithImpl<UpdateAgree>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult loaded(Data data),
    @required TResult updateAgrre(Data data),
    @required TResult error(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return updateAgrre(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult updateAgrre(Data data),
    TResult error(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateAgrre != null) {
      return updateAgrre(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult loaded(Loaded value),
    @required TResult updateAgrre(UpdateAgree value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return updateAgrre(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult updateAgrre(UpdateAgree value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateAgrre != null) {
      return updateAgrre(this);
    }
    return orElse();
  }
}

abstract class UpdateAgree implements PolicyState {
  const factory UpdateAgree(Data data) = _$UpdateAgree;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UpdateAgreeCopyWith<UpdateAgree> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> implements $PolicyStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$PolicyStateCopyWithImpl<$Res>
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
    return 'PolicyState.error(data: $data)';
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
    @required TResult updateAgrre(Data data),
    @required TResult error(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult loaded(Data data),
    TResult updateAgrre(Data data),
    TResult error(Data data),
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
    @required TResult updateAgrre(UpdateAgree value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(updateAgrre != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult loaded(Loaded value),
    TResult updateAgrre(UpdateAgree value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements PolicyState {
  const factory Error(Data data) = _$Error;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
