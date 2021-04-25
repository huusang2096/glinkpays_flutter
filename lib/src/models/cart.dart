import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/extra.dart';
import 'package:vipay/src/models/food.dart';

class CartResponse extends BaseResponse {
  bool success;
  List<Cart> data;
  String message;

  CartResponse({
    this.success,
    this.data,
    this.message,
  });

  factory CartResponse.fromJson(Map<String, dynamic> json) => CartResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : List<Cart>.from(json["data"].map((x) => Cart.fromJSON(x))),
        message: json["message"] == null ? null : json["message"],
      );

  @override
  bool hasData() {
    return data != null;
  }
}

class Cart {
  String id;
  Food food;
  double quantity;
  List<Extra> extras;
  String userId;

  Cart();

  Cart.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'].toString();
    quantity =
        jsonMap['quantity'] != null ? jsonMap['quantity'].toDouble() : 0.0;
    food =
        jsonMap['food'] != null ? Food.fromJson(jsonMap['food']) : new Food();
    extras = jsonMap['extras'] != null
        ? List.from(jsonMap['extras'])
            .map((element) => Extra.fromJSON(element))
            .toList()
        : [];
    food.price = getFoodPrice().toDouble();
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["quantity"] = quantity;
    map["food_id"] = food.id;
    map["user_id"] = userId;
    map["extras"] = extras.map((element) => element.id).toList();
    return map;
  }

  Map addToCartRequest() {
    var map = new Map<String, dynamic>();
    map['food_id'] = this.food.id;
    map['quantity'] = this.quantity;
    map['user_id'] = this.userId;
    return map;
  }

  double getFoodPrice() {
    double result = food.price.toDouble();
    if (extras.isNotEmpty) {
      extras.forEach((Extra extra) {
        result += extra.price != null ? extra.price : 0;
      });
    }
    return result;
  }

  @override
  bool operator ==(dynamic other) {
    return other.id == this.id;
  }
}
