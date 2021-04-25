part of 'cart_cubit.dart';

class CartState {
  CartResponse cartResponse;
  String defaultTax;
  bool isLoading;
  bool isLoadingButton;
  OrderResponse orderResponse;
  CartState(
      {this.cartResponse,
      this.orderResponse,
      this.defaultTax = '0',
      this.isLoading = false,
      this.isLoadingButton = false});

  CartState.from(CartState state) {
    this.cartResponse = state.cartResponse;
    this.isLoading = state.isLoading;
    this.defaultTax = state.defaultTax;
    this.isLoadingButton = state.isLoadingButton;
    this.orderResponse = state.orderResponse;
  }

  CartState copyWith(
      {CartResponse cardResponse,
      double total,
      String defaultTax,
      bool isLoading,
      bool isLoadingButton,
      OrderResponse orderResponse}) {
    return CartState(
        cartResponse: cardResponse ?? this.cartResponse,
        isLoading: isLoading ?? this.isLoading,
        defaultTax: defaultTax ?? this.defaultTax,
        isLoadingButton: isLoadingButton ?? this.isLoadingButton,
        orderResponse: orderResponse ?? this.orderResponse);
  }
}

class CartInitial extends CartState {
  CartInitial() : super();
}

class GetCartState extends CartState {
  GetCartState(CartResponse cartResponse, String defaultTax, CartState state)
      : super.from(state.copyWith(
            cardResponse: cartResponse,
            defaultTax: defaultTax,
            isLoading: false));
}

class DeleteCartState extends CartState {
  DeleteCartState(CartState state) : super.from(state);
}

class OrderVoucherState extends CartState {
  OrderVoucherState(dynamic orderResponse, CartState state)
      : super(orderResponse: orderResponse);
}
