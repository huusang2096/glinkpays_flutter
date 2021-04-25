// To parse this JSON data, do
//
//     final helpResponse = helpResponseFromJson(jsonString);

import 'dart:convert';

class HelpResponse {
  HelpResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  HelpData data;

  factory HelpResponse.fromRawJson(String str) =>
      HelpResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HelpResponse.fromJson(Map<String, dynamic> json) => HelpResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : HelpData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class HelpData {
  HelpData({
    this.phone,
    this.email,
    this.website,
  });

  String phone;
  String email;
  String website;

  factory HelpData.fromRawJson(String str) =>
      HelpData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HelpData.fromJson(Map<String, dynamic> json) => HelpData(
        phone: json["phone"] == null ? null : json["phone"],
        email: json["email"] == null ? null : json["email"],
        website: json["website"] == null ? null : json["website"],
      );

  Map<String, dynamic> toJson() => {
        "phone": phone == null ? null : phone,
        "email": email == null ? null : email,
        "website": website == null ? null : website,
      };
}
