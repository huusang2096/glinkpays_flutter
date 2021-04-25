part of 'my_voucher_cubit.dart';

@freezed
abstract class MyVoucherStateData with _$MyVoucherStateData {
  const factory MyVoucherStateData(
      {MyVoucherOrderResponse myVoucherResponse,
      bool isLoading,
      List<MyVoucherOrder> listData}) = Data;
}

@freezed
abstract class MyVoucherState with _$MyVoucherState {
  const factory MyVoucherState.initial(Data data) = Initial;
  const factory MyVoucherState.loading(Data data) = Loading;
  const factory MyVoucherState.loaded(Data data) = Loaded;
  const factory MyVoucherState.error(Data data) = Error;
}
