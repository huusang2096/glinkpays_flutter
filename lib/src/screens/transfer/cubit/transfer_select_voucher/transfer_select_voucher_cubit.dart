import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_merchan_request.dart';

part 'transfer_select_voucher_state.dart';
part 'transfer_select_voucher_cubit.freezed.dart';

class TransferSelectVoucherCubit extends BaseCubit<TransferSelectVoucherState> {
  TransferSelectVoucherCubit(MyVoucherOrder myVoucherOrder)
      : super(Initial(
            Data(selectedItem: myVoucherOrder, isLoadingShimmer: true)));

  void getMyVoucher() async {
    try {
      emit(Loading(state.data.copyWith(isLoadingShimmer: true)));
      MyVoucherOrderResponse response =
          await dataRepository.getMyVoucher(apiToken: appPref.token);
      if (response.success) {
        emit(Loaded(state.data
            .copyWith(myVoucherResponse: response, isLoadingShimmer: false)));
      } else {
        snackbarService.showSnackbar(message: 'server_error'.tr);
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void checkVoucher(
      MyVoucherOrder item, String money, UserSearchItem user) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final request = SendMoneyMerchantRequest(
          code: item.couponCode,
          paymentAmount: int.parse(money.replaceAll(',', '')),
          merchantId: user.id);
      print('zxczxcasdzxc');
      final response =
          await dataRepository.checkVoucher(request, appPref.token);
      print('qwecxzcasdasd');
      emit(Loading(state.data.copyWith(isLoading: false)));
      if (response.success) {
        if (item.couponCode == null || item.couponCode.isEmpty) {
          snackbarService.showSnackbar(message: 'server_error'.tr);
          return;
        }
        navigator
            .pop({'myVoucherOrder': item, 'checkVoucherResponse': response});
      } else {
        snackbarService.showSnackbar(
            message: 'voucher_is_not_suitable_for_this_payment'.tr);
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      await handleAppError(e);
    }
  }
}
