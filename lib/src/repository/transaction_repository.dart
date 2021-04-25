import 'package:flutter/cupertino.dart';
import 'package:http_logger/http_logger.dart';
import 'package:http_logger/log_level.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/TransactionResponse.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/transactionDetail.dart';
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

Future<TransactionResponse> getTransaction() async {
  String url = '${apiBaseUrl}activityall';
  url += "?type=allTransactions";
  final headers = await _buildHeader();
  return network.get<TransactionResponse, Null>(url, headers: headers);
}

Future<TransactionDetailResponse> getTransactionDetail(
    {@required String id}) async {
  String url = '${apiBaseUrl}transaction-details';
  url += "?tr_id=$id";
  final headers = await _buildHeader();
  return network.get<TransactionDetailResponse, Null>(url, headers: headers);
}

Future<BaseModel> cancelTransactionRequest(
    {@required String emailOrPhone, @required String transactionID}) async {
  String url = '${apiBaseUrl}cancel-request';
  final headers = await _buildHeader();
  final params = {'tr_email_or_phone': emailOrPhone, 'tr_id': transactionID};
  return network.post<BaseModel, Null>(url, params, headers: headers);
}

Future<BaseModel> acceptRequestPaymentPay(
    {@required int transactionID,
    double amount,
    int currencyID,
    double totalFees,
    String emailOrPhone,
    String verifyToken}) async {
  String url = '${apiBaseUrl}accept-request-payment-pay';
  final headers = await _buildHeader();
  final params = {
    'tr_ref_id': transactionID,
    'amount': amount.abs(),
    'currency_id': currencyID,
    'total_fees': totalFees,
    'tr_email_or_phone': emailOrPhone,
    "verify_token": verifyToken
  };
  return network.post<BaseModel, Null>(url, params, headers: headers);
}
