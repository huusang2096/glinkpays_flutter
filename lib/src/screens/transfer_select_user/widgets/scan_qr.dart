import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart' as simplest;
import 'package:vipay/locator.dart';
import 'package:qrcode/qrcode.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/button_scan_again.dart';
import 'package:vipay/src/screens/transfer_select_user/cubit/transfer_scan_qr_code_cubit.dart';

const flashOn = 'FLASH ON';
const flashOff = 'FLASH OFF';
const frontCamera = 'FRONT CAMERA';
const backCamera = 'BACK CAMERA';

class ScanQRCodeWidget extends StatefulWidget {
  final Size size;
  final QRCaptureController captureController;
  final bool isPopAndReturnData;
  const ScanQRCodeWidget(
      {Key key, this.size, this.captureController, this.isPopAndReturnData})
      : super(key: key);
  @override
  _ScanQRCodeWidgetState createState() => _ScanQRCodeWidgetState();
}

class _ScanQRCodeWidgetState extends State<ScanQRCodeWidget>
    with TickerProviderStateMixin {
  final snackBar = locator<simplest.SnackbarService>();
  bool isShowScanAgain = false;
  Animation<Alignment> _animation;
  AnimationController _animationController;
  String errorText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: ShapeQr(),
              child: Container(
                width: 230,
                height: 230,
              ),
            ),
            Container(
              width: 220,
              height: 220,
              color: Colors.black,
              child: QRCaptureView(
                controller: widget.captureController,
              ),
            ),
          ],
        ),
        if (isShowScanAgain) ...[
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              width: widget.size.width,
              child: Text(
                errorText,
                textAlign: TextAlign.center,
              )),
          ButtonScanAgain(
            onPress: () {
              isShowScanAgain = false;
              context.read<TransferScanQrCodeCubit>().changeIsPause(false);
              errorText = '';
              widget.captureController.resume();
            },
            size: widget.size,
          )
        ] else
          SizedBox.shrink(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    initCapture();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation =
        AlignmentTween(begin: Alignment.topCenter, end: Alignment.bottomCenter)
            .animate(_animationController)
              ..addListener(() {
                setState(() {});
              })
              ..addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  _animationController.reverse();
                } else if (status == AnimationStatus.dismissed) {
                  _animationController.forward();
                }
              });
    _animationController.forward();
  }

  void initCapture() {
    widget.captureController.onCapture((data) async {
      print('onCapture----$data');
      if (data != null) {
        widget.captureController.pause();
        await Future.delayed(Duration(seconds: 3));
        context.read<TransferScanQrCodeCubit>().changeIsPause(true);
        final isVal =
            context.read<TransferScanQrCodeCubit>().validationData(data);
        if (isVal) {
          await context.read<TransferScanQrCodeCubit>().handleDataQrCode(
              data: data,
              isPopAndReturnData: widget.isPopAndReturnData,
              captureController: widget.captureController);
          if (!widget.isPopAndReturnData) {
            isShowScanAgain = false;
            context.read<TransferScanQrCodeCubit>().changeIsPause(false);
            errorText = '';
          }
        } else {
          isShowScanAgain = true;
          errorText = 'we_cannot_recognize_this_qr_code'.tr;
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class ShapeQr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = colorBackgroundAppBar
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final defaultDash = 25.0;
    final height = size.height;
    final width = size.width;
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, defaultDash);

    path.moveTo(0, 0);
    path.lineTo(defaultDash, 0);

    path.moveTo(0, height - defaultDash);
    path.lineTo(0, height);

    path.moveTo(0, height);
    path.lineTo(defaultDash, height);

    path.moveTo(width - defaultDash, height);
    path.lineTo(width, height);

    path.moveTo(width, height);
    path.lineTo(width, height - defaultDash);

    path.moveTo(width - defaultDash, 0);
    path.lineTo(width, 0);

    path.moveTo(width, 0);
    path.lineTo(width, defaultDash);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
