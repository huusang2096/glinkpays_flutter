import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/repository/user_repository.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vipay/src/models/home/foods_response.dart';

part 'voucher_list_state.dart';
part 'voucher_list_cubit.freezed.dart';

class VoucherListCubit extends BaseCubit<VoucherListState> {
  final dynamic agrs;
  VoucherListCubit(this.agrs)
      : super(VoucherListState.initial(
            VoucherListData(vouchers: [], inAsyncCall: false)));

  void getVouchers() async {
    var queries = agrs as String;
    logger.d(queries);

    /// Sample api with queries /api/coupon/foods?restaurant_ids[]={id}&with=nutrition;restaurant;category;extras;foodReviews
    try {
      emit(VoucherListState.loading(state.data.copyWith(inAsyncCall: true)));
      final _user = await getCurrentUser();
      final response = await dataRepository.getVouchers(
          apiUser: _user.apiToken, withQueries: queries);
      emit(VoucherListState.loaded(
          state.data.copyWith(vouchers: response.data)));
    } catch (e) {
      handleAppError(e);
    }
    emit(VoucherListState.loaded(state.data.copyWith(inAsyncCall: false)));
  }
}
