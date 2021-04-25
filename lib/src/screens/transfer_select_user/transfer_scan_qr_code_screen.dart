import 'package:flutter/material.dart';
import 'package:qrcode/qrcode.dart';
import 'package:simplest/simplest.dart';

import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/scan_qr.dart';
import 'package:vipay/src/screens/transfer_select_user/cubit/transfer_scan_qr_code_cubit.dart';

class ScanQrCodeScreen
    extends CubitWidget<TransferScanQrCodeCubit, TransferScanQrCodeState> {
  final bool isPopAndReturnData;

  ScanQrCodeScreen({this.isPopAndReturnData});

  static BlocProvider<TransferScanQrCodeCubit> provider(
      {bool isPopAndReturnData}) {
    return BlocProvider(
        create: (context) => TransferScanQrCodeCubit(),
        child: ScanQrCodeScreen(isPopAndReturnData: isPopAndReturnData));
  }

  final QRCaptureController _captureController = QRCaptureController();

  @override
  Widget builder(BuildContext context, TransferScanQrCodeState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.data.isLoadingScaffold,
      child: Scaffold(
        appBar: buildAppBar(state),
        body: buildBody(size),
      ),
    );
  }

  Widget buildBody(Size size) {
    return SizedBox.expand(
        child: ScanQRCodeWidget(
            size: size,
            captureController: _captureController,
            isPopAndReturnData: isPopAndReturnData));
  }

  AppBar buildAppBar(TransferScanQrCodeState state) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          navigator.pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: colorWhite,
        ),
      ),
      backgroundColor: colorBackgroundAppBar,
      title: Text(
        'scan_code'.tr,
        style: title.copyWith(color: colorWhite),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(
            state.data.isTorchOn ? Icons.flash_on : Icons.flash_off,
            color: Colors.amber,
          ),
          onPressed: () {
            if (state.data.isPause) {
              return;
            }
            if (state.data.isTorchOn) {
              _captureController.torchMode = CaptureTorchMode.off;
            } else {
              _captureController.torchMode = CaptureTorchMode.on;
            }
            bloc.changeIsTorchOn();
          },
        )
      ],
    );
  }
}
