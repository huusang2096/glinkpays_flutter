// To parse this JSON data, do
//
//     final policyResponse = policyResponseFromJson(jsonString);

import 'dart:convert';
import 'policy.dart';

class PolicyResponse {
  PolicyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Policy> data;

  factory PolicyResponse.fromRawJson(String str) =>
      PolicyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PolicyResponse.fromJson(Map<String, dynamic> json) => PolicyResponse(
        success: json["success"],
        message: json["message"],
        data: List<Policy>.from(json["data"].map((x) => Policy.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
