part of 'sale_detail_cubit.dart';

class SaleDetailState {
  FoodData voucher;

  SaleDetailState(this.voucher);
}

class SaleDetailInitial extends SaleDetailState {
  SaleDetailInitial(FoodData voucher) : super(voucher);
}
