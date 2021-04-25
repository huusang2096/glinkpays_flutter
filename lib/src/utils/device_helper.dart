import 'package:device_info/device_info.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeviceHelper {
  BuildContext _context;

  BuildContext get context => _context;

  static final DeviceHelper _singleton = DeviceHelper._internal();

  factory DeviceHelper() {
    return _singleton;
  }

  setContext(BuildContext context) {
    _context = context;
  }

  DeviceHelper._internal();

  Future<String> getId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }
}
