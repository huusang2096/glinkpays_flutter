import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:vipay/src/models/transaction_detail_response.dart';

part 'wallet_detail_transaction_cubit.freezed.dart';
part 'wallet_detail_transaction_state.dart';

class TypeTransaction {
  static const String RECEIVED = 'Received';
  static const String SUCCESS = 'Success';
}

class WalletDetailTransactionCubit
    extends BaseCubit<WalletDetailTransactionState> {
  WalletDetailTransactionCubit() : super(Initial(DetailTransactionData()));

  void fetchDetailTransaction(int idTransaction) async {
    try {
      final response = await dataRepository.getDetailTransaction(idTransaction);
      if (response.success) {
        emit(Success(state.data
            .copyWith(transactionDetailResponse: response, isLoading: false)));
      } else {
        await dialogService.showDialog(
            title: appConfig.appName, description: 'server_error'.tr);
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  bool isShowAccountTo() {
    if (state.data.transactionDetailResponse.isNullOrBlank) {
      return false;
    } else {
      if (state.data.transactionDetailResponse.data.type.isNullOrBlank) {
        return false;
      }

      if (state.data.transactionDetailResponse.data.type ==
          TypeTransaction.RECEIVED) {
        return true;
      } else {
        return false;
      }
    }
  }

  String handleTotal() {
    final data = state.data;
    final String resultAmount = data.transactionDetailResponse.isNullOrBlank
        ? ''
        : data.transactionDetailResponse.data.isNullOrBlank
            ? ''
            : data.transactionDetailResponse.data?.total ?? '';
    final currCode = data.transactionDetailResponse.isNullOrBlank
        ? ''
        : data.transactionDetailResponse.data.isNullOrBlank
            ? ''
            : data.transactionDetailResponse.data?.currCode ?? '';
    final parseAmount = double.tryParse(resultAmount);
    final String result =
        '${(parseAmount ?? 0) > 0 ? '+' : ''}${parseAmount ?? ''} $currCode';
    return result;
  }
}
