part of 'search_voucher_category_cubit.dart';

@freezed
abstract class SearchVoucherCategoryStateData
    with _$SearchVoucherCategoryStateData {
  const factory SearchVoucherCategoryStateData(
      {String search,
      List<FoodData> searchs,
      List<String> categoryId,
      List<String> foodTypeId,
      List<Category> categorys,
      List<VoucherType> voucherTypes,
      bool isTrending,
      String keyWord,
      double valueDistance}) = Data;
}

@freezed
abstract class SearchVoucherCategoryState with _$SearchVoucherCategoryState {
  const factory SearchVoucherCategoryState.initial(Data data) = Initial;
  const factory SearchVoucherCategoryState.search(Data data) = ListVoucherData;
  const factory SearchVoucherCategoryState.listCategory(Data data) =
      ListCategoryData;
  const factory SearchVoucherCategoryState.listVoucher(Data data) =
      ListVoucherTyeData;
  const factory SearchVoucherCategoryState.listVoucherCategory(Data data) =
      ListVoucherCategoryData;
  const factory SearchVoucherCategoryState.keyWord(Data data) = ListKeyWordData;
  const factory SearchVoucherCategoryState.valueDistance(Data data) =
      ListValueDistanceData;
}
