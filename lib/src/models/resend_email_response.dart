// To parse this JSON data, do
//
//     final resendEmailresponse = resendEmailresponseFromJson(jsonString);

import 'dart:convert';

class ResendEmailresponse {
  ResendEmailresponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<dynamic> data;

  ResendEmailresponse copyWith({
    bool success,
    String message,
    List<dynamic> data,
  }) =>
      ResendEmailresponse(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory ResendEmailresponse.fromRawJson(String str) =>
      ResendEmailresponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResendEmailresponse.fromJson(Map<String, dynamic> json) =>
      ResendEmailresponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<dynamic>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x)),
      };
}
