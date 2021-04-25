// To parse this JSON data, do
//
//     final nofiticationDetailResponse = nofiticationDetailResponseFromJson(jsonString);

import 'dart:convert';
import 'package:vipay/src/models/home/notification_response.dart';
class NofiticationDetailResponse {
  NofiticationDetailResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  NotificationItem data;

  factory NofiticationDetailResponse.fromRawJson(String str) =>
      NofiticationDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NofiticationDetailResponse.fromJson(Map<String, dynamic> json) =>
      NofiticationDetailResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : NotificationItem.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

