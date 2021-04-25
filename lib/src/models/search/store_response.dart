// To parse this JSON data, do
//
//     final storeResponse = storeResponseFromJson(jsonString);

import 'dart:convert';
import '../restaurant.dart';

class StoreResponse {
  StoreResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  List<Restaurant> data;
  String message;

  factory StoreResponse.fromRawJson(String str) =>
      StoreResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StoreResponse.fromJson(Map<String, dynamic> json) => StoreResponse(
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
