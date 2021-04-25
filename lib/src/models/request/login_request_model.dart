// To parse this JSON data, do
//
//     final loginRequest = loginRequestFromJson(jsonString);

import 'dart:convert';

class LoginRequest {
  LoginRequest({
    this.email,
    this.phone,
    this.password,
    this.deviceId,
  });

  String email;
  String phone;
  String password;
  String deviceId;

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        password: json["password"] == null ? null : json["password"],
        deviceId: json["device_id"] == null ? null : json["device_id"],
      );

  Map<String, dynamic> toJson() => {
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "password": password == null ? null : password,
        "device_id": deviceId == null ? null : deviceId,
      };
}
