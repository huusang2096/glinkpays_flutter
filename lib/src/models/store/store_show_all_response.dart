// To parse this JSON data, do
//
//     final storeShowAllResponse = storeShowAllResponseFromJson(jsonString);

import 'dart:convert';
import 'package:vipay/src/models/restaurant.dart';

class StoreShowAllResponse {
  StoreShowAllResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  List<Restaurant> data;
  String message;

  factory StoreShowAllResponse.fromRawJson(String str) =>
      StoreShowAllResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StoreShowAllResponse.fromJson(Map<String, dynamic> json) =>
      StoreShowAllResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : List<Restaurant>.from(
                json["data"].map((x) => Restaurant.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
      };
}
