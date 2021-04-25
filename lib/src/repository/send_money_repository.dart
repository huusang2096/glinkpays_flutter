import 'package:flutter/foundation.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/transfer_money/send_amount_info.dart';
import 'package:vipay/src/models/transfer_money/send_currency_response.dart';

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

Future<SendCurrencyResponse> getCurrencies() async {
  String url = '${apiBaseUrl}get-send-money-currencies';
  final headers = await _buildHeader();
  return network.get<SendCurrencyResponse, Null>(url, headers: headers);
}

Future<SendAmountInfoResponse> checkSendMoneyAmountLimit(
    {sendCurrency, sendAmount}) async {
  String url = '${apiBaseUrl}check-send-money-amount-limit';
  final headers = await _buildHeader();
  final params = {'sendCurrency': sendCurrency, 'sendAmount': sendAmount};
  return network.post<SendAmountInfoResponse, Null>(url, params,
      headers: headers);
}

Future<BaseModel> sendMoneyEmailCheck({receiverEmail}) async {
  String url = '${apiBaseUrl}send-money-email-check';
  final headers = await _buildHeader();
  final params = {'receiverEmail': receiverEmail};
  return network.post<BaseModel, Null>(url, params, headers: headers);
}

Future<BaseModel> sendMoneyPhoneCheck({receiverPhone}) async {
  String url = '${apiBaseUrl}send-money-phone-check';
  final headers = await _buildHeader();
  final params = {'receiverPhone': receiverPhone};
  return network.post<BaseModel, Null>(url, params, headers: headers);
}

Future<BaseModel> sendMoneyPay(
    {@required emailOrPhone,
    @required currencyId,
    @required amount,
    @required totalFees,
    @required verifyToken}) async {
  String url = '${apiBaseUrl}send-money-pay';
  final headers = await _buildHeader();
  final params = {
    'emailOrPhone': emailOrPhone,
    'currency_id': currencyId,
    'amount': amount,
    'totalFees': totalFees,
    "verify_token": verifyToken
  };
  return network.post<BaseModel, Null>(url, params, headers: headers);
}
