// To parse this JSON data, do
//
//     final getBalanceAvailable = getBalanceAvailableFromJson(jsonString);

import 'dart:convert';

class GetBalanceAvailableResponse {
  GetBalanceAvailableResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Wallets data;

  factory GetBalanceAvailableResponse.fromRawJson(String str) =>
      GetBalanceAvailableResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetBalanceAvailableResponse.fromJson(Map<String, dynamic> json) =>
      GetBalanceAvailableResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Wallets.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Wallets {
  Wallets({
    this.wallets,
  });

  List<Wallet> wallets;

  factory Wallets.fromRawJson(String str) => Wallets.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Wallets.fromJson(Map<String, dynamic> json) => Wallets(
        wallets: json["wallets"] == null
            ? null
            : List<Wallet>.from(json["wallets"].map((x) => Wallet.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "wallets": wallets == null
            ? null
            : List<dynamic>.from(wallets.map((x) => x.toJson())),
      };
}

class Wallet {
  Wallet({
    this.currId,
    this.balance,
    this.isDefault,
    this.currName,
    this.currCode,
  });

  int currId;
  String balance;
  String isDefault;
  String currName;
  String currCode;

  factory Wallet.fromRawJson(String str) => Wallet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        currId: json["curr_id"] == null ? null : json["curr_id"],
        balance: json["balance"] == null ? null : json["balance"],
        isDefault: json["is_default"] == null ? null : json["is_default"],
        currName: json["curr_name"] == null ? null : json["curr_name"],
        currCode: json["curr_code"] == null ? null : json["curr_code"],
      );

  Map<String, dynamic> toJson() => {
        "curr_id": currId == null ? null : currId,
        "balance": balance == null ? null : balance,
        "is_default": isDefault == null ? null : isDefault,
        "curr_name": currName == null ? null : currName,
        "curr_code": currCode == null ? null : currCode,
      };
}
