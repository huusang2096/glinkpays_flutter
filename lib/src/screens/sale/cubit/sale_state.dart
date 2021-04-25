part of 'sale_cubit.dart';

class SaleState {
  FoodDatasResponse vouchers;
  SaleState(this.vouchers);
}

class SaleInitial extends SaleState {
  SaleInitial(FoodDatasResponse vouchers) : super(vouchers);
}
