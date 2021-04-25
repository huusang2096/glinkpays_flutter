// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChangePasswordStateDataTearOff {
  const _$ChangePasswordStateDataTearOff();

// ignore: unused_element
  Data call(
      {bool isLoading = false,
      @nullable ChangePasswordResponse userResponse,
      bool isPasswordObscure = true,
      bool isConfirmPasswordObscure = true,
      bool isOldPasswordObscure = true}) {
    return Data(
      isLoading: isLoading,
      userResponse: userResponse,
      isPasswordObscure: isPasswordObscure,
      isConfirmPasswordObscure: isConfirmPasswordObscure,
      isOldPasswordObscure: isOldPasswordObscure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePasswordStateData = _$ChangePasswordStateDataTearOff();

/// @nodoc
mixin _$ChangePasswordStateData {
  bool get isLoading;
  @nullable
  ChangePasswordResponse get userResponse;
  bool get isPasswordObscure;
  bool get isConfirmPasswordObscure;
  bool get isOldPasswordObscure;

  @JsonKey(ignore: true)
  $ChangePasswordStateDataCopyWith<ChangePasswordStateData> get copyWith;
}

/// @nodoc
abstract class $ChangePasswordStateDataCopyWith<$Res> {
  factory $ChangePasswordStateDataCopyWith(ChangePasswordStateData value,
          $Res Function(ChangePasswordStateData) then) =
      _$ChangePasswordStateDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      @nullable ChangePasswordResponse userResponse,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure,
      bool isOldPasswordObscure});
}

/// @nodoc
class _$ChangePasswordStateDataCopyWithImpl<$Res>
    implements $ChangePasswordStateDataCopyWith<$Res> {
  _$ChangePasswordStateDataCopyWithImpl(this._value, this._then);

  final ChangePasswordStateData _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordStateData) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object userResponse = freezed,
    Object isPasswordObscure = freezed,
    Object isConfirmPasswordObscure = freezed,
    Object isOldPasswordObscure = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      userResponse: userResponse == freezed
          ? _value.userResponse
          : userResponse as ChangePasswordResponse,
      isPasswordObscure: isPasswordObscure == freezed
          ? _value.isPasswordObscure
          : isPasswordObscure as bool,
      isConfirmPasswordObscure: isConfirmPasswordObscure == freezed
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure as bool,
      isOldPasswordObscure: isOldPasswordObscure == freezed
          ? _value.isOldPasswordObscure
          : isOldPasswordObscure as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $ChangePasswordStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      @nullable ChangePasswordResponse userResponse,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure,
      bool isOldPasswordObscure});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$ChangePasswordStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object isLoading = freezed,
    Object userResponse = freezed,
    Object isPasswordObscure = freezed,
    Object isConfirmPasswordObscure = freezed,
    Object isOldPasswordObscure = freezed,
  }) {
    return _then(Data(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      userResponse: userResponse == freezed
          ? _value.userResponse
          : userResponse as ChangePasswordResponse,
      isPasswordObscure: isPasswordObscure == freezed
          ? _value.isPasswordObscure
          : isPasswordObscure as bool,
      isConfirmPasswordObscure: isConfirmPasswordObscure == freezed
          ? _value.isConfirmPasswordObscure
          : isConfirmPasswordObscure as bool,
      isOldPasswordObscure: isOldPasswordObscure == freezed
          ? _value.isOldPasswordObscure
          : isOldPasswordObscure as bool,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.isLoading = false,
      @nullable this.userResponse,
      this.isPasswordObscure = true,
      this.isConfirmPasswordObscure = true,
      this.isOldPasswordObscure = true})
      : assert(isLoading != null),
        assert(isPasswordObscure != null),
        assert(isConfirmPasswordObscure != null),
        assert(isOldPasswordObscure != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  @nullable
  final ChangePasswordResponse userResponse;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordObscure;
  @JsonKey(defaultValue: true)
  @override
  final bool isConfirmPasswordObscure;
  @JsonKey(defaultValue: true)
  @override
  final bool isOldPasswordObscure;

  @override
  String toString() {
    return 'ChangePasswordStateData(isLoading: $isLoading, userResponse: $userResponse, isPasswordObscure: $isPasswordObscure, isConfirmPasswordObscure: $isConfirmPasswordObscure, isOldPasswordObscure: $isOldPasswordObscure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.userResponse, userResponse) ||
                const DeepCollectionEquality()
                    .equals(other.userResponse, userResponse)) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordObscure, isPasswordObscure)) &&
            (identical(
                    other.isConfirmPasswordObscure, isConfirmPasswordObscure) ||
                const DeepCollectionEquality().equals(
                    other.isConfirmPasswordObscure,
                    isConfirmPasswordObscure)) &&
            (identical(other.isOldPasswordObscure, isOldPasswordObscure) ||
                const DeepCollectionEquality()
                    .equals(other.isOldPasswordObscure, isOldPasswordObscure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(userResponse) ^
      const DeepCollectionEquality().hash(isPasswordObscure) ^
      const DeepCollectionEquality().hash(isConfirmPasswordObscure) ^
      const DeepCollectionEquality().hash(isOldPasswordObscure);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements ChangePasswordStateData {
  const factory Data(
      {bool isLoading,
      @nullable ChangePasswordResponse userResponse,
      bool isPasswordObscure,
      bool isConfirmPasswordObscure,
      bool isOldPasswordObscure}) = _$Data;

  @override
  bool get isLoading;
  @override
  @nullable
  ChangePasswordResponse get userResponse;
  @override
  bool get isPasswordObscure;
  @override
  bool get isConfirmPasswordObscure;
  @override
  bool get isOldPasswordObscure;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

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
  UpdateObscurePass updateObscurePass(Data data) {
    return UpdateObscurePass(
      data,
    );
  }

// ignore: unused_element
  UpdateObscureConfirmPass updateObscureConfirmPass(Data data) {
    return UpdateObscureConfirmPass(
      data,
    );
  }

// ignore: unused_element
  UpdateObscureOldPass updateObscureOldPass(Data data) {
    return UpdateObscureOldPass(
      data,
    );
  }

// ignore: unused_element
  UpdatePasswordSuccess updatePasswordSuccess(Data data) {
    return UpdatePasswordSuccess(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

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
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
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
    return 'ChangePasswordState.initial(data: $data)';
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
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
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
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChangePasswordState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
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
    return 'ChangePasswordState.loading(data: $data)';
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
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
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
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChangePasswordState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $UpdateObscurePassCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $UpdateObscurePassCopyWith(
          UpdateObscurePass value, $Res Function(UpdateObscurePass) then) =
      _$UpdateObscurePassCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UpdateObscurePassCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $UpdateObscurePassCopyWith<$Res> {
  _$UpdateObscurePassCopyWithImpl(
      UpdateObscurePass _value, $Res Function(UpdateObscurePass) _then)
      : super(_value, (v) => _then(v as UpdateObscurePass));

  @override
  UpdateObscurePass get _value => super._value as UpdateObscurePass;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UpdateObscurePass(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UpdateObscurePass implements UpdateObscurePass {
  const _$UpdateObscurePass(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'ChangePasswordState.updateObscurePass(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateObscurePass &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdateObscurePassCopyWith<UpdateObscurePass> get copyWith =>
      _$UpdateObscurePassCopyWithImpl<UpdateObscurePass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updateObscurePass(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateObscurePass != null) {
      return updateObscurePass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updateObscurePass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateObscurePass != null) {
      return updateObscurePass(this);
    }
    return orElse();
  }
}

abstract class UpdateObscurePass implements ChangePasswordState {
  const factory UpdateObscurePass(Data data) = _$UpdateObscurePass;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UpdateObscurePassCopyWith<UpdateObscurePass> get copyWith;
}

/// @nodoc
abstract class $UpdateObscureConfirmPassCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $UpdateObscureConfirmPassCopyWith(UpdateObscureConfirmPass value,
          $Res Function(UpdateObscureConfirmPass) then) =
      _$UpdateObscureConfirmPassCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UpdateObscureConfirmPassCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $UpdateObscureConfirmPassCopyWith<$Res> {
  _$UpdateObscureConfirmPassCopyWithImpl(UpdateObscureConfirmPass _value,
      $Res Function(UpdateObscureConfirmPass) _then)
      : super(_value, (v) => _then(v as UpdateObscureConfirmPass));

  @override
  UpdateObscureConfirmPass get _value =>
      super._value as UpdateObscureConfirmPass;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UpdateObscureConfirmPass(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UpdateObscureConfirmPass implements UpdateObscureConfirmPass {
  const _$UpdateObscureConfirmPass(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'ChangePasswordState.updateObscureConfirmPass(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateObscureConfirmPass &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdateObscureConfirmPassCopyWith<UpdateObscureConfirmPass> get copyWith =>
      _$UpdateObscureConfirmPassCopyWithImpl<UpdateObscureConfirmPass>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updateObscureConfirmPass(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateObscureConfirmPass != null) {
      return updateObscureConfirmPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updateObscureConfirmPass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateObscureConfirmPass != null) {
      return updateObscureConfirmPass(this);
    }
    return orElse();
  }
}

abstract class UpdateObscureConfirmPass implements ChangePasswordState {
  const factory UpdateObscureConfirmPass(Data data) =
      _$UpdateObscureConfirmPass;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UpdateObscureConfirmPassCopyWith<UpdateObscureConfirmPass> get copyWith;
}

/// @nodoc
abstract class $UpdateObscureOldPassCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $UpdateObscureOldPassCopyWith(UpdateObscureOldPass value,
          $Res Function(UpdateObscureOldPass) then) =
      _$UpdateObscureOldPassCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UpdateObscureOldPassCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $UpdateObscureOldPassCopyWith<$Res> {
  _$UpdateObscureOldPassCopyWithImpl(
      UpdateObscureOldPass _value, $Res Function(UpdateObscureOldPass) _then)
      : super(_value, (v) => _then(v as UpdateObscureOldPass));

  @override
  UpdateObscureOldPass get _value => super._value as UpdateObscureOldPass;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UpdateObscureOldPass(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UpdateObscureOldPass implements UpdateObscureOldPass {
  const _$UpdateObscureOldPass(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'ChangePasswordState.updateObscureOldPass(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateObscureOldPass &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdateObscureOldPassCopyWith<UpdateObscureOldPass> get copyWith =>
      _$UpdateObscureOldPassCopyWithImpl<UpdateObscureOldPass>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updateObscureOldPass(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateObscureOldPass != null) {
      return updateObscureOldPass(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updateObscureOldPass(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateObscureOldPass != null) {
      return updateObscureOldPass(this);
    }
    return orElse();
  }
}

abstract class UpdateObscureOldPass implements ChangePasswordState {
  const factory UpdateObscureOldPass(Data data) = _$UpdateObscureOldPass;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UpdateObscureOldPassCopyWith<UpdateObscureOldPass> get copyWith;
}

/// @nodoc
abstract class $UpdatePasswordSuccessCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory $UpdatePasswordSuccessCopyWith(UpdatePasswordSuccess value,
          $Res Function(UpdatePasswordSuccess) then) =
      _$UpdatePasswordSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$UpdatePasswordSuccessCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements $UpdatePasswordSuccessCopyWith<$Res> {
  _$UpdatePasswordSuccessCopyWithImpl(
      UpdatePasswordSuccess _value, $Res Function(UpdatePasswordSuccess) _then)
      : super(_value, (v) => _then(v as UpdatePasswordSuccess));

  @override
  UpdatePasswordSuccess get _value => super._value as UpdatePasswordSuccess;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(UpdatePasswordSuccess(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$UpdatePasswordSuccess implements UpdatePasswordSuccess {
  const _$UpdatePasswordSuccess(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'ChangePasswordState.updatePasswordSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePasswordSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UpdatePasswordSuccessCopyWith<UpdatePasswordSuccess> get copyWith =>
      _$UpdatePasswordSuccessCopyWithImpl<UpdatePasswordSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult loading(Data data),
    @required TResult updateObscurePass(Data data),
    @required TResult updateObscureConfirmPass(Data data),
    @required TResult updateObscureOldPass(Data data),
    @required TResult updatePasswordSuccess(Data data),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updatePasswordSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult loading(Data data),
    TResult updateObscurePass(Data data),
    TResult updateObscureConfirmPass(Data data),
    TResult updateObscureOldPass(Data data),
    TResult updatePasswordSuccess(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loading(Loading value),
    @required TResult updateObscurePass(UpdateObscurePass value),
    @required TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    @required TResult updateObscureOldPass(UpdateObscureOldPass value),
    @required TResult updatePasswordSuccess(UpdatePasswordSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(updateObscurePass != null);
    assert(updateObscureConfirmPass != null);
    assert(updateObscureOldPass != null);
    assert(updatePasswordSuccess != null);
    return updatePasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loading(Loading value),
    TResult updateObscurePass(UpdateObscurePass value),
    TResult updateObscureConfirmPass(UpdateObscureConfirmPass value),
    TResult updateObscureOldPass(UpdateObscureOldPass value),
    TResult updatePasswordSuccess(UpdatePasswordSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updatePasswordSuccess != null) {
      return updatePasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdatePasswordSuccess implements ChangePasswordState {
  const factory UpdatePasswordSuccess(Data data) = _$UpdatePasswordSuccess;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $UpdatePasswordSuccessCopyWith<UpdatePasswordSuccess> get copyWith;
}
