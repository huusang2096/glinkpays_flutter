// To parse this JSON data, do
//
//     final withdrawMoneyRequest = withdrawMoneyRequestFromJson(jsonString);

import 'dart:convert';

class WithdrawMoneyRequest {
  WithdrawMoneyRequest({
    this.bankId,
    this.currencyId,
    this.amount,
  });

  int bankId;
  int currencyId;
  int amount;

  factory WithdrawMoneyRequest.fromRawJson(String str) =>
      WithdrawMoneyRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WithdrawMoneyRequest.fromJson(Map<String, dynamic> json) =>
      WithdrawMoneyRequest(
        bankId: json["bank_id"] == null ? null : json["payout_setting_id"],
        currencyId: json["currency_id"] == null ? null : json["currency_id"],
        amount: json["amount"] == null ? null : json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "bank_id": bankId == null ? null : bankId,
        "currency_id": currencyId == null ? null : currencyId,
        "amount": amount == null ? null : amount,
      };
}
