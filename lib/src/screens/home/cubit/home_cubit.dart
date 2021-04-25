import 'dart:developer';

import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/home/banner_response.dart';
import 'package:vipay/src/models/home/category_response.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/home/notification_response.dart';
import 'package:vipay/src/models/home/video_response.dart';
import 'package:vipay/src/repository/user_repository.dart';
import 'package:vipay/src/services/cart_service.dart';

part 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final cartService = locator<CartService>();

  @override
  initData() {
    _handleCartBadgeUpdate();
  }

  void refreshHomePage() {
    emit(HomeState.copyWith(
        state: state, availableResponse: null, cartBadge: 0));
  }

  void _handleCartBadgeUpdate() {
    cartService.cartStream.listen((response) {
      if (appPref.token == '') {
        getCartBadge(0);
        return;
      }
      getCartBadge(response);
    });

    cartService.getCart();
    getCartBadge(cartService.cartBadge);
  }

  void getCartBadge(int cartBadge) {
    try {
      emit(GetCartBadgeState(cartBadge, state));
    } catch (e) {
      handleAppError(e);
    }
  }

  void setup() {
    _handleNotifcation();
  }

  void _handleNotifcation() async {
    final _notifService = locator<NotificationService>();
    _notifService.requestPermission();
    log('fcmToken \n ${_notifService.fcmToken}');
    _notifService.isShowLocalNotification = true;
    subscriptions.add(_notifService.dataStream.listen((data) {
      logger.i(data);
    }));
  }

  void getUserAvailable() async {
    if (appPref.token.isEmpty) {
      return;
    }
    try {
      await dataRepository.loadAuthHeader();
      AvailableResponse availableResponse =
          await dataRepository.getUserAvailable();
      emit(GetAvailableResponseUser(availableResponse, state));
    } catch (e) {
      print(e);
    }
  }

  void getCategories() async {
    try {
      CategoryResponse categoryResponse = await dataRepository.getCategories();
      emit(GetCategoryState(categoryResponse, state));
    } catch (e) {
      print(e);
    }
  }

  getVoucherFoods() async {
    try {
      final _user = await getCurrentUser();
      FoodDatasResponse foodResponse =
          await dataRepository.getVouchers(apiUser: _user.apiToken);
      emit(GetFoodsVouchersState(foodResponse, state));
    } catch (e) {
      print(e);
    }
  }

  getTopWeekFoods() async {
    try {
      final _user = await getCurrentUser();
      FoodDatasResponse foodResponse =
          await dataRepository.getTrendingFoods(apiUser: _user.apiToken);
      emit(GetTopWeekResponseState(foodResponse, state));
    } catch (e) {
      print(e);
    }
  }

  getVideos() async {
    try {
      VideoResponse videoResponse = await dataRepository.getVideos();
      videoResponse.data..sort((b, a) => a.id.compareTo(b.id));
      emit(GetVideoResponseState(videoResponse, state));
    } catch (e) {
      print(e);
    }
  }

  getNotification() async {
    try {
      NotificationResponse notificationResponse =
          await dataRepository.getNotification();
      emit(GetNotificationSuccessState(notificationResponse, state));
    } catch (e) {
      handleAppError(e);
    }
  }

  void getBanner() async {
    try {
      BannerResponse bannerResponse = await dataRepository.getBanner();
      emit(GetBannerSuccessState(bannerResponse, state));
    } catch (e) {
      handleAppError(e);
    }
  }
}
