// To parse this JSON data, do
//
//     final stripePaymentStoreResponse = stripePaymentStoreResponseFromJson(jsonString);

import 'dart:convert';

class StripePaymentStoreResponse {
  StripePaymentStoreResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory StripePaymentStoreResponse.fromRawJson(String str) =>
      StripePaymentStoreResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StripePaymentStoreResponse.fromJson(Map<String, dynamic> json) =>
      StripePaymentStoreResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.userId,
    this.currencyId,
    this.paymentMethodId,
    this.uuid,
    this.transactionReferenceId,
    this.transactionTypeId,
    this.subtotal,
    this.percentage,
    this.chargePercentage,
    this.chargeFixed,
    this.total,
    this.status,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  int userId;
  int currencyId;
  int paymentMethodId;
  String uuid;
  int transactionReferenceId;
  int transactionTypeId;
  int subtotal;
  String percentage;
  int chargePercentage;
  String chargeFixed;
  int total;
  String status;
  String updatedAt;
  String createdAt;
  int id;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"] == null ? null : json["user_id"],
        currencyId: json["currency_id"] == null ? null : json["currency_id"],
        paymentMethodId: json["payment_method_id"] == null
            ? null
            : json["payment_method_id"],
        uuid: json["uuid"] == null ? null : json["uuid"],
        transactionReferenceId: json["transaction_reference_id"] == null
            ? null
            : json["transaction_reference_id"],
        transactionTypeId: json["transaction_type_id"] == null
            ? null
            : json["transaction_type_id"],
        subtotal: json["subtotal"] == null ? null : json["subtotal"],
        percentage: json["percentage"] == null ? null : json["percentage"],
        chargePercentage: json["charge_percentage"] == null
            ? null
            : json["charge_percentage"],
        chargeFixed: json["charge_fixed"] == null ? null : json["charge_fixed"],
        total: json["total"] == null ? null : json["total"],
        status: json["status"] == null ? null : json["status"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId == null ? null : userId,
        "currency_id": currencyId == null ? null : currencyId,
        "payment_method_id": paymentMethodId == null ? null : paymentMethodId,
        "uuid": uuid == null ? null : uuid,
        "transaction_reference_id":
            transactionReferenceId == null ? null : transactionReferenceId,
        "transaction_type_id":
            transactionTypeId == null ? null : transactionTypeId,
        "subtotal": subtotal == null ? null : subtotal,
        "percentage": percentage == null ? null : percentage,
        "charge_percentage": chargePercentage == null ? null : chargePercentage,
        "charge_fixed": chargeFixed == null ? null : chargeFixed,
        "total": total == null ? null : total,
        "status": status == null ? null : status,
        "updated_at": updatedAt == null ? null : updatedAt,
        "created_at": createdAt == null ? null : createdAt,
        "id": id == null ? null : id,
      };
}
