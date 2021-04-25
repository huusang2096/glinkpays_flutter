// To parse this JSON data, do
//
//     final orderResponse = orderResponseFromJson(jsonString);

import 'dart:convert';

class OrderResponse {
  OrderResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  Data data;
  String message;

  factory OrderResponse.fromRawJson(String str) =>
      OrderResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderResponse.fromJson(Map<String, dynamic> json) => OrderResponse(
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
    this.userId,
    this.orderStatusId,
    this.tax,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.customFields,
  });

  int userId;
  int orderStatusId;
  int tax;
  DateTime updatedAt;
  DateTime createdAt;
  int id;
  List<dynamic> customFields;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"] == null ? null : json["user_id"],
        orderStatusId:
            json["order_status_id"] == null ? null : json["order_status_id"],
        tax: json["tax"] == null ? null : json["tax"],
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
        "user_id": userId == null ? null : userId,
        "order_status_id": orderStatusId == null ? null : orderStatusId,
        "tax": tax == null ? null : tax,
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "id": id == null ? null : id,
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
      };
}
