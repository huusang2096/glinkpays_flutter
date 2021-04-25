// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchStateDataTearOff {
  const _$SearchStateDataTearOff();

// ignore: unused_element
  Data call(
      {String search,
      List<Restaurant> searchs,
      Position position,
      int distance = 5}) {
    return Data(
      search: search,
      searchs: searchs,
      position: position,
      distance: distance,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchStateData = _$SearchStateDataTearOff();

/// @nodoc
mixin _$SearchStateData {
  String get search;
  List<Restaurant> get searchs;
  Position get position;
  int get distance;

  @JsonKey(ignore: true)
  $SearchStateDataCopyWith<SearchStateData> get copyWith;
}

/// @nodoc
abstract class $SearchStateDataCopyWith<$Res> {
  factory $SearchStateDataCopyWith(
          SearchStateData value, $Res Function(SearchStateData) then) =
      _$SearchStateDataCopyWithImpl<$Res>;
  $Res call(
      {String search,
      List<Restaurant> searchs,
      Position position,
      int distance});
}

/// @nodoc
class _$SearchStateDataCopyWithImpl<$Res>
    implements $SearchStateDataCopyWith<$Res> {
  _$SearchStateDataCopyWithImpl(this._value, this._then);

  final SearchStateData _value;
  // ignore: unused_field
  final $Res Function(SearchStateData) _then;

  @override
  $Res call({
    Object search = freezed,
    Object searchs = freezed,
    Object position = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed ? _value.search : search as String,
      searchs:
          searchs == freezed ? _value.searchs : searchs as List<Restaurant>,
      position: position == freezed ? _value.position : position as Position,
      distance: distance == freezed ? _value.distance : distance as int,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res> implements $SearchStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String search,
      List<Restaurant> searchs,
      Position position,
      int distance});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$SearchStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object search = freezed,
    Object searchs = freezed,
    Object position = freezed,
    Object distance = freezed,
  }) {
    return _then(Data(
      search: search == freezed ? _value.search : search as String,
      searchs:
          searchs == freezed ? _value.searchs : searchs as List<Restaurant>,
      position: position == freezed ? _value.position : position as Position,
      distance: distance == freezed ? _value.distance : distance as int,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data({this.search, this.searchs, this.position, this.distance = 5})
      : assert(distance != null);

  @override
  final String search;
  @override
  final List<Restaurant> searchs;
  @override
  final Position position;
  @JsonKey(defaultValue: 5)
  @override
  final int distance;

  @override
  String toString() {
    return 'SearchStateData(search: $search, searchs: $searchs, position: $position, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.searchs, searchs) ||
                const DeepCollectionEquality()
                    .equals(other.searchs, searchs)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(searchs) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements SearchStateData {
  const factory Data(
      {String search,
      List<Restaurant> searchs,
      Position position,
      int distance}) = _$Data;

  @override
  String get search;
  @override
  List<Restaurant> get searchs;
  @override
  Position get position;
  @override
  int get distance;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  Initial init(SearchStateData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  PositionData position(SearchStateData data) {
    return PositionData(
      data,
    );
  }

// ignore: unused_element
  ListFoodData news(SearchStateData data) {
    return ListFoodData(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  SearchStateData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchStateData data),
    @required TResult position(SearchStateData data),
    @required TResult news(SearchStateData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchStateData data),
    TResult position(SearchStateData data),
    TResult news(SearchStateData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult position(PositionData value),
    @required TResult news(ListFoodData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult position(PositionData value),
    TResult news(ListFoodData value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call({SearchStateData data});

  $SearchStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as SearchStateData,
    ));
  }

  @override
  $SearchStateDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $SearchStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({SearchStateData data});

  @override
  $SearchStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as SearchStateData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final SearchStateData data;

  @override
  String toString() {
    return 'SearchState.init(data: $data)';
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
    @required TResult init(SearchStateData data),
    @required TResult position(SearchStateData data),
    @required TResult news(SearchStateData data),
  }) {
    assert(init != null);
    assert(position != null);
    assert(news != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchStateData data),
    TResult position(SearchStateData data),
    TResult news(SearchStateData data),
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
    @required TResult position(PositionData value),
    @required TResult news(ListFoodData value),
  }) {
    assert(init != null);
    assert(position != null);
    assert(news != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult position(PositionData value),
    TResult news(ListFoodData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial(SearchStateData data) = _$Initial;

  @override
  SearchStateData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $PositionDataCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $PositionDataCopyWith(
          PositionData value, $Res Function(PositionData) then) =
      _$PositionDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchStateData data});

  @override
  $SearchStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$PositionDataCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $PositionDataCopyWith<$Res> {
  _$PositionDataCopyWithImpl(
      PositionData _value, $Res Function(PositionData) _then)
      : super(_value, (v) => _then(v as PositionData));

  @override
  PositionData get _value => super._value as PositionData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(PositionData(
      data == freezed ? _value.data : data as SearchStateData,
    ));
  }
}

/// @nodoc
class _$PositionData implements PositionData {
  const _$PositionData(this.data) : assert(data != null);

  @override
  final SearchStateData data;

  @override
  String toString() {
    return 'SearchState.position(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PositionData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $PositionDataCopyWith<PositionData> get copyWith =>
      _$PositionDataCopyWithImpl<PositionData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchStateData data),
    @required TResult position(SearchStateData data),
    @required TResult news(SearchStateData data),
  }) {
    assert(init != null);
    assert(position != null);
    assert(news != null);
    return position(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchStateData data),
    TResult position(SearchStateData data),
    TResult news(SearchStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (position != null) {
      return position(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult position(PositionData value),
    @required TResult news(ListFoodData value),
  }) {
    assert(init != null);
    assert(position != null);
    assert(news != null);
    return position(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult position(PositionData value),
    TResult news(ListFoodData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (position != null) {
      return position(this);
    }
    return orElse();
  }
}

abstract class PositionData implements SearchState {
  const factory PositionData(SearchStateData data) = _$PositionData;

  @override
  SearchStateData get data;
  @override
  @JsonKey(ignore: true)
  $PositionDataCopyWith<PositionData> get copyWith;
}

/// @nodoc
abstract class $ListFoodDataCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $ListFoodDataCopyWith(
          ListFoodData value, $Res Function(ListFoodData) then) =
      _$ListFoodDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchStateData data});

  @override
  $SearchStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListFoodDataCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $ListFoodDataCopyWith<$Res> {
  _$ListFoodDataCopyWithImpl(
      ListFoodData _value, $Res Function(ListFoodData) _then)
      : super(_value, (v) => _then(v as ListFoodData));

  @override
  ListFoodData get _value => super._value as ListFoodData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListFoodData(
      data == freezed ? _value.data : data as SearchStateData,
    ));
  }
}

/// @nodoc
class _$ListFoodData implements ListFoodData {
  const _$ListFoodData(this.data) : assert(data != null);

  @override
  final SearchStateData data;

  @override
  String toString() {
    return 'SearchState.news(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListFoodData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListFoodDataCopyWith<ListFoodData> get copyWith =>
      _$ListFoodDataCopyWithImpl<ListFoodData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchStateData data),
    @required TResult position(SearchStateData data),
    @required TResult news(SearchStateData data),
  }) {
    assert(init != null);
    assert(position != null);
    assert(news != null);
    return news(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchStateData data),
    TResult position(SearchStateData data),
    TResult news(SearchStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (news != null) {
      return news(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult position(PositionData value),
    @required TResult news(ListFoodData value),
  }) {
    assert(init != null);
    assert(position != null);
    assert(news != null);
    return news(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult position(PositionData value),
    TResult news(ListFoodData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (news != null) {
      return news(this);
    }
    return orElse();
  }
}

abstract class ListFoodData implements SearchState {
  const factory ListFoodData(SearchStateData data) = _$ListFoodData;

  @override
  SearchStateData get data;
  @override
  @JsonKey(ignore: true)
  $ListFoodDataCopyWith<ListFoodData> get copyWith;
}
