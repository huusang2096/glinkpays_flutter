import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_logger/http_logger.dart';
import 'package:http_logger/logging_middleware.dart';
import 'package:http_middleware/http_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/cart.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/repository/user_repository.dart' as userRepo;

HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

Future<Stream<CartResponse>> getCart() async {
  User _user = userRepo.currentUser;
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}carts?${_apiToken}with=food;extras&search=user_id:${_user.id}&searchFields=user_id:=';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) {
    return CartResponse.fromJson(data);
  });
}

Future<BaseModel> addCart(Cart cart) async {
  User _user = userRepo.currentUser;
  final String _apiToken = 'api_token=${_user.apiToken}';
//  cart.userId = _user.userId;
  final String url = '${apiBaseUrl}carts?$_apiToken';
  final client = new http.Client();
  final response = await client.post(
    url,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    body: json.encode(cart.addToCartRequest()),
  );
  return BaseModel.fromJson(json.decode(response.body));
}

Future<BaseModel> removeCart(Cart cart) async {
  User _user = userRepo.currentUser;
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}carts/${cart.id}?$_apiToken';
  final client = new http.Client();
  final response = await client.delete(
    url,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );
  return BaseModel.fromJson(json.decode(response.body));
}
