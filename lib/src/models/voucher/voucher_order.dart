import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/food.dart';

class VoucherOrderResponse extends BaseResponse {
  bool success;
  List<VoucherOrder> data;
  String message;

  VoucherOrderResponse({
    this.success,
    this.data,
    this.message,
  });

  factory VoucherOrderResponse.fromJson(Map<String, dynamic> json) =>
      VoucherOrderResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : List<VoucherOrder>.from(
                json["data"].map((x) => VoucherOrder.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
      };

  @override
  bool hasData() {
    return data != null;
  }
}

class VoucherOrder {
  int id;
  int price;
  int quantity;
  int foodId;
  int orderId;
  DateTime createdAt;
  DateTime updatedAt;
  String couponCode;
  DateTime expiryDate;
  dynamic usedAt;
  List<dynamic> customFields;
  List<dynamic> extras;
  Food food;

  VoucherOrder(
      {this.id,
      this.price,
      this.quantity,
      this.foodId,
      this.orderId,
      this.createdAt,
      this.updatedAt,
      this.couponCode,
      this.expiryDate,
      this.usedAt,
      this.customFields,
      this.extras,
      this.food});

  factory VoucherOrder.fromJson(Map<String, dynamic> json) => VoucherOrder(
      id: json["id"] == null ? null : json["id"],
      price: json["price"] == null ? null : json["price"],
      quantity: json["quantity"] == null ? null : json["quantity"],
      foodId: json["food_id"] == null ? null : json["food_id"],
      orderId: json["order_id"] == null ? null : json["order_id"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      couponCode: json["coupon_code"] == null ? null : json["coupon_code"],
      expiryDate: json["expiry_date"] == null
          ? null
          : DateTime.parse(json["expiry_date"]),
      usedAt: json["used_at"],
      customFields: json["custom_fields"] == null
          ? null
          : List<dynamic>.from(json["custom_fields"].map((x) => x)),
      extras: json["extras"] == null
          ? null
          : List<dynamic>.from(json["extras"].map((x) => x)),
      food: json["food"] == null ? null : Food.fromJson(json["food"]));

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "price": price == null ? null : price,
        "quantity": quantity == null ? null : quantity,
        "food_id": foodId == null ? null : foodId,
        "order_id": orderId == null ? null : orderId,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "coupon_code": couponCode == null ? null : couponCode,
        "expiry_date": expiryDate == null ? null : expiryDate.toIso8601String(),
        "used_at": usedAt,
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
        "extras":
            extras == null ? null : List<dynamic>.from(extras.map((x) => x)),
        "food": food == null ? null : food.toJson()
      };
}
