import 'package:vipay/src/models/login_response.dart';
import 'package:vipay/src/models/request/login_request_model.dart';
import 'package:vipay/src/models/user.dart';
import 'package:simplest/simplest.dart';

class AppPref extends BasePrefs {
  String get langCode => getValueForKey(PrefKey.langCode) ?? 'vi';

  static Future<AppPref> instance() async {
    final _appPref = AppPref();
    await _appPref.init();
    return _appPref;
  }

  String get token {
    // return 'sqfgF7yYYbE2inm0wQJ8igf1eC64Nz3Ec1IWxjYG0fB8woSSWhEfu84kx1fM';
    return getValueForKey(PrefKey.token) ?? '';
  }

  Future<void> setToken(String token) {
    return setValueForKey(PrefKey.token, token);
  }

  UserResponse get getUser {
    final value = getValueForKey(PrefKey.userModel);
    if (value == null) {
      return null;
    }
    return UserResponse.fromRawJson(value);
  }

  void setUser(UserResponse value) {
    setValueForKey(PrefKey.userModel, value);
  }

  Future<void> logout() {
    setToken('');
  }

  setUserId(String userId) {
    return setValueForKey(PrefKey.userId, userId);
  }

  String get getUserId {
    return getValueForKey(PrefKey.userId);
  }

  String get fcmToken {
    return getValueForKey(PrefKey.fcmToken) ?? '';
  }

  set fcmToken(String value) {
    setValueForKey(PrefKey.fcmToken, value);
  }

  LoginRequest get loginRequest {
    final jsonStr = getValueForKey(PrefKey.loginRequest);
    if (jsonStr == null || jsonStr.isEmpty) {
      return null;
    }
    return LoginRequest.fromRawJson(jsonStr);
  }

  set loginRequest(LoginRequest request) {
    if (request == null) {
      prefs.remove(PrefKey.loginRequest);
      return;
    }

    setValueForKey(PrefKey.loginRequest, request);
  }

  String get userName {
    final name = getValueForKey(PrefKey.userName);
    if (name == null || name.isEmpty) {
      return null;
    }
    return name;
  }

  set userName(String name) {
    /* if (userName != null) {
      return;
    }*/
    if (name == null) {
      prefs.remove(PrefKey.userName);
      return;
    }
    setValueForKey(PrefKey.userName, name);
  }

  set isEnabledBioLogin(bool isEnabled) {
    setValueForKey(PrefKey.bioLogin, isEnabled);
  }

  bool get isEnabledBioLogin {
    return getValueForKey<bool>(PrefKey.bioLogin) ?? false;
  }

  set timeResendEmail(int miliseconds) {
    setValueForKey(PrefKey.resendEmail, miliseconds);
  }

  int get timeResendEmail {
    return getValueForKey<int>(PrefKey.resendEmail);
  }

  set langCode(String code) => setValueForKey(PrefKey.langCode, code);

  void statusVerifyDocument(bool isVerify) {
    setValueForKey(PrefKey.isVerifyDocument, isVerify);
  }

  bool get isVerifyDocument {
    return getValueForKey<bool>(PrefKey.isVerifyDocument) ?? false;
  }
}

class PrefKey {
  static const String token = 'TOKEN';
  static const String fcmToken = 'FCM_TOKEN';
  static const String userId = 'USER_ID';
  static const String userModel = 'USER_MODEL';
  static const String loginRequest = 'LOGIN_REQUEST';
  static const String userName = 'USER_NAME';
  static const String langCode = 'LANG_CODE';
  static const String bioLogin = "BIO_LOGIN";
  static const String isVerifyDocument = 'IS_VERIFY_DOCUMENT';
  static const String resendEmail = 'RESEND_EMAIL';
}
