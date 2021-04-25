// To parse this JSON data, do
//
//     final currentBalanceResponse = currentBalanceResponseFromJson(jsonString);

import 'dart:convert';

class CurrentBalanceResponse {
  bool success;
  String message;
  CurrentBalance data;

  CurrentBalanceResponse({
    this.success,
    this.message,
    this.data,
  });

  factory CurrentBalanceResponse.fromRawJson(String str) => CurrentBalanceResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentBalanceResponse.fromJson(Map<String, dynamic> json) => CurrentBalanceResponse(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : CurrentBalance.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : data.toJson(),
  };
}

class CurrentBalance {
  String formattedPhone;
  String userDefaultWalletCode;
  String currentBalance;
  int status;

  CurrentBalance({
    this.formattedPhone,
    this.userDefaultWalletCode,
    this.currentBalance,
    this.status,
  });

  factory CurrentBalance.fromRawJson(String str) => CurrentBalance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CurrentBalance.fromJson(Map<String, dynamic> json) => CurrentBalance(
    formattedPhone: json["formatted_phone"] == null ? "" : json["formatted_phone"],
    userDefaultWalletCode: json["user_default_wallet_code"] == null ? null : json["user_default_wallet_code"],
    currentBalance: json["current_balance"] == null ? null : json["current_balance"],
    status: json["status"] == null ? null : json["status"],
  );

  Map<String, dynamic> toJson() => {
    "formatted_phone": formattedPhone == null ? "" : formattedPhone,
    "user_default_wallet_code": userDefaultWalletCode == null ? null : userDefaultWalletCode,
    "current_balance": currentBalance == null ? null : currentBalance,
    "status": status == null ? null : status,
  };
}
