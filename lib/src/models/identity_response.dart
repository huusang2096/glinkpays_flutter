// To parse this JSON data, do
//
//     final identityResponse = identityResponseFromJson(jsonString);

import 'dart:convert';

class IdentityResponse {
  IdentityResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory IdentityResponse.fromRawJson(String str) =>
      IdentityResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IdentityResponse.fromJson(Map<String, dynamic> json) =>
      IdentityResponse(
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
    this.userId,
    this.verificationType,
    this.identityType,
    this.identityNumber,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  int userId;
  String verificationType;
  String identityType;
  int identityNumber;
  String status;
  String updatedAt;
  String createdAt;
  int id;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        verificationType: json["verification_type"],
        identityType: json["identity_type"],
        identityNumber: json["identity_number"],
        status: json["status"],
        updatedAt: json["updated_at"],
        createdAt: json["created_at"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "verification_type": verificationType,
        "identity_type": identityType,
        "identity_number": identityNumber,
        "status": status,
        "updated_at": updatedAt,
        "created_at": createdAt,
        "id": id,
      };
}
