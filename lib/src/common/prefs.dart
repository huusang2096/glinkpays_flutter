import 'package:vipay/src/models/SettingResponse.dart';
import 'package:vipay/src/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static saveUser(User user) async {
    var jsonString = user.toRawJson();
    (await _sharePref()).setString(_PREF_USER, jsonString);
  }

  static Future<User> getUser() async {
    var jsonString = (await _sharePref()).getString(_PREF_USER);
    if (jsonString != null && jsonString.isNotEmpty) {
      User user = User.fromRawJson(jsonString);
      return user;
    }
    return null;
  }

  static saveToken(String token) async {
    (await _sharePref()).setString(_PREF_TOKEN, token);
  }

  static getToken() async {
    var token = (await _sharePref()).getString(_PREF_TOKEN);
    if (token == null) {
      token = "";
    }
    return token;
  }

  static Future<SharedPreferences> _sharePref() async {
    return SharedPreferences.getInstance();
  }

  static saveHasFirstRun({hasFirstRun}) async {
    (await _sharePref()).setBool(_PREF_FIRST_RUN, hasFirstRun);
  }

  static hasFirstRun() async {
    var hasFirstRun = (await _sharePref()).getBool(_PREF_FIRST_RUN);
    return (hasFirstRun ??= true);
  }

  static logout() async {
    (await _sharePref()).clear();
  }

  static saveLanguages(String languageCode) async {
    (await _sharePref()).setString(_LANGUAGES, languageCode);
  }

  static Future<String> getLanguages() async {
    var languages = (await _sharePref()).getString(_LANGUAGES);
    return languages;
  }

  static saveSetting(SettingFood setting) async {
    var jsonString = setting.toRawJson();
    (await _sharePref()).setString(_SETTINGS, jsonString);
  }

  static Future<SettingFood> getSetting() async {
    final jsonString = (await _sharePref()).getString(_SETTINGS);
    if (jsonString != null && jsonString.isNotEmpty) {
      SettingFood setting = SettingFood.fromRawJson(jsonString);
      return setting;
    }
    return null;
  }

  static const _PREF_USER = "_PREF_USER";
  static const _PREF_TOKEN = "_PREF_TOKEN";
  static const _PREF_FIRST_RUN = "_PREF_FIRST_RUN";
  static const APPLE_ID = "APPLE_ID";
  static const APPLE_EMAIL = "APPLE_EMAIL";
  static const APPLE_NAME = "APPLE_NAME";
  static const APPLE_IDENTITY_TOKEN = "APPLE_IDENTITY_TOKEN";
  static const APPLE_AUTHORIZATION_CODE = "APPLE_AUTHORIZATION_CODE";
  static const _LANGUAGES = "LANGUAGES";
  static const _SETTINGS = "SETTINGS";
}
