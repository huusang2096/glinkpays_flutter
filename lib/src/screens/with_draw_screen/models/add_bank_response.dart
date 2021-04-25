// To parse this JSON data, do
//
//     final addBankRequest = addBankRequestFromJson(jsonString);

import 'dart:convert';

import 'package:vipay/src/screens/deposit/models/bank_account_response_model.dart';

class AddBankResponse {
  AddBankResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Bank data;

  factory AddBankResponse.fromRawJson(String str) =>
      AddBankResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddBankResponse.fromJson(Map<String, dynamic> json) =>
      AddBankResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Bank.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}
