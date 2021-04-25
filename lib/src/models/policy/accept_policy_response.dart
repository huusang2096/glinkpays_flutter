// To parse this JSON data, do
//
//     final acceptPolicyResponse = acceptPolicyResponseFromJson(jsonString);

import 'dart:convert';

class AcceptPolicyResponse {
  AcceptPolicyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory AcceptPolicyResponse.fromRawJson(String str) =>
      AcceptPolicyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AcceptPolicyResponse.fromJson(Map<String, dynamic> json) =>
      AcceptPolicyResponse(
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
    this.ruleId,
    this.versionNumber,
    this.userId,
  });

  int ruleId;
  int versionNumber;
  int userId;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        ruleId: json["rule_id"],
        versionNumber: json["version_number"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "rule_id": ruleId,
        "version_number": versionNumber,
        "user_id": userId,
      };
}
