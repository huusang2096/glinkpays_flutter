import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:simplest/simplest.dart';

part 'use_my_voucher_state.dart';
part 'use_my_voucher_cubit.freezed.dart';

class UseMyVoucherCubit extends BaseCubit<UseMyVoucherState> {
  UseMyVoucherCubit() : super(Initial(Data()));

  void useVoucher({String code}) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      BaseModel response =
          await dataRepository.useVoucher(code, apiToken: appPref.token);
      if (response.success) {
        emit(UseVoucher(state.data.copyWith(useMyVoucherResponse: response)));
        if (response.message.contains('Used voucher successfully')) {
          response.message = 'used_voucher_successfully';
        }
        await dialogService.showDialog(
            title: 'thank_you'.tr, description: response.message.tr);
      }
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }
}
