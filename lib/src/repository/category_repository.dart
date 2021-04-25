import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/category.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';
import 'package:vipay/src/repository/user_repository.dart';

HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

Future<Stream<CategoryResponse>> getCategories() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  print("TOKEN " + _apiToken);
  final String url = '${apiBaseUrl}api/coupon/categories?$_apiToken';
  print("URL " + url);

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) => CategoryResponse.fromJson(data));
}

Future<Stream<CategoryResponse>> getCategory(String id) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}api/coupon/categories/$id?$_apiToken';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .map((data) => CategoryResponse.fromJson(data));
}

Future<Stream<VoucherType>> getVoucherType() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}api/coupon/food_types?$_apiToken';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) => VoucherType.fromJson(data));
}
