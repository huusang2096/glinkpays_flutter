// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HistoryStateDataTearOff {
  const _$HistoryStateDataTearOff();

// ignore: unused_element
  Data call(
      {HistoryResponse historyResponse,
      List<History> listHistory,
      List<String> listTransactionType,
      String stringType,
      bool isLoading}) {
    return Data(
      historyResponse: historyResponse,
      listHistory: listHistory,
      listTransactionType: listTransactionType,
      stringType: stringType,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HistoryStateData = _$HistoryStateDataTearOff();

/// @nodoc
mixin _$HistoryStateData {
  HistoryResponse get historyResponse;
  List<History> get listHistory;
  List<String> get listTransactionType;
  String get stringType;
  bool get isLoading;

  @JsonKey(ignore: true)
  $HistoryStateDataCopyWith<HistoryStateData> get copyWith;
}

/// @nodoc
abstract class $HistoryStateDataCopyWith<$Res> {
  factory $HistoryStateDataCopyWith(
          HistoryStateData value, $Res Function(HistoryStateData) then) =
      _$HistoryStateDataCopyWithImpl<$Res>;
  $Res call(
      {HistoryResponse historyResponse,
      List<History> listHistory,
      List<String> listTransactionType,
      String stringType,
      bool isLoading});
}

/// @nodoc
class _$HistoryStateDataCopyWithImpl<$Res>
    implements $HistoryStateDataCopyWith<$Res> {
  _$HistoryStateDataCopyWithImpl(this._value, this._then);

  final HistoryStateData _value;
  // ignore: unused_field
  final $Res Function(HistoryStateData) _then;

  @override
  $Res call({
    Object historyResponse = freezed,
    Object listHistory = freezed,
    Object listTransactionType = freezed,
    Object stringType = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      historyResponse: historyResponse == freezed
          ? _value.historyResponse
          : historyResponse as HistoryResponse,
      listHistory: listHistory == freezed
          ? _value.listHistory
          : listHistory as List<History>,
      listTransactionType: listTransactionType == freezed
          ? _value.listTransactionType
          : listTransactionType as List<String>,
      stringType:
          stringType == freezed ? _value.stringType : stringType as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $HistoryStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {HistoryResponse historyResponse,
      List<History> listHistory,
      List<String> listTransactionType,
      String stringType,
      bool isLoading});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$HistoryStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object historyResponse = freezed,
    Object listHistory = freezed,
    Object listTransactionType = freezed,
    Object stringType = freezed,
    Object isLoading = freezed,
  }) {
    return _then(Data(
      historyResponse: historyResponse == freezed
          ? _value.historyResponse
          : historyResponse as HistoryResponse,
      listHistory: listHistory == freezed
          ? _value.listHistory
          : listHistory as List<History>,
      listTransactionType: listTransactionType == freezed
          ? _value.listTransactionType
          : listTransactionType as List<String>,
      stringType:
          stringType == freezed ? _value.stringType : stringType as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.historyResponse,
      this.listHistory,
      this.listTransactionType,
      this.stringType,
      this.isLoading});

  @override
  final HistoryResponse historyResponse;
  @override
  final List<History> listHistory;
  @override
  final List<String> listTransactionType;
  @override
  final String stringType;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'HistoryStateData(historyResponse: $historyResponse, listHistory: $listHistory, listTransactionType: $listTransactionType, stringType: $stringType, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.historyResponse, historyResponse) ||
                const DeepCollectionEquality()
                    .equals(other.historyResponse, historyResponse)) &&
            (identical(other.listHistory, listHistory) ||
                const DeepCollectionEquality()
                    .equals(other.listHistory, listHistory)) &&
            (identical(other.listTransactionType, listTransactionType) ||
                const DeepCollectionEquality()
                    .equals(other.listTransactionType, listTransactionType)) &&
            (identical(other.stringType, stringType) ||
                const DeepCollectionEquality()
                    .equals(other.stringType, stringType)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(historyResponse) ^
      const DeepCollectionEquality().hash(listHistory) ^
      const DeepCollectionEquality().hash(listTransactionType) ^
      const DeepCollectionEquality().hash(stringType) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements HistoryStateData {
  const factory Data(
      {HistoryResponse historyResponse,
      List<History> listHistory,
      List<String> listTransactionType,
      String stringType,
      bool isLoading}) = _$Data;

  @override
  HistoryResponse get historyResponse;
  @override
  List<History> get listHistory;
  @override
  List<String> get listTransactionType;
  @override
  String get stringType;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$HistoryStateTearOff {
  const _$HistoryStateTearOff();

// ignore: unused_element
  Initial init(Data data) {
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
  ListHistoryData listHistory(Data data) {
    return ListHistoryData(
      data,
    );
  }

// ignore: unused_element
  ListTransactionType listTransactionType(Data data) {
    return ListTransactionType(
      data,
    );
  }

// ignore: unused_element
  FilterTransactionTypeData filterTransactionType(Data data) {
    return FilterTransactionTypeData(
      data,
    );
  }

// ignore: unused_element
  RefreshHistoryPageData refreshHistoryPage(Data data) {
    return RefreshHistoryPageData(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HistoryState = _$HistoryStateTearOff();

/// @nodoc
mixin _$HistoryState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;

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
abstract class $InitialCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
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
    return 'HistoryState.init(data: $data)';
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
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initial implements HistoryState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$HistoryStateCopyWithImpl<$Res>
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
    return 'HistoryState.loading(data: $data)';
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
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
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
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HistoryState {
  const factory Loading(Data data) = _$Loading;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith;
}

/// @nodoc
abstract class $ListHistoryDataCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory $ListHistoryDataCopyWith(
          ListHistoryData value, $Res Function(ListHistoryData) then) =
      _$ListHistoryDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListHistoryDataCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $ListHistoryDataCopyWith<$Res> {
  _$ListHistoryDataCopyWithImpl(
      ListHistoryData _value, $Res Function(ListHistoryData) _then)
      : super(_value, (v) => _then(v as ListHistoryData));

  @override
  ListHistoryData get _value => super._value as ListHistoryData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListHistoryData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListHistoryData implements ListHistoryData {
  const _$ListHistoryData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'HistoryState.listHistory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListHistoryData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListHistoryDataCopyWith<ListHistoryData> get copyWith =>
      _$ListHistoryDataCopyWithImpl<ListHistoryData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return listHistory(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listHistory != null) {
      return listHistory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return listHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listHistory != null) {
      return listHistory(this);
    }
    return orElse();
  }
}

abstract class ListHistoryData implements HistoryState {
  const factory ListHistoryData(Data data) = _$ListHistoryData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListHistoryDataCopyWith<ListHistoryData> get copyWith;
}

/// @nodoc
abstract class $ListTransactionTypeCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory $ListTransactionTypeCopyWith(
          ListTransactionType value, $Res Function(ListTransactionType) then) =
      _$ListTransactionTypeCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListTransactionTypeCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $ListTransactionTypeCopyWith<$Res> {
  _$ListTransactionTypeCopyWithImpl(
      ListTransactionType _value, $Res Function(ListTransactionType) _then)
      : super(_value, (v) => _then(v as ListTransactionType));

  @override
  ListTransactionType get _value => super._value as ListTransactionType;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListTransactionType(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListTransactionType implements ListTransactionType {
  const _$ListTransactionType(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'HistoryState.listTransactionType(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTransactionType &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListTransactionTypeCopyWith<ListTransactionType> get copyWith =>
      _$ListTransactionTypeCopyWithImpl<ListTransactionType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return listTransactionType(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTransactionType != null) {
      return listTransactionType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return listTransactionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listTransactionType != null) {
      return listTransactionType(this);
    }
    return orElse();
  }
}

abstract class ListTransactionType implements HistoryState {
  const factory ListTransactionType(Data data) = _$ListTransactionType;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListTransactionTypeCopyWith<ListTransactionType> get copyWith;
}

/// @nodoc
abstract class $FilterTransactionTypeDataCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory $FilterTransactionTypeDataCopyWith(FilterTransactionTypeData value,
          $Res Function(FilterTransactionTypeData) then) =
      _$FilterTransactionTypeDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$FilterTransactionTypeDataCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $FilterTransactionTypeDataCopyWith<$Res> {
  _$FilterTransactionTypeDataCopyWithImpl(FilterTransactionTypeData _value,
      $Res Function(FilterTransactionTypeData) _then)
      : super(_value, (v) => _then(v as FilterTransactionTypeData));

  @override
  FilterTransactionTypeData get _value =>
      super._value as FilterTransactionTypeData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(FilterTransactionTypeData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$FilterTransactionTypeData implements FilterTransactionTypeData {
  const _$FilterTransactionTypeData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'HistoryState.filterTransactionType(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilterTransactionTypeData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $FilterTransactionTypeDataCopyWith<FilterTransactionTypeData> get copyWith =>
      _$FilterTransactionTypeDataCopyWithImpl<FilterTransactionTypeData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return filterTransactionType(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filterTransactionType != null) {
      return filterTransactionType(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return filterTransactionType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (filterTransactionType != null) {
      return filterTransactionType(this);
    }
    return orElse();
  }
}

abstract class FilterTransactionTypeData implements HistoryState {
  const factory FilterTransactionTypeData(Data data) =
      _$FilterTransactionTypeData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $FilterTransactionTypeDataCopyWith<FilterTransactionTypeData> get copyWith;
}

/// @nodoc
abstract class $RefreshHistoryPageDataCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory $RefreshHistoryPageDataCopyWith(RefreshHistoryPageData value,
          $Res Function(RefreshHistoryPageData) then) =
      _$RefreshHistoryPageDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$RefreshHistoryPageDataCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements $RefreshHistoryPageDataCopyWith<$Res> {
  _$RefreshHistoryPageDataCopyWithImpl(RefreshHistoryPageData _value,
      $Res Function(RefreshHistoryPageData) _then)
      : super(_value, (v) => _then(v as RefreshHistoryPageData));

  @override
  RefreshHistoryPageData get _value => super._value as RefreshHistoryPageData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(RefreshHistoryPageData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$RefreshHistoryPageData implements RefreshHistoryPageData {
  const _$RefreshHistoryPageData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'HistoryState.refreshHistoryPage(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RefreshHistoryPageData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $RefreshHistoryPageDataCopyWith<RefreshHistoryPageData> get copyWith =>
      _$RefreshHistoryPageDataCopyWithImpl<RefreshHistoryPageData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(Data data),
    @required TResult loading(Data data),
    @required TResult listHistory(Data data),
    @required TResult listTransactionType(Data data),
    @required TResult filterTransactionType(Data data),
    @required TResult refreshHistoryPage(Data data),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return refreshHistoryPage(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(Data data),
    TResult loading(Data data),
    TResult listHistory(Data data),
    TResult listTransactionType(Data data),
    TResult filterTransactionType(Data data),
    TResult refreshHistoryPage(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshHistoryPage != null) {
      return refreshHistoryPage(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult loading(Loading value),
    @required TResult listHistory(ListHistoryData value),
    @required TResult listTransactionType(ListTransactionType value),
    @required TResult filterTransactionType(FilterTransactionTypeData value),
    @required TResult refreshHistoryPage(RefreshHistoryPageData value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(listHistory != null);
    assert(listTransactionType != null);
    assert(filterTransactionType != null);
    assert(refreshHistoryPage != null);
    return refreshHistoryPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult loading(Loading value),
    TResult listHistory(ListHistoryData value),
    TResult listTransactionType(ListTransactionType value),
    TResult filterTransactionType(FilterTransactionTypeData value),
    TResult refreshHistoryPage(RefreshHistoryPageData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshHistoryPage != null) {
      return refreshHistoryPage(this);
    }
    return orElse();
  }
}

abstract class RefreshHistoryPageData implements HistoryState {
  const factory RefreshHistoryPageData(Data data) = _$RefreshHistoryPageData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $RefreshHistoryPageDataCopyWith<RefreshHistoryPageData> get copyWith;
}
