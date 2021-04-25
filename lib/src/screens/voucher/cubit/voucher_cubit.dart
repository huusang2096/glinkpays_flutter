import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/home/banner_response.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';
import 'package:vipay/src/repository/user_repository.dart';

part 'voucher_state.dart';

class VoucherCubit extends BaseCubit<VoucherState> {
  VoucherCubit() : super(VoucherInitial());

  void loadData() async {
    try {
      final _user = await getCurrentUser();
      // CATEGORY
      CategoryResponse categoriesResponse =
          await dataRepository.getCategories();
      // TRENDING
      FoodDatasResponse trendingFoodResponse =
          await dataRepository.getTrendingFoods(apiUser: _user.apiToken);
      // LIST VOUCHER
      FoodDatasResponse foodResponse =
          await dataRepository.getVouchers(apiUser: _user.apiToken);
      // BANNER
      BannerResponse bannerResponse = await dataRepository.getBanner();
      emit(LoadDataVoucherSuccess(state.copyWith(
          categories: categoriesResponse.data,
          trendingVoucher: trendingFoodResponse,
          vouchers: foodResponse.data,
          bannerResponse: bannerResponse)));
    } catch (e) {
      handleAppError(e);
    }
  }
}
