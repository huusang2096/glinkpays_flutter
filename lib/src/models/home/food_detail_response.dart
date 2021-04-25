// To parse this JSON data, do
//
//     final foodDetailResponse = foodDetailResponseFromJson(jsonString);

import 'dart:convert';

import 'package:vipay/src/models/home/foods_response.dart';


class FoodDetailResponse {
  FoodDetailResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  FoodData data;
  String message;

  factory FoodDetailResponse.fromRawJson(String str) =>
      FoodDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FoodDetailResponse.fromJson(Map<String, dynamic> json) =>
      FoodDetailResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : FoodData.fromJson(json["data"]),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
        "message": message == null ? null : message,
      };
}
