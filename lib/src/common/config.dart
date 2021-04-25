import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

export 'resources.dart';
export 'style.dart';

const kAppName = 'ViPay';

const String apiBaseUrl = 'http://51.79.143.110:8888/';
const baseUrlWebview = 'http://51.79.143.110:8888/';

const googleMapsKey = 'AIzaSyBuno_inBflmQJjSrHWvkwpUwexZ8W-FLw';
const String apiUrlImage = 'http://51.79.143.110:8888/storage/';

const String contactNumber = '38998839706';
const String contactEmail = 'contato@testest.com';
const String BASE_URL = 'https://payment.glinkpay.vip/';

final currencyFormatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');
final dateFormatter = DateFormat('yyyy-MM-dd');
final hourFormatter = DateFormat('h:mm a');
final fullDateFormatter = DateFormat('yyyy-MM-dd hh:mm:ss');

const supportedLocales = [
  Locale('en'),
  Locale('vi'),
  Locale('af'),
  Locale('ar'),
  Locale('bn'),
  Locale('ca'),
  Locale('cn'),
  Locale('de'),
  Locale('es'),
  Locale('fil'),
  Locale('fr'),
  Locale('hi'),
  Locale('id'),
  Locale('it'),
  Locale('ja'),
  Locale('ms'),
  Locale('pt'),
  Locale('ru'),
];

@Deprecated('this method will be remove in the future, use key.tr instead')
localizedText(BuildContext context, String key, {List<dynamic> args}) {
  if (args != null) {
    return key.trArgs(args);
  }
  return key.tr;
}

@LazySingleton(as: IAppConfig)
class AppConfig extends IAppConfig {
  @override
  String get appName => kAppName;

  @override
  String get baseUrl => apiBaseUrl;

  @override
  String get env => 'development';
}
