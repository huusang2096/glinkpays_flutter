// To parse this JSON data, do
//
//     final orderRequest = orderRequestFromJson(jsonString);

import 'dart:convert';

class OrderRequest {
  OrderRequest({
    this.tax,
    this.foods,
  });

  int tax;
  List<FoodOrder> foods;

  factory OrderRequest.fromRawJson(String str) =>
      OrderRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderRequest.fromJson(Map<String, dynamic> json) => OrderRequest(
        tax: json["tax"] == null ? null : json["tax"],
        foods: json["foods"] == null
            ? null
            : List<FoodOrder>.from(
                json["foods"].map((x) => FoodOrder.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tax": tax == null ? null : tax,
        "foods": foods == null
            ? null
            : List<dynamic>.from(foods.map((x) => x.toJson())),
      };
}

class FoodOrder {
  FoodOrder({
    this.foodId,
    this.quantity,
    this.price,
  });

  int foodId;
  int quantity;
  int price;

  factory FoodOrder.fromRawJson(String str) =>
      FoodOrder.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FoodOrder.fromJson(Map<String, dynamic> json) => FoodOrder(
        foodId: json["food_id"] == null ? null : json["food_id"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        price: json["price"] == null ? null : json["price"],
      );

  Map<String, dynamic> toJson() => {
        "food_id": foodId == null ? null : foodId,
        "quantity": quantity == null ? null : quantity,
        "price": price == null ? null : price,
      };
}
