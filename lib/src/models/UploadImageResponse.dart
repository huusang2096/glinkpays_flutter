// To parse this JSON data, do
//
//     final uploadImageResponse = uploadImageResponseFromJson(jsonString);
import 'dart:convert';
import 'package:vipay/src/models/user.dart';

class UploadImageResponse {
  bool success;
  String message;
  User data;

  UploadImageResponse({
    this.success,
    this.message,
    this.data,
  });

  factory UploadImageResponse.fromRawJson(String str) =>
      UploadImageResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UploadImageResponse.fromJson(Map<String, dynamic> json) =>
      UploadImageResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : User.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}
