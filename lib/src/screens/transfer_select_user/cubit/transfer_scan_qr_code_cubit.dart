import 'package:qrcode/qrcode.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
part 'transfer_scan_qr_code_state.dart';
part 'transfer_scan_qr_code_cubit.freezed.dart';

class TransferScanQrCodeCubit extends BaseCubit<TransferScanQrCodeState> {
  TransferScanQrCodeCubit() : super(Initial(Data()));

  void changeIsPause(bool isPause) {
    emit(Load(state.data.copyWith(isPause: isPause)));
  }

  void changeIsTorchOn() {
    emit(Load(state.data.copyWith(isTorchOn: !state.data.isTorchOn)));
  }

  void changeLoadingScaffold(bool isLoadingScaffold) {
    emit(Load(state.data.copyWith(isLoadingScaffold: isLoadingScaffold)));
  }

  bool validationData(String data) {
    if (int.tryParse(data) == null) {
      return false;
    }
    if (data.isBlank) {
      return false;
    }
    return true;
  }

  Future<void> handleDataQrCode(
      {String data,
      bool isPopAndReturnData,
      QRCaptureController captureController}) async {
    if (isPopAndReturnData) {
      changeLoadingScaffold(true);
      final map = {'data': data};
      await Future.delayed(Duration(milliseconds: 300), () {
        changeLoadingScaffold(false);
        navigator.pop(map);
      });
    } else {
      searchUserFromDataByQrCode(data, captureController);
    }
  }

  void searchUserFromDataByQrCode(phone, captureController) async {
    try {
      changeLoadingScaffold(true);
      final response = await dataRepository.findExactUser(phone);
      if (response.data != null) {
        await navigator.pushNamed(RouteGenerator.transferScreen, arguments: {
          'user': response.data
        }).then((value) => captureController.resume());
      } else {
        await snackbarService.showSnackbar(
            message: 'this_user_is_not_yet_use_vipay'.tr,
            duration: Duration(seconds: 1));
        captureController.resume();
      }
    } catch (e) {
      await handleAppError(e);
    }
    changeLoadingScaffold(false);
  }
}
