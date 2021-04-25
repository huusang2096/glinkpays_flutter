// To parse this JSON data, do
//
//     final withdrawMoneyResponse = withdrawMoneyResponseFromJson(jsonString);

import 'dart:convert';

class WithdrawMoneyResponse {
  WithdrawMoneyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<dynamic> data;

  factory WithdrawMoneyResponse.fromRawJson(String str) =>
      WithdrawMoneyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WithdrawMoneyResponse.fromJson(Map<String, dynamic> json) =>
      WithdrawMoneyResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<dynamic>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x)),
      };
}
