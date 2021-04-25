// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transfer_select_voucher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransferSelectVoucherStateDataTearOff {
  const _$TransferSelectVoucherStateDataTearOff();

// ignore: unused_element
  Data call(
      {bool isLoading = false,
      bool isLoadingShimmer = false,
      @nullable MyVoucherOrder selectedItem,
      @nullable MyVoucherOrderResponse myVoucherResponse}) {
    return Data(
      isLoading: isLoading,
      isLoadingShimmer: isLoadingShimmer,
      selectedItem: selectedItem,
      myVoucherResponse: myVoucherResponse,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransferSelectVoucherStateData =
    _$TransferSelectVoucherStateDataTearOff();

/// @nodoc
mixin _$TransferSelectVoucherStateData {
  bool get isLoading;
  bool get isLoadingShimmer;
  @nullable
  MyVoucherOrder get selectedItem;
  @nullable
  MyVoucherOrderResponse get myVoucherResponse;

  @JsonKey(ignore: true)
  $TransferSelectVoucherStateDataCopyWith<TransferSelectVoucherStateData>
      get copyWith;
}

/// @nodoc
abstract class $TransferSelectVoucherStateDataCopyWith<$Res> {
  factory $TransferSelectVoucherStateDataCopyWith(
          TransferSelectVoucherStateData value,
          $Res Function(TransferSelectVoucherStateData) then) =
      _$TransferSelectVoucherStateDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isLoadingShimmer,
      @nullable MyVoucherOrder selectedItem,
      @nullable MyVoucherOrderResponse myVoucherResponse});
}

/// @nodoc
class _$TransferSelectVoucherStateDataCopyWithImpl<$Res>
    implements $TransferSelectVoucherStateDataCopyWith<$Res> {
  _$TransferSelectVoucherStateDataCopyWithImpl(this._value, this._then);

  final TransferSelectVoucherStateData _value;
  // ignore: unused_field
  final $Res Function(TransferSelectVoucherStateData) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isLoadingShimmer = freezed,
    Object selectedItem = freezed,
    Object myVoucherResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoadingShimmer: isLoadingShimmer == freezed
          ? _value.isLoadingShimmer
          : isLoadingShimmer as bool,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as MyVoucherOrder,
      myVoucherResponse: myVoucherResponse == freezed
          ? _value.myVoucherResponse
          : myVoucherResponse as MyVoucherOrderResponse,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $TransferSelectVoucherStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isLoadingShimmer,
      @nullable MyVoucherOrder selectedItem,
      @nullable MyVoucherOrderResponse myVoucherResponse});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$TransferSelectVoucherStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object isLoading = freezed,
    Object isLoadingShimmer = freezed,
    Object selectedItem = freezed,
    Object myVoucherResponse = freezed,
  }) {
    return _then(Data(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoadingShimmer: isLoadingShimmer == freezed
          ? _value.isLoadingShimmer
          : isLoadingShimmer as bool,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem as MyVoucherOrder,
      myVoucherResponse: myVoucherResponse == freezed
          ? _value.myVoucherResponse
          : myVoucherResponse as MyVoucherOrderResponse,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.isLoading = false,
      this.isLoadingShimmer = false,
      @nullable this.selectedItem,
      @nullable this.myVoucherResponse})
      : assert(isLoading != null),
        assert(isLoadingShimmer != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadingShimmer;
  @override
  @nullable
  final MyVoucherOrder selectedItem;
  @override
  @nullable
  final MyVoucherOrderResponse myVoucherResponse;

  @override
  String toString() {
    return 'TransferSelectVoucherStateData(isLoading: $isLoading, isLoadingShimmer: $isLoadingShimmer, selectedItem: $selectedItem, myVoucherResponse: $myVoucherResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoadingShimmer, isLoadingShimmer) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingShimmer, isLoadingShimmer)) &&
            (identical(other.selectedItem, selectedItem) ||
                const DeepCollectionEquality()
                    .equals(other.selectedItem, selectedItem)) &&
            (identical(other.myVoucherResponse, myVoucherResponse) ||
                const DeepCollectionEquality()
                    .equals(other.myVoucherResponse, myVoucherResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoadingShimmer) ^
      const DeepCollectionEquality().hash(selectedItem) ^
      const DeepCollectionEquality().hash(myVoucherResponse);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements TransferSelectVoucherStateData {
  const factory Data(
      {bool isLoading,
      bool isLoadingShimmer,
      @nullable MyVoucherOrder selectedItem,
      @nullable MyVoucherOrderResponse myVoucherResponse}) = _$Data;

  @override
  bool get isLoading;
  @override
  bool get isLoadingShimmer;
  @override
  @nullable
  MyVoucherOrder get selectedItem;
  @override
  @nullable
  MyVoucherOrderResponse get myVoucherResponse;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$TransferSelectVoucherStateTearOff {
  const _$TransferSelectVoucherStateTearOff();

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
const $TransferSelectVoucherState = _$TransferSelectVoucherStateTearOff();

/// @nodoc
mixin _$TransferSelectVoucherState {
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
  $TransferSelectVoucherStateCopyWith<TransferSelectVoucherState> get copyWith;
}

/// @nodoc
abstract class $TransferSelectVoucherStateCopyWith<$Res> {
  factory $TransferSelectVoucherStateCopyWith(TransferSelectVoucherState value,
          $Res Function(TransferSelectVoucherState) then) =
      _$TransferSelectVoucherStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$TransferSelectVoucherStateCopyWithImpl<$Res>
    implements $TransferSelectVoucherStateCopyWith<$Res> {
  _$TransferSelectVoucherStateCopyWithImpl(this._value, this._then);

  final TransferSelectVoucherState _value;
  // ignore: unused_field
  final $Res Function(TransferSelectVoucherState) _then;

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
    implements $TransferSelectVoucherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$TransferSelectVoucherStateCopyWithImpl<$Res>
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
    return 'TransferSelectVoucherState.initial(data: $data)';
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

abstract class Initial implements TransferSelectVoucherState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $TransferSelectVoucherStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$TransferSelectVoucherStateCopyWithImpl<$Res>
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
    return 'TransferSelectVoucherState.loading(data: $data)';
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

abstract class Loading implements TransferSelectVoucherState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $TransferSelectVoucherStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    extends _$TransferSelectVoucherStateCopyWithImpl<$Res>
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
    return 'TransferSelectVoucherState.loaded(data: $data)';
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

abstract class Loaded implements TransferSelectVoucherState {
  const factory Loaded(Data data) = _$Loaded;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}
