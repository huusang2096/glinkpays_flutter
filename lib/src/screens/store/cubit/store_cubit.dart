import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/restaurant.dart' as RestaurantModel;

part 'store_state.dart';

class StoreCubit extends BaseCubit<StoreState> {
  StoreCubit(RestaurantModel.Restaurant restaurant)
      : super(StoreInitial(restaurant));

  @override
  dynamic initData() {
    getDetailStore();
    return super.initData();
  }

  void getDetailStore() async {
    try {
      final response = await dataRepository.getVoucherInRestaurant(
          id: state.restaurant.id.toString());
      if (response.success) {
        emit(StoreFetchingVouchersInRestaurant(response, state));
      } else {
        await dialogService.showDialog(
            title: appConfig.appName, description: response.message);
      }
    } catch (e) {
      logger.e(e);
      await handleAppError(e);
    }
  }

  String handleInformation(String information) {
    final handleString = information.replaceFirst('PM</p>', '\n');
    final result = Helper.skipHtml(handleString);
    return result;
  }

  String parseHtml(String text) {
    final result = Helper.skipHtml(text);
    return result;
  }

  List<String> handleUrlsInInformation() {
    List<String> urls = [];
    if (state.vouchers.data != null) {
      for (var item in state.vouchers.data) {
        if (item.media != null && item.media.isNotEmpty) {
          urls.add(item.media.first.thumb ?? '');
        }
      }
    }
    return urls;
  }
}
