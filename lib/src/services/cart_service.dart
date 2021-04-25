import 'dart:developer';

import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/models/cart/add_cart_request_model.dart';
import 'package:vipay/src/models/cart/cart_response_model.dart';
import 'package:vipay/src/repository/data_repository.dart';

@lazySingleton
class CartService {
  CartResponse get cart => _cartSubject.value;
  int get cartBadge => _getCartBadge(cart);
  Stream<int> get cartStream =>
      _cartSubject.stream.map((event) => _getCartBadge(event));

  final BehaviorSubject<CartResponse> _cartSubject =
      BehaviorSubject<CartResponse>();

  final _dataRepo = locator<DataRepository>();
  final appPref = locator<AppPref>();
  final snackBarService = locator<SnackbarService>();
  final loadingService = locator<LoadingService>();

  int _getCartBadge(CartResponse cartResponse) {
    try {
      return cartResponse?.data?.length ?? 0;
    } catch (e) {
      logger.e(e);
      return 0;
    }
  }

  Future<CartResponse> getCart() async {
    try {
      final cart = await _dataRepo.getCart(appPref.token, appPref.getUserId);
      _cartSubject.add(cart);
      log('------------MESSAGE: ' + cart.message);
      if (cart.success) {
        return cart;
      }
    } catch (e) {
      logger.e(e);
    }
    return null;
  }

  Future<void> addCart(int quantity, int foodId) async {
    try {
      AddCartRequest addcartRequest = AddCartRequest();
      addcartRequest.quantity = quantity;
      addcartRequest.userId = await int.parse(appPref.getUserId);
      addcartRequest.foodId = foodId;
      await loadingService.showLoading();
      final response = await _dataRepo.addtoCart(appPref.token, addcartRequest);
      await loadingService.hideLoading();
      log('------------MESSAGE: ' + response.message);
      if (response.success) {
        snackBarService.showSnackbar(message: response.message);
        await getCart();
      } else {
        snackBarService.showSnackbar(message: response.message);
      }
    } catch (e) {
      logger.e(e);
    }
  }

  void removeCart(int cartID) async {
    try {
      final response = await _dataRepo.deleteCart(appPref.token, cartID);
      log('------------MESSAGE: ' + response.message);
      if (response.success) {
        snackBarService.showSnackbar(message: response.message);
        await getCart();
      } else {
        snackBarService.showSnackbar(message: response.message);
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
