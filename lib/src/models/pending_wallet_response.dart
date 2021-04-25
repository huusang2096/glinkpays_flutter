// To parse this JSON data, do
//
//     final pendingWalletResponse = pendingWalletResponseFromJson(jsonString);

import 'dart:convert';

class PendingWalletResponse {
  PendingWalletResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<PendingWallet> data;

  factory PendingWalletResponse.fromRawJson(String str) =>
      PendingWalletResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PendingWalletResponse.fromJson(Map<String, dynamic> json) =>
      PendingWalletResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<PendingWallet>.from(
                json["data"].map((x) => PendingWallet.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class PendingWallet {
  PendingWallet({
    this.id,
    this.currency,
    this.balance,
    this.availableAt,
  });

  int id;
  String currency;
  int balance;
  String availableAt;

  factory PendingWallet.fromRawJson(String str) =>
      PendingWallet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PendingWallet.fromJson(Map<String, dynamic> json) => PendingWallet(
        id: json["id"] == null ? null : json["id"],
        currency: json["currency"] == null ? null : json["currency"],
        balance: json["balance"] == null ? null : json["balance"],
        availableAt: json["available_at"] == null ? null : json["available_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "currency": currency == null ? null : currency,
        "balance": balance == null ? null : balance,
        "available_at": availableAt == null ? null : availableAt,
      };
}
