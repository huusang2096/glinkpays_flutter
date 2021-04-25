import 'dart:convert';

import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:vipay/src/models/AvailableResponse.dart';
import 'package:vipay/src/models/CurrentBalanceResponse.dart';
import 'package:vipay/src/models/TransactionResponse.dart';
import 'package:vipay/src/models/UploadImageResponse.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/currency_convert_response.dart';
import 'package:vipay/src/models/request_money/request_currency_response.dart';
import 'package:vipay/src/models/search_user_response.dart';

import 'package:vipay/src/models/transactionDetail.dart';
import 'package:vipay/src/models/transfer_money/send_amount_info.dart';
import 'package:vipay/src/models/transfer_money/send_currency_response.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/models/voucher/voucher_type.dart';


class Network {
  HttpWithMiddleware http = HttpWithMiddleware.build(middlewares: [
    HttpLogger(logLevel: LogLevel.BODY),
  ]);

  /// If T is a List, K is the subtype of the list.
  Future<T> get<T, K>(String url, {Map<String, String> headers}) async {
    try {
      final response = await http.get(url, headers: headers);
      return fromJson<T, K>(json.decode(response.body));
    } catch (error) {
      print(error);
    }
    throw Exception("load_data_failed");
  }

  Future<T> post<T, K>(String url, Map<String, dynamic> params,
      {Map<String, String> headers}) async {
    final response =
        await http.post(url, headers: headers, body: json.encode(params));
    if (response.statusCode >= 200 && response.statusCode < 402) {
      return fromJson<T, K>(json.decode(response.body));
    } else {
      final baseResponse = BaseModel.fromJson(json.decode(response.body));
      if (baseResponse != null) {
        throw baseResponse.message;
      } else {
        throw Exception('load_data_failed');
      }
    }
  }

  Future<T> put<T, K>(String url, Map<String, dynamic> params,
      {Map<String, String> headers, bool isEncoding = false}) async {
    final response = await http.put(url,
        headers: headers,
//        body: isEncoding ? JsonEncoder().convert(params) : params);
        body: json.encode(params));
    if (response.statusCode >= 200 && response.statusCode < 400) {
      return fromJson<T, K>(json.decode(response.body));
    } else {
      print("url: $url \n params: $params");
      throw Exception('load_data_failed');
    }
  }

  Future<T> delete<T, K>(String url, {Map<String, String> headers}) async {
//    print(params);
    final response = await http.delete(url, headers: headers);
//    print(response.body.toString());
    if (response.statusCode >= 200 && response.statusCode < 400) {
      // If the call to the server was successful, parse the JSON
      return fromJson<T, K>(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('load_data_failed');
    }
  }

  /// If T is a List, K is the subtype of the list.
  static T fromJson<T, K>(dynamic json) {
    if (json is Iterable) {
      return _fromJsonList<K>(json) as T;
    } else if (T == BaseModel) {
      return BaseModel.fromJson(json) as T;
    } else if (T == UserResponse) {
      return UserResponse.fromJson(json) as T;
    } else if (T == TransactionResponse) {
      return TransactionResponse.fromJson(json) as T;
    } else if (T == AvailableResponse) {
      return AvailableResponse.fromJson(json) as T;
    } else if (T == TransactionDetailResponse) {
      return TransactionDetailResponse.fromJson(json) as T;
    } else if (T == SendCurrencyResponse) {
      return SendCurrencyResponse.fromJson(json) as T;
    } else if (T == SendAmountInfoResponse) {
      return SendAmountInfoResponse.fromJson(json) as T;
    } else if (T == RequestCurrencyResponse) {
      return RequestCurrencyResponse.fromJson(json) as T;
    } else if (T == UploadImageResponse) {
      return UploadImageResponse.fromJson(json) as T;
    } else if (T == CurrentBalanceResponse) {
      return CurrentBalanceResponse.fromJson(json) as T;
    } else if (T == SearchUserResponse) {
      return SearchUserResponse.fromJson(json) as T;
    } else if (T == CurrencyConvertResponse) {
      return CurrencyConvertResponse.fromJson(json) as T;
    } else if (T == VoucherTypeResponse) {
      return VoucherTypeResponse.fromJson(json) as T;
    } else {
      throw Exception("Unknown class");
    }
  }

  static List<K> _fromJsonList<K>(List jsonList) {
    if (jsonList == null) {
      return null;
    }

    List<K> output = List();

    for (Map<String, dynamic> json in jsonList) {
      output.add(fromJson(json));
    }

    return output;
  }
}

Future<T> handleResponse<T>(BaseResponse response) async {
  if (response.hasData()) {
    return response as T;
  } else if (response.message != null) {
    throw response.message;
  }
  throw 'failed_request';
}
