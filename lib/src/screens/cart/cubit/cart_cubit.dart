import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/cart/cart_response_model.dart';
import 'package:vipay/src/models/cart/order_request.dart';
import 'package:vipay/src/models/cart/order_response.dart';
import 'package:vipay/src/services/cart_service.dart';

part 'cart_state.dart';

class CartCubit extends BaseCubit<CartState> {
  CartCubit() : super(CartInitial());

  final cartService = locator<CartService>();

  Future<void> getCart() async {
    if (appPref.token.isNullOrBlank) {
      return;
    }
    try {
      emit(state.copyWith(isLoading: true));
      final cart = await cartService.getCart();
      final setting = await dataRepository.getSettings();
      emit(GetCartState(cart, setting.data.defaultTax, state));
    } catch (e) {
      handleAppError(e);
    }
    emit(state.copyWith(isLoading: false));
  }

  void incrementQuantity(Cart cart) {
    if (cart.quantity < 99) {
      ++cart.quantity;
      emit(state.copyWith());
    }
  }

  void decrementQuantity(Cart cart) {
    if (cart.quantity > 1) {
      cart.quantity--;
      emit(state.copyWith());
    }
  }

  Future<void> deleteCart(int cartID) async {
    try {
      emit(state.copyWith(isLoading: true));
      await cartService.removeCart(cartID);
      await getCart();
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      handleAppError(e);
    }
  }

  double totalCart() {
    double total = 0;
    if (state.cartResponse == null) {
      return 0;
    }
    for (int i = 0; i < state.cartResponse.data.length; i++) {
      total = total +
          (state.cartResponse.data[i].quantity *
              state.cartResponse.data[i].food.price);
    }
    return total ?? 0;
  }

  void orderVoucher(List<Cart> carts) async {
    try {
      OrderRequest orderRequest = OrderRequest();
      orderRequest.tax = int.parse(state.defaultTax);
      orderRequest.foods = List<FoodOrder>();
      carts.forEach((_cart) {
        FoodOrder _foodOrder = FoodOrder();
        _foodOrder.quantity = _cart.quantity;
        _foodOrder.price = _cart.food.price.toInt();
        _foodOrder.foodId = _cart.food.id;
        orderRequest.foods.add(_foodOrder);
      });
      emit(state.copyWith(isLoadingButton: true));
      final response =
          await dataRepository.order(orderRequest, apiToken: appPref.token);
      await getCart();
      emit(OrderVoucherState(response, state));
    } catch (e) {
      logger.e(e);
      handleAppError(e);
    }
    emit(state.copyWith(isLoadingButton: false));
  }
}
