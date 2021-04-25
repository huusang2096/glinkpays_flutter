import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/food_detail_response.dart';
import 'package:vipay/src/services/cart_service.dart';

part 'store_voucher_state.dart';

class StoreVoucherCubit extends BaseCubit<StoreVoucherState> {
  StoreVoucherCubit() : super(StoreVoucherInitial());

  void getFoodDetail(int id) async {
    try {
      changeLoading(true);
      final response = await dataRepository.getFoodDetail(id.toString(),
          'nutrition;restaurant;category;extras;foodReviews;foodReviews.user');
      if (response.success) {
        emit(StoreVoucherState.fromState(state,
            voucher: response, isLoading: false));
      } else {
        snackbarService.showSnackbar(message: response.message);
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  String skipHtml(String html) {
    final result = Helper.skipHtml(html);
    return result;
  }

  void handleExistStore(bool check) {
    if (check) {
      navigator.back();
    } else {
      navigator.navigateTo(RouteGenerator.storeScreen, arguments: {
        'restaurant': state.voucher.data.restaurant,
        'heroTag':
            'storeVoucherHeroTag${state.voucher.data.restaurant.hashCode.toString()}'
      });
    }
  }

  void changeLoading(bool change) {
    emit(StoreVoucherChangeLoading(state, change));
  }

  Future<void> addToCart() async {
    changeLoading(true);
    final tripService = locator<CartService>();
    AppPref appPref = locator<AppPref>();
    await tripService.addCart(1, state.voucher.data.id);
    changeLoading(false);
  }

  Future<bool> exitLogin() async {
    final token = await appPref.token;
    if (token.isEmpty) {
      return false;
    }
    return true;
  }
}
