// To parse this JSON data, do
//
//     final checkDuplicatePhoneRequest = checkDuplicatePhoneRequestFromJson(jsonString);

import 'dart:convert';

class CheckDuplicatePhoneRequest {
  CheckDuplicatePhoneRequest({
    this.id,
    this.phone,
  });

  int id;
  String phone;

  factory CheckDuplicatePhoneRequest.fromRawJson(String str) =>
      CheckDuplicatePhoneRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CheckDuplicatePhoneRequest.fromJson(Map<String, dynamic> json) =>
      CheckDuplicatePhoneRequest(
        id: json["id"] == null ? null : json["id"],
        phone: json["phone"] == null ? null : json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "phone": phone == null ? null : phone,
      };
}
