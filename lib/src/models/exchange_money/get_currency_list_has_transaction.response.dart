// To parse this JSON data, do
//
//     final getCurrencyListHasTransaction = getCurrencyListHasTransactionFromJson(jsonString);

import 'dart:convert';

class GetCurrencyListHasTransaction {
  GetCurrencyListHasTransaction({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory GetCurrencyListHasTransaction.fromRawJson(String str) =>
      GetCurrencyListHasTransaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetCurrencyListHasTransaction.fromJson(Map<String, dynamic> json) =>
      GetCurrencyListHasTransaction(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.currencyList,
    this.defaultWalletCurrencyId,
  });

  CurrencyList currencyList;
  int defaultWalletCurrencyId;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        currencyList: json["currency_list"] == null
            ? null
            : CurrencyList.fromJson(json["currency_list"]),
        defaultWalletCurrencyId: json["default_wallet_currency_id"] == null
            ? null
            : json["default_wallet_currency_id"],
      );

  Map<String, dynamic> toJson() => {
        "currency_list": currencyList == null ? null : currencyList.toJson(),
        "default_wallet_currency_id":
            defaultWalletCurrencyId == null ? null : defaultWalletCurrencyId,
      };
}

class CurrencyList {
  CurrencyList({
    this.the1,
  });

  The1 the1;

  factory CurrencyList.fromRawJson(String str) =>
      CurrencyList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrencyList.fromJson(Map<String, dynamic> json) => CurrencyList(
        the1: json["1"] == null ? null : The1.fromJson(json["1"]),
      );

  Map<String, dynamic> toJson() => {
        "1": the1 == null ? null : the1.toJson(),
      };
}

class The1 {
  The1({
    this.id,
    this.code,
  });

  int id;
  String code;

  factory The1.fromRawJson(String str) => The1.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The1.fromJson(Map<String, dynamic> json) => The1(
        id: json["id"] == null ? null : json["id"],
        code: json["code"] == null ? null : json["code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "code": code == null ? null : code,
      };
}
