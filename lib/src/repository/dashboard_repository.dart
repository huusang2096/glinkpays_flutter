import 'package:http_logger/http_logger.dart';
import 'package:http_logger/log_level.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/CurrentBalanceResponse.dart';
import 'package:vipay/src/network/network.dart';
import 'package:vipay/src/repository/user_repository.dart';

final network = Network();

HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

_buildHeader() async {
  return {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + await getUserToken()
  };
}

Future<String> getUserToken() {
  return getCurrentUser().then((user) => user.apiToken ??= '');
}

Future<AvailableResponse> getAvailable() async {
  String url = '${apiBaseUrl}available-balance';
  final headers = await _buildHeader();
  return network.get<AvailableResponse, Null>(url, headers: headers);
}

Future<CurrentBalanceResponse> getCurrentBalance() async {
  String url = '${apiBaseUrl}current-balance';
  final headers = await _buildHeader();
  return network.get<CurrentBalanceResponse, Null>(url, headers: headers);
}
