// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_voucher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchVoucherStateDataTearOff {
  const _$SearchVoucherStateDataTearOff();

// ignore: unused_element
  Data call(
      {String search,
      List<FoodData> searchs,
      List<String> categoryId,
      List<String> foodTypeId,
      List<Category> categorys,
      List<VoucherType> voucherTypes,
      bool isTrending,
      String keyWord,
      double valueDistance}) {
    return Data(
      search: search,
      searchs: searchs,
      categoryId: categoryId,
      foodTypeId: foodTypeId,
      categorys: categorys,
      voucherTypes: voucherTypes,
      isTrending: isTrending,
      keyWord: keyWord,
      valueDistance: valueDistance,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchVoucherStateData = _$SearchVoucherStateDataTearOff();

/// @nodoc
mixin _$SearchVoucherStateData {
  String get search;
  List<FoodData> get searchs;
  List<String> get categoryId;
  List<String> get foodTypeId;
  List<Category> get categorys;
  List<VoucherType> get voucherTypes;
  bool get isTrending;
  String get keyWord;
  double get valueDistance;

  @JsonKey(ignore: true)
  $SearchVoucherStateDataCopyWith<SearchVoucherStateData> get copyWith;
}

/// @nodoc
abstract class $SearchVoucherStateDataCopyWith<$Res> {
  factory $SearchVoucherStateDataCopyWith(SearchVoucherStateData value,
          $Res Function(SearchVoucherStateData) then) =
      _$SearchVoucherStateDataCopyWithImpl<$Res>;
  $Res call(
      {String search,
      List<FoodData> searchs,
      List<String> categoryId,
      List<String> foodTypeId,
      List<Category> categorys,
      List<VoucherType> voucherTypes,
      bool isTrending,
      String keyWord,
      double valueDistance});
}

/// @nodoc
class _$SearchVoucherStateDataCopyWithImpl<$Res>
    implements $SearchVoucherStateDataCopyWith<$Res> {
  _$SearchVoucherStateDataCopyWithImpl(this._value, this._then);

  final SearchVoucherStateData _value;
  // ignore: unused_field
  final $Res Function(SearchVoucherStateData) _then;

  @override
  $Res call({
    Object search = freezed,
    Object searchs = freezed,
    Object categoryId = freezed,
    Object foodTypeId = freezed,
    Object categorys = freezed,
    Object voucherTypes = freezed,
    Object isTrending = freezed,
    Object keyWord = freezed,
    Object valueDistance = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed ? _value.search : search as String,
      searchs: searchs == freezed ? _value.searchs : searchs as List<FoodData>,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId as List<String>,
      foodTypeId: foodTypeId == freezed
          ? _value.foodTypeId
          : foodTypeId as List<String>,
      categorys:
          categorys == freezed ? _value.categorys : categorys as List<Category>,
      voucherTypes: voucherTypes == freezed
          ? _value.voucherTypes
          : voucherTypes as List<VoucherType>,
      isTrending:
          isTrending == freezed ? _value.isTrending : isTrending as bool,
      keyWord: keyWord == freezed ? _value.keyWord : keyWord as String,
      valueDistance: valueDistance == freezed
          ? _value.valueDistance
          : valueDistance as double,
    ));
  }
}

/// @nodoc
abstract class $DataCopyWith<$Res>
    implements $SearchVoucherStateDataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String search,
      List<FoodData> searchs,
      List<String> categoryId,
      List<String> foodTypeId,
      List<Category> categorys,
      List<VoucherType> voucherTypes,
      bool isTrending,
      String keyWord,
      double valueDistance});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$SearchVoucherStateDataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object search = freezed,
    Object searchs = freezed,
    Object categoryId = freezed,
    Object foodTypeId = freezed,
    Object categorys = freezed,
    Object voucherTypes = freezed,
    Object isTrending = freezed,
    Object keyWord = freezed,
    Object valueDistance = freezed,
  }) {
    return _then(Data(
      search: search == freezed ? _value.search : search as String,
      searchs: searchs == freezed ? _value.searchs : searchs as List<FoodData>,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId as List<String>,
      foodTypeId: foodTypeId == freezed
          ? _value.foodTypeId
          : foodTypeId as List<String>,
      categorys:
          categorys == freezed ? _value.categorys : categorys as List<Category>,
      voucherTypes: voucherTypes == freezed
          ? _value.voucherTypes
          : voucherTypes as List<VoucherType>,
      isTrending:
          isTrending == freezed ? _value.isTrending : isTrending as bool,
      keyWord: keyWord == freezed ? _value.keyWord : keyWord as String,
      valueDistance: valueDistance == freezed
          ? _value.valueDistance
          : valueDistance as double,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(
      {this.search,
      this.searchs,
      this.categoryId,
      this.foodTypeId,
      this.categorys,
      this.voucherTypes,
      this.isTrending,
      this.keyWord,
      this.valueDistance});

  @override
  final String search;
  @override
  final List<FoodData> searchs;
  @override
  final List<String> categoryId;
  @override
  final List<String> foodTypeId;
  @override
  final List<Category> categorys;
  @override
  final List<VoucherType> voucherTypes;
  @override
  final bool isTrending;
  @override
  final String keyWord;
  @override
  final double valueDistance;

  @override
  String toString() {
    return 'SearchVoucherStateData(search: $search, searchs: $searchs, categoryId: $categoryId, foodTypeId: $foodTypeId, categorys: $categorys, voucherTypes: $voucherTypes, isTrending: $isTrending, keyWord: $keyWord, valueDistance: $valueDistance)';
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
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.foodTypeId, foodTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.foodTypeId, foodTypeId)) &&
            (identical(other.categorys, categorys) ||
                const DeepCollectionEquality()
                    .equals(other.categorys, categorys)) &&
            (identical(other.voucherTypes, voucherTypes) ||
                const DeepCollectionEquality()
                    .equals(other.voucherTypes, voucherTypes)) &&
            (identical(other.isTrending, isTrending) ||
                const DeepCollectionEquality()
                    .equals(other.isTrending, isTrending)) &&
            (identical(other.keyWord, keyWord) ||
                const DeepCollectionEquality()
                    .equals(other.keyWord, keyWord)) &&
            (identical(other.valueDistance, valueDistance) ||
                const DeepCollectionEquality()
                    .equals(other.valueDistance, valueDistance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(searchs) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(foodTypeId) ^
      const DeepCollectionEquality().hash(categorys) ^
      const DeepCollectionEquality().hash(voucherTypes) ^
      const DeepCollectionEquality().hash(isTrending) ^
      const DeepCollectionEquality().hash(keyWord) ^
      const DeepCollectionEquality().hash(valueDistance);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);
}

abstract class Data implements SearchVoucherStateData {
  const factory Data(
      {String search,
      List<FoodData> searchs,
      List<String> categoryId,
      List<String> foodTypeId,
      List<Category> categorys,
      List<VoucherType> voucherTypes,
      bool isTrending,
      String keyWord,
      double valueDistance}) = _$Data;

  @override
  String get search;
  @override
  List<FoodData> get searchs;
  @override
  List<String> get categoryId;
  @override
  List<String> get foodTypeId;
  @override
  List<Category> get categorys;
  @override
  List<VoucherType> get voucherTypes;
  @override
  bool get isTrending;
  @override
  String get keyWord;
  @override
  double get valueDistance;
  @override
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
class _$SearchVoucherStateTearOff {
  const _$SearchVoucherStateTearOff();

// ignore: unused_element
  Initial init(SearchVoucherStateData data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  ListVoucherData search(SearchVoucherStateData data) {
    return ListVoucherData(
      data,
    );
  }

// ignore: unused_element
  ListCategoryData listCategory(SearchVoucherStateData data) {
    return ListCategoryData(
      data,
    );
  }

// ignore: unused_element
  ListVoucherTyeData listVoucher(SearchVoucherStateData data) {
    return ListVoucherTyeData(
      data,
    );
  }

// ignore: unused_element
  ListKeyWordData keyWord(SearchVoucherStateData data) {
    return ListKeyWordData(
      data,
    );
  }

// ignore: unused_element
  ListValueDistanceData valueDistance(SearchVoucherStateData data) {
    return ListValueDistanceData(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchVoucherState = _$SearchVoucherStateTearOff();

/// @nodoc
mixin _$SearchVoucherState {
  SearchVoucherStateData get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SearchVoucherStateCopyWith<SearchVoucherState> get copyWith;
}

/// @nodoc
abstract class $SearchVoucherStateCopyWith<$Res> {
  factory $SearchVoucherStateCopyWith(
          SearchVoucherState value, $Res Function(SearchVoucherState) then) =
      _$SearchVoucherStateCopyWithImpl<$Res>;
  $Res call({SearchVoucherStateData data});

  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchVoucherStateCopyWithImpl<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  _$SearchVoucherStateCopyWithImpl(this._value, this._then);

  final SearchVoucherState _value;
  // ignore: unused_field
  final $Res Function(SearchVoucherState) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $SearchVoucherStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({SearchVoucherStateData data});

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SearchVoucherStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial(this.data) : assert(data != null);

  @override
  final SearchVoucherStateData data;

  @override
  String toString() {
    return 'SearchVoucherState.init(data: $data)';
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
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
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
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchVoucherState {
  const factory Initial(SearchVoucherStateData data) = _$Initial;

  @override
  SearchVoucherStateData get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $ListVoucherDataCopyWith<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  factory $ListVoucherDataCopyWith(
          ListVoucherData value, $Res Function(ListVoucherData) then) =
      _$ListVoucherDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchVoucherStateData data});

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListVoucherDataCopyWithImpl<$Res>
    extends _$SearchVoucherStateCopyWithImpl<$Res>
    implements $ListVoucherDataCopyWith<$Res> {
  _$ListVoucherDataCopyWithImpl(
      ListVoucherData _value, $Res Function(ListVoucherData) _then)
      : super(_value, (v) => _then(v as ListVoucherData));

  @override
  ListVoucherData get _value => super._value as ListVoucherData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListVoucherData(
      data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }
}

/// @nodoc
class _$ListVoucherData implements ListVoucherData {
  const _$ListVoucherData(this.data) : assert(data != null);

  @override
  final SearchVoucherStateData data;

  @override
  String toString() {
    return 'SearchVoucherState.search(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListVoucherData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListVoucherDataCopyWith<ListVoucherData> get copyWith =>
      _$ListVoucherDataCopyWithImpl<ListVoucherData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return search(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class ListVoucherData implements SearchVoucherState {
  const factory ListVoucherData(SearchVoucherStateData data) =
      _$ListVoucherData;

  @override
  SearchVoucherStateData get data;
  @override
  @JsonKey(ignore: true)
  $ListVoucherDataCopyWith<ListVoucherData> get copyWith;
}

/// @nodoc
abstract class $ListCategoryDataCopyWith<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  factory $ListCategoryDataCopyWith(
          ListCategoryData value, $Res Function(ListCategoryData) then) =
      _$ListCategoryDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchVoucherStateData data});

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListCategoryDataCopyWithImpl<$Res>
    extends _$SearchVoucherStateCopyWithImpl<$Res>
    implements $ListCategoryDataCopyWith<$Res> {
  _$ListCategoryDataCopyWithImpl(
      ListCategoryData _value, $Res Function(ListCategoryData) _then)
      : super(_value, (v) => _then(v as ListCategoryData));

  @override
  ListCategoryData get _value => super._value as ListCategoryData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListCategoryData(
      data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }
}

/// @nodoc
class _$ListCategoryData implements ListCategoryData {
  const _$ListCategoryData(this.data) : assert(data != null);

  @override
  final SearchVoucherStateData data;

  @override
  String toString() {
    return 'SearchVoucherState.listCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListCategoryData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListCategoryDataCopyWith<ListCategoryData> get copyWith =>
      _$ListCategoryDataCopyWithImpl<ListCategoryData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listCategory != null) {
      return listCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listCategory != null) {
      return listCategory(this);
    }
    return orElse();
  }
}

abstract class ListCategoryData implements SearchVoucherState {
  const factory ListCategoryData(SearchVoucherStateData data) =
      _$ListCategoryData;

  @override
  SearchVoucherStateData get data;
  @override
  @JsonKey(ignore: true)
  $ListCategoryDataCopyWith<ListCategoryData> get copyWith;
}

/// @nodoc
abstract class $ListVoucherTyeDataCopyWith<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  factory $ListVoucherTyeDataCopyWith(
          ListVoucherTyeData value, $Res Function(ListVoucherTyeData) then) =
      _$ListVoucherTyeDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchVoucherStateData data});

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListVoucherTyeDataCopyWithImpl<$Res>
    extends _$SearchVoucherStateCopyWithImpl<$Res>
    implements $ListVoucherTyeDataCopyWith<$Res> {
  _$ListVoucherTyeDataCopyWithImpl(
      ListVoucherTyeData _value, $Res Function(ListVoucherTyeData) _then)
      : super(_value, (v) => _then(v as ListVoucherTyeData));

  @override
  ListVoucherTyeData get _value => super._value as ListVoucherTyeData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListVoucherTyeData(
      data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }
}

/// @nodoc
class _$ListVoucherTyeData implements ListVoucherTyeData {
  const _$ListVoucherTyeData(this.data) : assert(data != null);

  @override
  final SearchVoucherStateData data;

  @override
  String toString() {
    return 'SearchVoucherState.listVoucher(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListVoucherTyeData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListVoucherTyeDataCopyWith<ListVoucherTyeData> get copyWith =>
      _$ListVoucherTyeDataCopyWithImpl<ListVoucherTyeData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listVoucher(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listVoucher != null) {
      return listVoucher(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listVoucher != null) {
      return listVoucher(this);
    }
    return orElse();
  }
}

abstract class ListVoucherTyeData implements SearchVoucherState {
  const factory ListVoucherTyeData(SearchVoucherStateData data) =
      _$ListVoucherTyeData;

  @override
  SearchVoucherStateData get data;
  @override
  @JsonKey(ignore: true)
  $ListVoucherTyeDataCopyWith<ListVoucherTyeData> get copyWith;
}

/// @nodoc
abstract class $ListKeyWordDataCopyWith<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  factory $ListKeyWordDataCopyWith(
          ListKeyWordData value, $Res Function(ListKeyWordData) then) =
      _$ListKeyWordDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchVoucherStateData data});

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListKeyWordDataCopyWithImpl<$Res>
    extends _$SearchVoucherStateCopyWithImpl<$Res>
    implements $ListKeyWordDataCopyWith<$Res> {
  _$ListKeyWordDataCopyWithImpl(
      ListKeyWordData _value, $Res Function(ListKeyWordData) _then)
      : super(_value, (v) => _then(v as ListKeyWordData));

  @override
  ListKeyWordData get _value => super._value as ListKeyWordData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListKeyWordData(
      data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }
}

/// @nodoc
class _$ListKeyWordData implements ListKeyWordData {
  const _$ListKeyWordData(this.data) : assert(data != null);

  @override
  final SearchVoucherStateData data;

  @override
  String toString() {
    return 'SearchVoucherState.keyWord(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListKeyWordData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListKeyWordDataCopyWith<ListKeyWordData> get copyWith =>
      _$ListKeyWordDataCopyWithImpl<ListKeyWordData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return keyWord(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (keyWord != null) {
      return keyWord(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return keyWord(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (keyWord != null) {
      return keyWord(this);
    }
    return orElse();
  }
}

abstract class ListKeyWordData implements SearchVoucherState {
  const factory ListKeyWordData(SearchVoucherStateData data) =
      _$ListKeyWordData;

  @override
  SearchVoucherStateData get data;
  @override
  @JsonKey(ignore: true)
  $ListKeyWordDataCopyWith<ListKeyWordData> get copyWith;
}

/// @nodoc
abstract class $ListValueDistanceDataCopyWith<$Res>
    implements $SearchVoucherStateCopyWith<$Res> {
  factory $ListValueDistanceDataCopyWith(ListValueDistanceData value,
          $Res Function(ListValueDistanceData) then) =
      _$ListValueDistanceDataCopyWithImpl<$Res>;
  @override
  $Res call({SearchVoucherStateData data});

  @override
  $SearchVoucherStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ListValueDistanceDataCopyWithImpl<$Res>
    extends _$SearchVoucherStateCopyWithImpl<$Res>
    implements $ListValueDistanceDataCopyWith<$Res> {
  _$ListValueDistanceDataCopyWithImpl(
      ListValueDistanceData _value, $Res Function(ListValueDistanceData) _then)
      : super(_value, (v) => _then(v as ListValueDistanceData));

  @override
  ListValueDistanceData get _value => super._value as ListValueDistanceData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListValueDistanceData(
      data == freezed ? _value.data : data as SearchVoucherStateData,
    ));
  }
}

/// @nodoc
class _$ListValueDistanceData implements ListValueDistanceData {
  const _$ListValueDistanceData(this.data) : assert(data != null);

  @override
  final SearchVoucherStateData data;

  @override
  String toString() {
    return 'SearchVoucherState.valueDistance(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListValueDistanceData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListValueDistanceDataCopyWith<ListValueDistanceData> get copyWith =>
      _$ListValueDistanceDataCopyWithImpl<ListValueDistanceData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult init(SearchVoucherStateData data),
    @required TResult search(SearchVoucherStateData data),
    @required TResult listCategory(SearchVoucherStateData data),
    @required TResult listVoucher(SearchVoucherStateData data),
    @required TResult keyWord(SearchVoucherStateData data),
    @required TResult valueDistance(SearchVoucherStateData data),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return valueDistance(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult init(SearchVoucherStateData data),
    TResult search(SearchVoucherStateData data),
    TResult listCategory(SearchVoucherStateData data),
    TResult listVoucher(SearchVoucherStateData data),
    TResult keyWord(SearchVoucherStateData data),
    TResult valueDistance(SearchVoucherStateData data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueDistance != null) {
      return valueDistance(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult init(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return valueDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult init(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (valueDistance != null) {
      return valueDistance(this);
    }
    return orElse();
  }
}

abstract class ListValueDistanceData implements SearchVoucherState {
  const factory ListValueDistanceData(SearchVoucherStateData data) =
      _$ListValueDistanceData;

  @override
  SearchVoucherStateData get data;
  @override
  @JsonKey(ignore: true)
  $ListValueDistanceDataCopyWith<ListValueDistanceData> get copyWith;
}
