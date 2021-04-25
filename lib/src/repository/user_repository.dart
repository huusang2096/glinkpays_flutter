import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/credit_card.dart';
import 'package:vipay/src/models/request/login_request_model.dart';
import 'package:vipay/src/models/request/register_request_model.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/network/network.dart';
import 'package:vipay/src/utils/device_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

final network = Network();

User currentUser = new User();

_buildHeader() async {
  return {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + await getUserToken()
  };
}

HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

Future<String> getUserToken() {
  return getCurrentUser().then((user) => user.apiToken ??= '');
}

Future<UserResponse> login({@required LoginRequest loginRequest}) async {
  final String url = '${apiBaseUrl}login';
  final params = {
    'email': loginRequest.email,
    'password': loginRequest.password,
    'device_id': await DeviceHelper().getId()
  };
  final headers = await _buildHeader();
  return network.post<UserResponse, Null>(url, params, headers: headers);
}

Future<BaseModel> register(RegisterRequest request) async {
  final baseURL = apiBaseUrl;
  final String registerURL = '${baseURL}registration';
  final params = {
    'first_name': request.firstName,
    'last_name': request.lastName,
    'email': request.email,
    'password': request.password,
    'type': request.type ??= 'user'
  };
  final headers = await _buildHeader();
  return network.post<BaseModel, Null>(registerURL, params, headers: headers);
}

Future<void> logout() async {
  final String url = '${apiBaseUrl}logout';
  final headers = await _buildHeader();
  await network.post<BaseModel, Null>(url, null, headers: headers);
  currentUser = new User();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('current_user');
}

void setCurrentUser(jsonString) async {
  if (json.decode(jsonString)['data'] != null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        'current_user', json.encode(json.decode(jsonString)['data']));
  }
}

void updateUser(User user) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('current_user', user.toRawJson());
  // TODO: Handle update user
  // eventBus.fire(EventUpdateUser());
}

Future<void> setCreditCard(CreditCard creditCard) async {
  if (creditCard != null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('credit_card', json.encode(creditCard.toMap()));
  }
}

Future<User> getCurrentUser() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
//  prefs.clear();
  if (prefs.containsKey('current_user')) {
    currentUser = User.fromJson(json.decode(await prefs.get('current_user')));
  }
  return currentUser;
}

Future<CreditCard> getCreditCard() async {
  CreditCard _creditCard = new CreditCard();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('credit_card')) {
    _creditCard =
        CreditCard.fromJSON(json.decode(await prefs.get('credit_card')));
  }
  return _creditCard;
}

Future<UserResponse> update(User user) async {
  String url = '${apiBaseUrl}update-user-profile';
  final headers = await _buildHeader();
  final params = {
    "first_name": user.firstName,
    "last_name": user.lastName,
    "email": user.email,
    "phone": user.phone.replaceAll("+84", ""),
    "formatted_phone": user.phone,
    "user_default_country": "Viet Nam",
    "user_carrier_code": "84",
    "country": 232,
    "birthday": user.birthday,
    "address": user.address1,
    "city": user.city,
    "state": user.state,
    "timezone": "Asia/Ho_Chi_Minh",
    "default_wallet": 1
  };
  return network.post<UserResponse, Null>(url, params, headers: headers);
}

Future<UserResponse> getUserProfile() async {
  String url = '${apiBaseUrl}get-user-profile';
  final headers = await _buildHeader();
  return network.get<UserResponse, Null>(url, headers: headers);
}
