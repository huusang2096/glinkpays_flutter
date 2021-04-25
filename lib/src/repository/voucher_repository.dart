import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/models/voucher/voucher_order.dart';
import 'package:vipay/src/repository/user_repository.dart';

HttpWithMiddleware client = HttpWithMiddleware.build(
    middlewares: [HttpLogger(logLevel: LogLevel.BODY)]);

Future<Stream<VoucherOrderResponse>> getMyVouchers() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url = '${apiBaseUrl}voucher_orders?$_apiToken';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) {
    return VoucherOrderResponse.fromJson(data);
  });
}

Future<BaseModel> useVoucher({String code}) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url = '${apiBaseUrl}use-voucher?$_apiToken';
  Map data = {'code': code};
  final response = await client.post(url,
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      body: json.encode(data));
  return BaseModel.fromJson(json.decode(response.body));
}
