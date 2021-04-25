part of 'home_cubit.dart';

class HomeState {
  CategoryResponse categoryResponse;
  FoodDatasResponse vouchers;
  FoodDatasResponse topWeekResponse;
  AvailableResponse availableResponse;
  VideoResponse videoResponse;
  int cartBadge;
  NotificationResponse notificationResponse;
  BannerResponse bannerResponse;

  HomeState(this.categoryResponse, this.vouchers, this.topWeekResponse,
      this.availableResponse, this.notificationResponse, this.bannerResponse,
      {this.cartBadge = 0});

  HomeState.fromState(HomeState state) {
    this.categoryResponse = state.categoryResponse;
    this.vouchers = state.vouchers;
    this.topWeekResponse = state.topWeekResponse;
    this.availableResponse = state.availableResponse;
    this.videoResponse = state.videoResponse;
    this.cartBadge = cartBadge;
    this.notificationResponse = state.notificationResponse;
    this.bannerResponse = state.bannerResponse;
  }

  HomeState.copyWith(
      {CategoryResponse categoryResponse,
      FoodDatasResponse vouchers,
      FoodDatasResponse topWeekResponse,
      AvailableResponse availableResponse,
      int cartBadge,
      VideoResponse videoResponse,
      NotificationResponse notificationResponse,
      BannerResponse bannerResponse,
      HomeState state}) {
    this.categoryResponse = categoryResponse ?? state.categoryResponse;
    this.vouchers = vouchers ?? state.vouchers;
    this.topWeekResponse = topWeekResponse ?? state.topWeekResponse;
    this.availableResponse = availableResponse ?? state.availableResponse;
    this.cartBadge = cartBadge ?? state.cartBadge;
    this.videoResponse = videoResponse ?? state.videoResponse;
    this.notificationResponse =
        notificationResponse ?? state.notificationResponse;
    this.bannerResponse = bannerResponse ?? state.bannerResponse;
  }
}

class HomeInitial extends HomeState {
  HomeInitial() : super(null, null, null, null, null, null, cartBadge: 0);
}

class GetAvailableResponseUser extends HomeState {
  GetAvailableResponseUser(AvailableResponse availableResponse, HomeState state)
      : super.copyWith(availableResponse: availableResponse, state: state);
}

class GetCategoryState extends HomeState {
  GetCategoryState(CategoryResponse categoryResponse, HomeState state)
      : super.copyWith(categoryResponse: categoryResponse, state: state);
}

class GetFoodsVouchersState extends HomeState {
  GetFoodsVouchersState(FoodDatasResponse vouchers, HomeState state)
      : super.copyWith(vouchers: vouchers, state: state);
}

class GetTopWeekResponseState extends HomeState {
  GetTopWeekResponseState(FoodDatasResponse topWeekResponse, HomeState state)
      : super.copyWith(topWeekResponse: topWeekResponse, state: state);
}

class GetVideoResponseState extends HomeState {
  GetVideoResponseState(VideoResponse videoResponse, HomeState state)
      : super.copyWith(videoResponse: videoResponse, state: state);
}

class GetCartBadgeState extends HomeState {
  GetCartBadgeState(int cartBadge, HomeState state)
      : super.copyWith(cartBadge: cartBadge, state: state);
}

class GetNotificationSuccessState extends HomeState {
  GetNotificationSuccessState(
      NotificationResponse notificationResponse, HomeState state)
      : super.copyWith(
            notificationResponse: notificationResponse, state: state);
}

class GetBannerSuccessState extends HomeState {
  GetBannerSuccessState(BannerResponse bannerResponse, HomeState state)
      : super.copyWith(bannerResponse: bannerResponse, state: state);
}
