import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';

part 'search_voucher_state.freezed.dart';

@freezed
abstract class SearchVoucherStateData with _$SearchVoucherStateData {
  const factory SearchVoucherStateData(
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

// Union
@freezed
abstract class SearchVoucherState with _$SearchVoucherState {
  const factory SearchVoucherState.init(SearchVoucherStateData data) = Initial;
  const factory SearchVoucherState.search(SearchVoucherStateData data) =
      ListVoucherData;
  const factory SearchVoucherState.listCategory(SearchVoucherStateData data) =
      ListCategoryData;
  const factory SearchVoucherState.listVoucher(SearchVoucherStateData data) =
      ListVoucherTyeData;
  const factory SearchVoucherState.keyWord(SearchVoucherStateData data) =
      ListKeyWordData;
  const factory SearchVoucherState.valueDistance(SearchVoucherStateData data) =
      ListValueDistanceData;
}
