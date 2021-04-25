import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PrefsSecure {
  final storage = FlutterSecureStorage();

  static final PrefsSecure _prefsSecure = PrefsSecure._internal();

  factory PrefsSecure() {
    return _prefsSecure;
  }

  PrefsSecure._internal();

  /// 0: Disable, 1: Enable
  void saveEnableAuthorized({String hasEnable}) async {
    await storage.write(key: PrefsSecure.enableAuthorized, value: hasEnable);
  }

  Future<bool> hasEnableBiometrics() async {
    var hasEnable = await storage.read(key: PrefsSecure.enableAuthorized);
    return (hasEnable ??= '0') == '1' ? true : false;
  }

  /// 0: Hasn't show, 1: Has Show
  void saveHasShowDialogBiometrics({hasShow}) async {
    await storage.write(key: PrefsSecure.showDialogBiometrics, value: hasShow);
  }

  Future<bool> hasShowDialogBiometrics() async {
    var hasShow = await storage.read(key: PrefsSecure.showDialogBiometrics);
    return (hasShow ??= '0') == '1' ? true : false;
  }

  void savePassword({password}) async {
    await storage.write(key: PrefsSecure.password, value: password);
  }

  Future<String> getPassword() async {
    return await storage.read(key: PrefsSecure.password);
  }

  void saveUserName({userName}) async {
    await storage.write(key: PrefsSecure.userName, value: userName);
  }

  Future<String> getUserName() async {
    return await storage.read(key: PrefsSecure.userName);
  }

  void saveFullName({fullName}) async {
    await storage.write(key: PrefsSecure.fullName, value: fullName);
  }

  Future<String> getFullName() async {
    return await storage.read(key: PrefsSecure.fullName);
  }

  /// Using when login with other account
  void deleteAll() async {
    await storage.deleteAll();
  }

  // Keys
  static String enableAuthorized = 'HAS_ENABLE_AUTHORIZED';
  static String password = 'PASSWORD';
  static String userName = 'USER_NAME';
  static String fullName = 'FULL_NAME';
  static String showDialogBiometrics = 'HAS_SHOW_DIALOG_BIOMETRICS';
  static String firstRun = 'FIRST_RUN';
}
