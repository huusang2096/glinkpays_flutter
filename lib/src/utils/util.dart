import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

const kUserAgent =
    'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class PaypalColors {
  static const LightBlue = Color.fromRGBO(0, 154, 224, 1);
  static const DarkBlue = Color.fromRGBO(18, 106, 175, 1);
  static const LightGrey19 = Color.fromRGBO(112, 112, 112, 0.19);
  static const LightGrey = Color.fromRGBO(242, 242, 242, 1);
  static const Grey = Color.fromRGBO(157, 157, 157, 1);
  static const Black50 = Color.fromRGBO(0, 0, 0, 0.5);
  static const Green = Color.fromRGBO(61, 179, 158, 1);
  static const Profile = Color.fromRGBO(244, 244, 244, 1);
}

class BiometricsUtils {
  Future<bool> getBiometricsSupport() async {
    bool hasFingerPrintSupport = false;
    try {
      hasFingerPrintSupport = await LocalAuthentication().canCheckBiometrics;
    } catch (error) {
      print(error);
    }
    return hasFingerPrintSupport;
  }

  // buildAlertDialogVerify({context, callback}) {
  //   showDialog(
  //       barrierDismissible: true,
  //       context: context,
  //       builder: (context) => AlertDialog(
  //             content: VerifyWidget(onCallBackAuthenticated: () async {
  //               callback();
  //             }),
  //           ));
  // }

  // buildSlidePopupVerify({context, callback, isShowVerifyOTP = false}) {
  //   slideDialog.showSlideDialog(
  //       context: context,
  //       child: Column(
  //         children: <Widget>[
  //           Text(
  //             'authentication'.tr,
  //             style: TextStyle(
  //               fontSize: 25,
  //             ),
  //             maxLines: 1,
  //             overflow: TextOverflow.ellipsis,
  //           ),
  //           Container(
  //             margin: EdgeInsets.symmetric(horizontal: 10),
  //             child: VerifyWidget(
  //                 onCallBackAuthenticated: () async {
  //                   callback('');
  //                 },
  //                 onCallBackAuthenticatedOTP: (String verifyToken) {
  //                   callback(verifyToken);
  //                 },
  //                 isShowVerifyOTP: isShowVerifyOTP),
  //           )
  //         ],
  //       ));
  // }
}
