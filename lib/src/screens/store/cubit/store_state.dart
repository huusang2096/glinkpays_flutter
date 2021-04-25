part of 'store_cubit.dart';

class StoreState {
  RestaurantModel.Restaurant restaurant;
  FoodDatasResponse vouchers;

  StoreState(this.restaurant, this.vouchers);

  StoreState.fromState(StoreState state) {
    restaurant = state.restaurant;
    vouchers = state.vouchers;
  }

  StoreState.copyWith(
      {RestaurantModel.Restaurant restaurant,
      FoodDatasResponse vouchers,
      StoreState state}) {
    this.restaurant = restaurant ?? state.restaurant;
    this.vouchers = vouchers ?? state.vouchers;
  }
}

class StoreInitial extends StoreState {
  StoreInitial(RestaurantModel.Restaurant restaurant)
      : super(restaurant, FoodDatasResponse());
}

class StoreFetchingVouchersInRestaurant extends StoreState {
  StoreFetchingVouchersInRestaurant(
      FoodDatasResponse vouchers, StoreState state)
      : super.copyWith(vouchers: vouchers, state: state);
}
