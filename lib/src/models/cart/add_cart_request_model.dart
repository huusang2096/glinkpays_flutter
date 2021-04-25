// To parse this JSON data, do
//
//     final addCartRequest = addCartRequestFromJson(jsonString);

import 'dart:convert';

class AddCartRequest {
  AddCartRequest({
    this.foodId,
    this.quantity,
    this.userId,
  });

  int foodId;
  int quantity;
  int userId;

  factory AddCartRequest.fromRawJson(String str) =>
      AddCartRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCartRequest.fromJson(Map<String, dynamic> json) => AddCartRequest(
        foodId: json["food_id"] == null ? null : json["food_id"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        userId: json["user_id"] == null ? null : json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "food_id": foodId == null ? null : foodId,
        "quantity": quantity == null ? null : quantity,
        "user_id": userId == null ? null : userId,
      };
}
