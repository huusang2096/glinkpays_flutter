// To parse this JSON data, do
//
//     final sendMoneyRequest = sendMoneyRequestFromJson(jsonString);

import 'dart:convert';

class SendMoneyRequest {
  SendMoneyRequest({
    this.currencyId,
    this.amount,
    this.totalFees,
    this.receiverId,
    this.note,
  });

  int currencyId;
  String amount;
  int totalFees;
  int receiverId;
  String note;

  factory SendMoneyRequest.fromRawJson(String str) =>
      SendMoneyRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SendMoneyRequest.fromJson(Map<String, dynamic> json) =>
      SendMoneyRequest(
        currencyId: json["currency_id"] == null ? null : json["currency_id"],
        amount: json["amount"] == null ? null : json["amount"],
        totalFees: json["totalFees"] == null ? null : json["totalFees"],
        receiverId: json["receiver_id"] == null ? null : json["receiver_id"],
        note: json["note"] == null ? null : json["note"],
      );

  Map<String, dynamic> toJson() => {
        "currency_id": currencyId == null ? null : currencyId,
        "amount": amount == null ? null : amount,
        "totalFees": totalFees == null ? null : totalFees,
        "receiver_id": receiverId == null ? null : receiverId,
        "note": note == null ? null : note,
      };
}
