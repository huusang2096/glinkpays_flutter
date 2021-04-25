import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/credit_card.dart';
import 'package:vipay/src/models/order.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/repository/user_repository.dart';

HttpWithMiddleware client1 = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

Future<Stream<Order>> getOrders() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}orders?${_apiToken}with=user;foodOrders;foodOrders.food;orderStatus&search=user.id:${_user.id}&searchFields=user.id:=&orderBy=id&sortedBy=desc';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Order.fromJSON(data);
  });
}

Future<Stream<Order>> getRecentOrders() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}orders?${_apiToken}with=user;foodOrders;foodOrders.food;orderStatus&search=user.id:${_user.id}&searchFields=user.id:=&orderBy=updated_at&sortedBy=desc&limit=3';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Order.fromJSON(data);
  });
}

Future<BaseModel> addOrder(Order order) async {
  User _user = await getCurrentUser();
  CreditCard _creditCard = await getCreditCard();
  order.user = _user;
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}orders?$_apiToken';
  final client = new http.Client();
  Map params = order.toOrderRequest();
  params.addAll(_creditCard.toMap());
  print(json.encode(params));
  final response = await client.post(
    url,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    body: json.encode(params),
  );
  return BaseModel.fromJson(json.decode(response.body));
}
