// To parse this JSON data, do
//
//     final deleteBankResponse = deleteBankResponseFromJson(jsonString);

import 'dart:convert';

class DeleteBankResponse {
  DeleteBankResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  int data;

  factory DeleteBankResponse.fromRawJson(String str) =>
      DeleteBankResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeleteBankResponse.fromJson(Map<String, dynamic> json) =>
      DeleteBankResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : json["data"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data,
      };
}
