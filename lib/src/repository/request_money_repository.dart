import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/request_money/request_currency_response.dart';
import 'package:vipay/src/network/network.dart';
import 'package:vipay/src/repository/user_repository.dart';

final network = Network();

_buildHeader() async {
  return {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + await getUserToken()
  };
}

Future<String> getUserToken() {
  return getCurrentUser().then((user) => user.apiToken ??= '');
}

Future<RequestCurrencyResponse> getRequestCurrency() async {
  final url = '${apiBaseUrl}get-request-currency';
  final headers = await _buildHeader();
  return network.get<RequestCurrencyResponse, Null>(url, headers: headers);
}

Future<BaseModel> requestMoneyEmailCheck({receiverEmail}) async {
  final url = '${apiBaseUrl}request-money-email-check';
  final headers = await _buildHeader();
  final params = {'receiverEmail': receiverEmail};
  return network.post<BaseModel, Null>(url, params, headers: headers);
}

Future<BaseModel> requestMoneyPhoneCheck({receiverPhone}) async {
  final url = '${apiBaseUrl}request-money-phone-check';
  final headers = await _buildHeader();
  final params = {'receiverPhone': receiverPhone};
  return network.post<BaseModel, Null>(url, params, headers: headers);
}

Future<BaseModel> requestMoneyPay(
    {emailOrPhone, amount, currencyId, note, verifyToken}) async {
  final url = '${apiBaseUrl}request-money-pay';
  final headers = await _buildHeader();
  final params = {
    'emailOrPhone': emailOrPhone,
    'amount': amount,
    'currencyId': currencyId,
    'note': note,
    "verify_token": verifyToken
  };
  return network.post<BaseModel, Null>(url, params, headers: headers);
}
