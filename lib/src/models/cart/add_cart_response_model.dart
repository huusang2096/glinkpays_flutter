// To parse this JSON data, do
//
//     final addCartResponse = addCartResponseFromJson(jsonString);

import 'dart:convert';

class AddCartResponse {
  AddCartResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  Data data;
  String message;

  factory AddCartResponse.fromRawJson(String str) =>
      AddCartResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCartResponse.fromJson(Map<String, dynamic> json) =>
      AddCartResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
        "message": message == null ? null : message,
      };
}

class Data {
  Data({
    this.foodId,
    this.quantity,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.customFields,
  });

  int foodId;
  int quantity;
  int userId;
  DateTime updatedAt;
  DateTime createdAt;
  int id;
  List<dynamic> customFields;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        foodId: json["food_id"] == null ? null : json["food_id"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        userId: json["user_id"] == null ? null : json["user_id"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"] == null ? null : json["id"],
        customFields: json["custom_fields"] == null
            ? null
            : List<dynamic>.from(json["custom_fields"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "food_id": foodId == null ? null : foodId,
        "quantity": quantity == null ? null : quantity,
        "user_id": userId == null ? null : userId,
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "id": id == null ? null : id,
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
      };
}
