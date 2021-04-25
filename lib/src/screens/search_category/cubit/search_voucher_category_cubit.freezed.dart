// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_voucher_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchVoucherCategoryStateDataTearOff {
  const _$SearchVoucherCategoryStateDataTearOff();

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
const $SearchVoucherCategoryStateData =
    _$SearchVoucherCategoryStateDataTearOff();

/// @nodoc
mixin _$SearchVoucherCategoryStateData {
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
  $SearchVoucherCategoryStateDataCopyWith<SearchVoucherCategoryStateData>
      get copyWith;
}

/// @nodoc
abstract class $SearchVoucherCategoryStateDataCopyWith<$Res> {
  factory $SearchVoucherCategoryStateDataCopyWith(
          SearchVoucherCategoryStateData value,
          $Res Function(SearchVoucherCategoryStateData) then) =
      _$SearchVoucherCategoryStateDataCopyWithImpl<$Res>;
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
class _$SearchVoucherCategoryStateDataCopyWithImpl<$Res>
    implements $SearchVoucherCategoryStateDataCopyWith<$Res> {
  _$SearchVoucherCategoryStateDataCopyWithImpl(this._value, this._then);

  final SearchVoucherCategoryStateData _value;
  // ignore: unused_field
  final $Res Function(SearchVoucherCategoryStateData) _then;

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
    implements $SearchVoucherCategoryStateDataCopyWith<$Res> {
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
    extends _$SearchVoucherCategoryStateDataCopyWithImpl<$Res>
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
    return 'SearchVoucherCategoryStateData(search: $search, searchs: $searchs, categoryId: $categoryId, foodTypeId: $foodTypeId, categorys: $categorys, voucherTypes: $voucherTypes, isTrending: $isTrending, keyWord: $keyWord, valueDistance: $valueDistance)';
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

abstract class Data implements SearchVoucherCategoryStateData {
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
class _$SearchVoucherCategoryStateTearOff {
  const _$SearchVoucherCategoryStateTearOff();

// ignore: unused_element
  Initial initial(Data data) {
    return Initial(
      data,
    );
  }

// ignore: unused_element
  ListVoucherData search(Data data) {
    return ListVoucherData(
      data,
    );
  }

// ignore: unused_element
  ListCategoryData listCategory(Data data) {
    return ListCategoryData(
      data,
    );
  }

// ignore: unused_element
  ListVoucherTyeData listVoucher(Data data) {
    return ListVoucherTyeData(
      data,
    );
  }

// ignore: unused_element
  ListVoucherCategoryData listVoucherCategory(Data data) {
    return ListVoucherCategoryData(
      data,
    );
  }

// ignore: unused_element
  ListKeyWordData keyWord(Data data) {
    return ListKeyWordData(
      data,
    );
  }

// ignore: unused_element
  ListValueDistanceData valueDistance(Data data) {
    return ListValueDistanceData(
      data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchVoucherCategoryState = _$SearchVoucherCategoryStateTearOff();

/// @nodoc
mixin _$SearchVoucherCategoryState {
  Data get data;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SearchVoucherCategoryStateCopyWith<SearchVoucherCategoryState> get copyWith;
}

/// @nodoc
abstract class $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $SearchVoucherCategoryStateCopyWith(SearchVoucherCategoryState value,
          $Res Function(SearchVoucherCategoryState) then) =
      _$SearchVoucherCategoryStateCopyWithImpl<$Res>;
  $Res call({Data data});
}

/// @nodoc
class _$SearchVoucherCategoryStateCopyWithImpl<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  _$SearchVoucherCategoryStateCopyWithImpl(this._value, this._then);

  final SearchVoucherCategoryState _value;
  // ignore: unused_field
  final $Res Function(SearchVoucherCategoryState) _then;

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
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
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
    return 'SearchVoucherCategoryState.initial(data: $data)';
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
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
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
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchVoucherCategoryState {
  const factory Initial(Data data) = _$Initial;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith;
}

/// @nodoc
abstract class $ListVoucherDataCopyWith<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $ListVoucherDataCopyWith(
          ListVoucherData value, $Res Function(ListVoucherData) then) =
      _$ListVoucherDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListVoucherDataCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListVoucherData implements ListVoucherData {
  const _$ListVoucherData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SearchVoucherCategoryState.search(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return search(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
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
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
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

abstract class ListVoucherData implements SearchVoucherCategoryState {
  const factory ListVoucherData(Data data) = _$ListVoucherData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListVoucherDataCopyWith<ListVoucherData> get copyWith;
}

/// @nodoc
abstract class $ListCategoryDataCopyWith<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $ListCategoryDataCopyWith(
          ListCategoryData value, $Res Function(ListCategoryData) then) =
      _$ListCategoryDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListCategoryDataCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListCategoryData implements ListCategoryData {
  const _$ListCategoryData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SearchVoucherCategoryState.listCategory(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
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
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
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

abstract class ListCategoryData implements SearchVoucherCategoryState {
  const factory ListCategoryData(Data data) = _$ListCategoryData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListCategoryDataCopyWith<ListCategoryData> get copyWith;
}

/// @nodoc
abstract class $ListVoucherTyeDataCopyWith<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $ListVoucherTyeDataCopyWith(
          ListVoucherTyeData value, $Res Function(ListVoucherTyeData) then) =
      _$ListVoucherTyeDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListVoucherTyeDataCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListVoucherTyeData implements ListVoucherTyeData {
  const _$ListVoucherTyeData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SearchVoucherCategoryState.listVoucher(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listVoucher(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
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
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
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

abstract class ListVoucherTyeData implements SearchVoucherCategoryState {
  const factory ListVoucherTyeData(Data data) = _$ListVoucherTyeData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListVoucherTyeDataCopyWith<ListVoucherTyeData> get copyWith;
}

/// @nodoc
abstract class $ListVoucherCategoryDataCopyWith<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $ListVoucherCategoryDataCopyWith(ListVoucherCategoryData value,
          $Res Function(ListVoucherCategoryData) then) =
      _$ListVoucherCategoryDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListVoucherCategoryDataCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
    implements $ListVoucherCategoryDataCopyWith<$Res> {
  _$ListVoucherCategoryDataCopyWithImpl(ListVoucherCategoryData _value,
      $Res Function(ListVoucherCategoryData) _then)
      : super(_value, (v) => _then(v as ListVoucherCategoryData));

  @override
  ListVoucherCategoryData get _value => super._value as ListVoucherCategoryData;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(ListVoucherCategoryData(
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListVoucherCategoryData implements ListVoucherCategoryData {
  const _$ListVoucherCategoryData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SearchVoucherCategoryState.listVoucherCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListVoucherCategoryData &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ListVoucherCategoryDataCopyWith<ListVoucherCategoryData> get copyWith =>
      _$ListVoucherCategoryDataCopyWithImpl<ListVoucherCategoryData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listVoucherCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listVoucherCategory != null) {
      return listVoucherCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return listVoucherCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
    TResult keyWord(ListKeyWordData value),
    TResult valueDistance(ListValueDistanceData value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (listVoucherCategory != null) {
      return listVoucherCategory(this);
    }
    return orElse();
  }
}

abstract class ListVoucherCategoryData implements SearchVoucherCategoryState {
  const factory ListVoucherCategoryData(Data data) = _$ListVoucherCategoryData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListVoucherCategoryDataCopyWith<ListVoucherCategoryData> get copyWith;
}

/// @nodoc
abstract class $ListKeyWordDataCopyWith<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $ListKeyWordDataCopyWith(
          ListKeyWordData value, $Res Function(ListKeyWordData) then) =
      _$ListKeyWordDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListKeyWordDataCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListKeyWordData implements ListKeyWordData {
  const _$ListKeyWordData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SearchVoucherCategoryState.keyWord(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return keyWord(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
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
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return keyWord(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
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

abstract class ListKeyWordData implements SearchVoucherCategoryState {
  const factory ListKeyWordData(Data data) = _$ListKeyWordData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListKeyWordDataCopyWith<ListKeyWordData> get copyWith;
}

/// @nodoc
abstract class $ListValueDistanceDataCopyWith<$Res>
    implements $SearchVoucherCategoryStateCopyWith<$Res> {
  factory $ListValueDistanceDataCopyWith(ListValueDistanceData value,
          $Res Function(ListValueDistanceData) then) =
      _$ListValueDistanceDataCopyWithImpl<$Res>;
  @override
  $Res call({Data data});
}

/// @nodoc
class _$ListValueDistanceDataCopyWithImpl<$Res>
    extends _$SearchVoucherCategoryStateCopyWithImpl<$Res>
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
      data == freezed ? _value.data : data as Data,
    ));
  }
}

/// @nodoc
class _$ListValueDistanceData implements ListValueDistanceData {
  const _$ListValueDistanceData(this.data) : assert(data != null);

  @override
  final Data data;

  @override
  String toString() {
    return 'SearchVoucherCategoryState.valueDistance(data: $data)';
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
    @required TResult initial(Data data),
    @required TResult search(Data data),
    @required TResult listCategory(Data data),
    @required TResult listVoucher(Data data),
    @required TResult listVoucherCategory(Data data),
    @required TResult keyWord(Data data),
    @required TResult valueDistance(Data data),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return valueDistance(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(Data data),
    TResult search(Data data),
    TResult listCategory(Data data),
    TResult listVoucher(Data data),
    TResult listVoucherCategory(Data data),
    TResult keyWord(Data data),
    TResult valueDistance(Data data),
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
    @required TResult initial(Initial value),
    @required TResult search(ListVoucherData value),
    @required TResult listCategory(ListCategoryData value),
    @required TResult listVoucher(ListVoucherTyeData value),
    @required TResult listVoucherCategory(ListVoucherCategoryData value),
    @required TResult keyWord(ListKeyWordData value),
    @required TResult valueDistance(ListValueDistanceData value),
  }) {
    assert(initial != null);
    assert(search != null);
    assert(listCategory != null);
    assert(listVoucher != null);
    assert(listVoucherCategory != null);
    assert(keyWord != null);
    assert(valueDistance != null);
    return valueDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult search(ListVoucherData value),
    TResult listCategory(ListCategoryData value),
    TResult listVoucher(ListVoucherTyeData value),
    TResult listVoucherCategory(ListVoucherCategoryData value),
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

abstract class ListValueDistanceData implements SearchVoucherCategoryState {
  const factory ListValueDistanceData(Data data) = _$ListValueDistanceData;

  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  $ListValueDistanceDataCopyWith<ListValueDistanceData> get copyWith;
}
