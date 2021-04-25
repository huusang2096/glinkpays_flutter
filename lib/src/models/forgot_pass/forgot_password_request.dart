// To parse this JSON data, do
//
//     final forgotPasswordRequest = forgotPasswordRequestFromJson(jsonString);

import 'dart:convert';

class ForgotPasswordRequest {
  ForgotPasswordRequest({
    this.verifyToken,
    this.phone,
    this.newPassword,
  });

  String verifyToken;
  String phone;
  String newPassword;

  factory ForgotPasswordRequest.fromRawJson(String str) =>
      ForgotPasswordRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      ForgotPasswordRequest(
        verifyToken: json["verify_token"] == null ? null : json["verify_token"],
        phone: json["phone"] == null ? null : json["phone"],
        newPassword: json["newPassword"] == null ? null : json["newPassword"],
      );

  Map<String, dynamic> toJson() => {
        "verify_token": verifyToken == null ? null : verifyToken,
        "phone": phone == null ? null : phone,
        "newPassword": newPassword == null ? null : newPassword,
      };
}
