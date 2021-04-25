part of 'voucher_cubit.dart';

class VoucherState {
  List<FoodData> vouchers;
  FoodDatasResponse trendingVoucher;
  List<Category> categories;
  List<String> categoriesSelected;
  List<VoucherType> vouchersType;
  List<String> vouchersTypeSelected;
  bool isTrending;
  double valueDistance;
  String keyword;
  BannerResponse bannerResponse;

  VoucherState({
    this.vouchers,
    this.trendingVoucher,
    this.categories,
    this.categoriesSelected,
    this.vouchersType,
    this.vouchersTypeSelected,
    this.isTrending,
    this.valueDistance,
    this.keyword,
    this.bannerResponse,
  });

  VoucherState copyWith({
    List<FoodData> vouchers,
    FoodDatasResponse trendingVoucher,
    List<Category> categories,
    List<String> categoriesSelected,
    List<VoucherType> vouchersType,
    List<String> vouchersTypeSelected,
    bool isTrending,
    double valueDistance,
    String keyword,
    BannerResponse bannerResponse,
  }) {
    return VoucherState(
        vouchers: vouchers ?? this.vouchers,
        trendingVoucher: trendingVoucher ?? this.trendingVoucher,
        categories: categories ?? this.categories,
        categoriesSelected: categoriesSelected ?? this.categoriesSelected,
        vouchersType: vouchersType ?? this.vouchersType,
        vouchersTypeSelected: vouchersTypeSelected ?? this.vouchersTypeSelected,
        isTrending: isTrending ?? this.isTrending,
        valueDistance: valueDistance ?? this.valueDistance,
        keyword: keyword ?? this.keyword,
        bannerResponse: bannerResponse ?? this.bannerResponse);
  }

  VoucherState.from(VoucherState state) {
    vouchers = state.vouchers;
    trendingVoucher = state.trendingVoucher;
    categories = state.categories;
    categoriesSelected = state.categoriesSelected;
    vouchersType = state.vouchersType;
    vouchersTypeSelected = state.vouchersTypeSelected;
    isTrending = state.isTrending;
    valueDistance = state.valueDistance;
    keyword = state.keyword;
    bannerResponse = state.bannerResponse;
  }
}

class VoucherInitial extends VoucherState {
  VoucherInitial()
      : super(
          vouchers: <FoodData>[],
          trendingVoucher: null,
          categories: <Category>[],
          categoriesSelected: <String>[],
          vouchersType: <VoucherType>[],
          vouchersTypeSelected: <String>[],
          isTrending: false,
          valueDistance: 0.0,
          keyword: '',
          bannerResponse: null,
        );
}

class LoadDataVoucherSuccess extends VoucherState {
  LoadDataVoucherSuccess(VoucherState state) : super.from(state);
}
