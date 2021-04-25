// To parse this JSON data, do
//
//     final updateFcmResponse = updateFcmResponseFromJson(jsonString);

import 'dart:convert';

class UpdateFcmResponse {
  UpdateFcmResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory UpdateFcmResponse.fromRawJson(String str) =>
      UpdateFcmResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateFcmResponse.fromJson(Map<String, dynamic> json) =>
      UpdateFcmResponse(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.fcmToken,
    this.deviceId,
    this.platform,
  });

  String fcmToken;
  String deviceId;
  String platform;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        fcmToken: json["fcm_token"],
        deviceId: json["device_id"],
        platform: json["platform"],
      );

  Map<String, dynamic> toJson() => {
        "fcm_token": fcmToken,
        "device_id": deviceId,
        "platform": platform,
      };
}
