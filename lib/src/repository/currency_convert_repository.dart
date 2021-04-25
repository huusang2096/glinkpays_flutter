import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/currency_convert_response.dart';
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

Future<CurrencyConvertResponse> currencyConvert(
    {double amount, Wallet fromWallet, Wallet toWallet}) async {
  String url = '${apiBaseUrl}get-currencies-exchange-rate';
  final headers = await _buildHeader();
  final params = {
    'amount': amount,
    'from_wallet_currency_id': fromWallet.currId,
    "to_wallet": toWallet.currId,
    "from_wallet_currency_code": fromWallet.currCode
  };
  return network.post<CurrencyConvertResponse, Null>(url, params,
      headers: headers);
}
