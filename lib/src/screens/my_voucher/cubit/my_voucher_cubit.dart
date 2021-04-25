import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:simplest/simplest.dart';

part 'my_voucher_state.dart';
part 'my_voucher_cubit.freezed.dart';

class MyVoucherCubit extends BaseCubit<MyVoucherState> {
  MyVoucherCubit() : super(Initial(Data()));

  void getMyVoucher() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      MyVoucherOrderResponse response =
          await dataRepository.getMyVoucher(apiToken: appPref.token);

      if (response.data.isEmpty) {
        snackbarService.showSnackbar(message: 'currently_no_voucher'.tr);
      } else {
        emit(Loaded(state.data.copyWith(myVoucherResponse: response)));
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }
}
