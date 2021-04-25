// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transfer_scan_qr_code_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransferScanQrCodeDataTearOff {
  const _$TransferScanQrCodeDataTearOff();

// ignore: unused_element
  Data call(
      {bool isTorchOn = false,
      bool isPause = false,
      bool isLoadingScaffold = false,
      bool isLoadingNationalID = false}) {
    return Data(
      isTorchOn: isTorchOn,
      isPause: isPause,
      isLoadingScaffold: isLoadingScaffold,
      isLoadingNationalID: isLoadingNationalID,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferScanQrCodeData = _$TransferScanQrCodeDataTearOff();

/// @nodoc
mixin _$TransferScanQrCodeData {
  bool get isTorchOn;
  bool get isPause;
  bool get isLoadingScaffold;
  bool get isLoadingNationalID;

  @JsonKey(ignore: true)
  $TransferScanQrCodeDataCopyWith<TransferScanQrCodeData> get copyWith;
}

/// @nodoc
abstract class $TransferScanQrCodeDataCopyWith<$Res> {
  factory $TransferScanQrCodeDataCopyWith(TransferScanQrCodeData value,
          $Res Function(TransferScanQrCodeData) then) =
      _$TransferScanQrCodeDataCopyWithImpl<$Res>;
  $Res call(
      {bool isTorchOn,
      bool isPause,
      bool isLoadingScaffold,
      bool isLoadingNationalID});
}

/// @nodoc
class _$TransferScanQrCodeDataCopyWithImpl<$Res>
    implements $TransferScanQrCodeDataCopyWith<$Res> {
  _$TransferScanQrCodeDataCopyWithImpl(this._value, this._then);

  final TransferScanQrCodeData _value;
  // ignore: unused_field
  final $Res Function(TransferScanQrCodeData) _then;

  @override
  $Res call({
    Object isTorchOn = freezed,
    Object isPause = freezed,
    Object isLoadingScaffold = freezed,
    Object isLoadingNationalID = freezed,
  }) {
    return _then(_value.copyWith(
      isTorchOn: isTorchOn == freezed ? _value.isTorchOn : isTorchOn as bool,
      isPause: isPause == freezed ? _value.isPause : isPause as bool,
      isLoadingScaffold: isLoadingScaffold == freezed
          ? _value.isLoadingScaffold
          : isLoadingScaffold as bool,
      isLoadingNationalID: isLoadingNationalID == freezed
          ? _value.isLoadingNationalID
          : isLoadingNationalID as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $TransferScanQrCodeDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isTorchOn,
      bool isPause,
      bool isLoadingScaffold,
      bool isLoadingNationalID});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$TransferScanQrCodeDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object isTorchOn = freezed,
    Object isPause = freezed,
    Object isLoadingScaffold = freezed,
    Object isLoadingNationalID = freezed,
  }) {
    return _then(Data(
      isTorchOn: isTorchOn == freezed ? _value.isTorchOn : isTorchOn as bool,
      isPause: isPause == freezed ? _value.isPause : isPause as bool,
      isLoadingScaffold: isLoadingScaffold == freezed
          ? _value.isLoadingScaffold
          : isLoadingScaffold as bool,
      isLoadingNationalID: isLoadingNationalID == freezed
          ? _value.isLoadingNationalID
          : isLoadingNationalID as bool,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.isTorchOn = false,
      this.isPause = false,
      this.isLoadingScaffold = false,
      this.isLoadingNationalID = false})
      : assert(isTorchOn != null),
        assert(isPause != null),
        assert(isLoadingScaffold != null),
        assert(isLoadingNationalID != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isTorchOn;
  @JsonKey(defaultValue: false)
  @override
  final bool isPause;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingScaffold;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingNationalID;

  @override
  String toString() {
    return 'TransferScanQrCodeData(isTorchOn: $isTorchOn, isPause: $isPause, isLoadingScaffold: $isLoadingScaffold, isLoadingNationalID: $isLoadingNationalID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.isTorchOn, isTorchOn) ||
                const DeepCollectionEquality()
                    .equals(other.isTorchOn, isTorchOn)) &&
            (identical(other.isPause, isPause) ||
                const DeepCollectionEquality()
                    .equals(other.isPause, isPause)) &&
            (identical(other.isLoadingScaffold, isLoadingScaffold) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingScaffold, isLoadingScaffold)) &&
            (identical(other.isLoadingNationalID, isLoadingNationalID) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingNationalID, isLoadingNationalID)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isTorchOn) ^
      const DeepCollectionEquality().hash(isPause) ^
      const DeepCollectionEquality().hash(isLoadingScaffold) ^
      const DeepCollectionEquality().hash(isLoadingNationalID);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements TransferScanQrCodeData {
  const factory Data(
      {bool isTorchOn,
      bool isPause,
      bool isLoadingScaffold,
      bool isLoadingNationalID}) = _$Data;

  @override
  bool get isTorchOn;
  @override
  bool get isPause;
  @override
  bool get isLoadingScaffold;
  @override
  bool get isLoadingNationalID;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$TransferScanQrCodeStateTearOff {
  const _$TransferScanQrCodeStateTearOff();

// ignore: unused_element
  Initial initial(Data data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  Load call(Data data) {
    return Load(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferScanQrCodeState = _$TransferScanQrCodeStateTearOff();

/// @nodoc
mixin _$TransferScanQrCodeState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(Data data), {
    @required TResult initial(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(Data data), {
    TResult initial(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Load value), {
    @required TResult initial(Initial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Load value), {
    TResult initial(Initial value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TransferScanQrCodeStateCopyWith<TransferScanQrCodeState> get copyWith;
}

/// @nodoc
abstract class $TransferScanQrCodeStateCopyWith<$Res> {
  factory $TransferScanQrCodeStateCopyWith(TransferScanQrCodeState value,
          $Res Function(TransferScanQrCodeState) then) =
      _$TransferScanQrCodeStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$TransferScanQrCodeStateCopyWithImpl<$Res>
    implements $TransferScanQrCodeStateCopyWith<$Res> {
  _$TransferScanQrCodeStateCopyWithImpl(this._value, this._then);

  final TransferScanQrCodeState _value;
  // ignore: unused_field
  final $Res Function(TransferScanQrCodeState) _then;

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
    implements $TransferScanQrCodeStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$TransferScanQrCodeStateCopyWithImpl<$Res>
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
    return 'TransferScanQrCodeState.initial(data: $data)';
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
  TResult when<TResult extends Object>(
    TResult $default(Data data), {
    @required TResult initial(Data data),
  }) {
    assert(initial != null);
    assert($default != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(Data data), {
    TResult initial(Data data),
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
  TResult map<TResult extends Object>(
    TResult $default(Load value), {
    @required TResult initial(Initial value),
  }) {
    assert(initial != null);
    assert($default != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Load value), {
    TResult initial(Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TransferScanQrCodeState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadCopyWith<$Res>
    implements $TransferScanQrCodeStateCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadCopyWithImpl<$Res>
    extends _$TransferScanQrCodeStateCopyWithImpl<$Res>
    implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(Load _value, $Res Function(Load) _then)
      : super(_value, (v) => _then(v as Load));

  @override
  Load get _value => super._value as Load;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Load(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$Load implements Load {
  const _$Load(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'TransferScanQrCodeState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Load &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadCopyWith<Load> get copyWith =>
      _$LoadCopyWithImpl<Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(Data data), {
    @required TResult initial(Data data),
  }) {
    assert(initial != null);
    assert($default != null);
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(Data data), {
    TResult initial(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Load value), {
    @required TResult initial(Initial value),
  }) {
    assert(initial != null);
    assert($default != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Load value), {
    TResult initial(Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Load implements TransferScanQrCodeState {
  const factory Load(Data data) = _$Load;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadCopyWith<Load> get copyWith;
}
