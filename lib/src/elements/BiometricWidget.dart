import 'dart:io';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:vipay/src/common/ui_helper.dart';
import 'package:vipay/src/utils/prefs_secure.dart';
import 'package:simplest/simplest.dart';

class BiometricWidget extends StatefulWidget {
  final Function(bool) onCallBackAuthenticated;

  BiometricWidget({this.onCallBackAuthenticated});

  @override
  _BiometricWidgetState createState() => _BiometricWidgetState();
}

class _BiometricWidgetState extends State<BiometricWidget> with UIHelper {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _hasSupportBiometrics = false;
  bool _hasSupportFingerPrint = false;
  bool _hasSupportFaceId = false;
  bool _hasEnableBiometrics = false;
  List<BiometricType> _availabelBiometricType = List<BiometricType>();

  @override
  void initState() {
    super.initState();
    _getBiometricsSupport();
    _getBiometricsAvailabelSupport();
  }

  @override
  Widget build(BuildContext context) {
    _checkHasEnableBiometrics();
    return _hasSupportBiometrics
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _hasSupportFingerPrint
                  ? IconButton(
                      onPressed: () async {
                        widget.onCallBackAuthenticated(await _authenticate());
                      },
                      icon: Icon(
                        Icons.fingerprint,
                      ),
                      iconSize: 40,
                    )
                  : SizedBox.shrink(),
              _hasSupportFaceId
                  ? IconButton(
                      onPressed: () async {
                        widget.onCallBackAuthenticated(await _authenticate());
                      },
                      icon: Image.asset('assets/images/face_id.png'),
                      iconSize: 40,
                    )
                  : SizedBox.shrink()
            ],
          )
        : SizedBox.shrink();
  }

  /// Check device has support biometrics
  Future<void> _getBiometricsSupport() async {
    bool hasSupportBiometrics = false;
    try {
      hasSupportBiometrics = await _localAuth.canCheckBiometrics;
    } catch (error) {
      print(error);
    }
    if (!mounted) return;
    setState(() {
      _hasSupportBiometrics = hasSupportBiometrics;
    });
  }

  /// Get all biometrics support on
  Future<void> _getBiometricsAvailabelSupport() async {
    List<BiometricType> availabelBiometricsType = List<BiometricType>();
    bool hasSupportFingerPrint = false;
    bool hasSupportFaceId = false;
    try {
      availabelBiometricsType = await _localAuth.getAvailableBiometrics();
      if (availabelBiometricsType.contains(BiometricType.fingerprint)) {
        hasSupportFingerPrint = true;
      }
      if (Platform.isIOS &&
          availabelBiometricsType.contains(BiometricType.face)) {
        hasSupportFaceId = true;
      }
    } catch (error) {
      print(error);
    }
    if (!mounted) return;
    setState(() {
      _availabelBiometricType = availabelBiometricsType;
      _hasSupportFaceId = hasSupportFaceId;
      _hasSupportFingerPrint = hasSupportFingerPrint;
    });
  }

  /// Handle authenticate
  Future<bool> _authenticate() async {
    bool authenticated = false;
    if (!_hasEnableBiometrics) {
      showAlertDialogBiometrics();
      return authenticated;
    }
    try {
      authenticated = await _localAuth.authenticateWithBiometrics(
          localizedReason: 'use_touchid_to_authenticate'.tr,
          useErrorDialogs: true,
          stickyAuth: true);
    } on PlatformException catch (error) {
      print('Error: ${error.toString()}');
      switch (error.code) {
        case auth_error.passcodeNotSet:
          break;
        case auth_error.notEnrolled:
          break;
        case auth_error.notAvailable:
          break;
        case auth_error.otherOperatingSystem:
          break;
        case auth_error.lockedOut:
          break;
        case auth_error.permanentlyLockedOut:
          break;
      }
    }
    return authenticated;
  }

  // Check enable
  Future<void> _checkHasEnableBiometrics() async {
    _hasEnableBiometrics = await PrefsSecure().hasEnableBiometrics();
  }

  /// Show Alert Dialog Disable Biometrics
  showAlertDialogBiometrics() {
    showAlertDialog(
        context: context,
        title: 'biometrics_was_disable'.tr,
        content: 'you_have_not_set_login_using_biometrics'.tr,
        titleCancel: '',
        titleOk: 'ok'.tr,
        callBack: () {
          Navigator.of(context).pop();
        });
  }
}
