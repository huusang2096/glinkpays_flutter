// To parse this JSON data, do
//
//     final baoKimPaymentResponse = baoKimPaymentResponseFromJson(jsonString);

import 'dart:convert';

class BaoKimPaymentResponse {
  BaoKimPaymentResponse({
    this.success,
  });

  Success success;

  factory BaoKimPaymentResponse.fromRawJson(String str) => BaoKimPaymentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaoKimPaymentResponse.fromJson(Map<String, dynamic> json) => BaoKimPaymentResponse(
    success: json["success"] == null ? null : Success.fromJson(json["success"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success.toJson(),
  };
}

class Success {
  Success({
    this.transaction,
    this.status,
    this.paymentUrl,
  });

  Transaction transaction;
  int status;
  String paymentUrl;

  factory Success.fromRawJson(String str) => Success.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Success.fromJson(Map<String, dynamic> json) => Success(
    transaction: json["transaction"] == null ? null : Transaction.fromJson(json["transaction"]),
    status: json["status"] == null ? null : json["status"],
    paymentUrl: json["payment_url"] == null ? null : json["payment_url"],
  );

  Map<String, dynamic> toJson() => {
    "transaction": transaction == null ? null : transaction.toJson(),
    "status": status == null ? null : status,
    "payment_url": paymentUrl == null ? null : paymentUrl,
  };
}

class Transaction {
  Transaction({
    this.userId,
    this.currencyId,
    this.uuid,
    this.transactionReferenceId,
    this.transactionTypeId,
    this.subtotal,
    this.chargePercentage,
    this.total,
    this.status,
    this.paymentMethodId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  int userId;
  int currencyId;
  String uuid;
  int transactionReferenceId;
  int transactionTypeId;
  int subtotal;
  int chargePercentage;
  int total;
  String status;
  dynamic paymentMethodId;
  String updatedAt;
  String createdAt;
  int id;

  factory Transaction.fromRawJson(String str) => Transaction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    userId: json["user_id"] == null ? null : json["user_id"],
    currencyId: json["currency_id"] == null ? null : json["currency_id"],
    uuid: json["uuid"] == null ? null : json["uuid"],
    transactionReferenceId: json["transaction_reference_id"] == null ? null : json["transaction_reference_id"],
    transactionTypeId: json["transaction_type_id"] == null ? null : json["transaction_type_id"],
    subtotal: json["subtotal"] == null ? null : json["subtotal"],
    chargePercentage: json["charge_percentage"] == null ? null : json["charge_percentage"],
    total: json["total"] == null ? null : json["total"],
    status: json["status"] == null ? null : json["status"],
    paymentMethodId: json["payment_method_id"],
    updatedAt: json["updated_at"] == null ? null : json["updated_at"],
    createdAt: json["created_at"] == null ? null : json["created_at"],
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId == null ? null : userId,
    "currency_id": currencyId == null ? null : currencyId,
    "uuid": uuid == null ? null : uuid,
    "transaction_reference_id": transactionReferenceId == null ? null : transactionReferenceId,
    "transaction_type_id": transactionTypeId == null ? null : transactionTypeId,
    "subtotal": subtotal == null ? null : subtotal,
    "charge_percentage": chargePercentage == null ? null : chargePercentage,
    "total": total == null ? null : total,
    "status": status == null ? null : status,
    "payment_method_id": paymentMethodId,
    "updated_at": updatedAt == null ? null : updatedAt,
    "created_at": createdAt == null ? null : createdAt,
    "id": id == null ? null : id,
  };
}
