// To parse this JSON data, do
//
//     final searchExactlyResponse = searchExactlyResponseFromJson(jsonString);

import 'dart:convert';

import 'package:vipay/src/models/search/search_response.dart';

class SearchExactlyResponse {
  SearchExactlyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  UserSearchItem data;

  factory SearchExactlyResponse.fromRawJson(String str) =>
      SearchExactlyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchExactlyResponse.fromJson(Map<String, dynamic> json) =>
      SearchExactlyResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data:
            json["data"] == null ? null : UserSearchItem.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}
