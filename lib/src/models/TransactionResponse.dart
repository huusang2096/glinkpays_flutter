// To parse this JSON data, do
//
//     final transactionResponse = transactionResponseFromJson(jsonString);

import 'dart:convert';

class TransactionResponse {
  bool success;
  String message;
  List<TransactionModel> data;

  TransactionResponse({
    this.success,
    this.message,
    this.data,
  });

  factory TransactionResponse.fromRawJson(String str) => TransactionResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionResponse.fromJson(Map<String, dynamic> json) => TransactionResponse(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : List<TransactionModel>.from(json["data"].map((x) => TransactionModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class TransactionModel {
  int userId;
  String userFName;
  String userLName;
  String userPhoto;
  int endUserId;
  String endUserFName;
  String endUserLName;
  String endUserPhoto;
  int id;
  int transactionTypeId;
  String transactionType;
  String currCode;
  String currSymbol;
  String chargePercentage;
  String chargeFixed;
  String subtotal;
  String total;
  String status;
  String email;
  dynamic phone;
  String tCreatedAt;
  String paymentMethodName;
  int paymentMethodId;
  String companyName;

  TransactionModel({
    this.userId,
    this.userFName,
    this.userLName,
    this.userPhoto,
    this.endUserId,
    this.endUserFName,
    this.endUserLName,
    this.endUserPhoto,
    this.id,
    this.transactionTypeId,
    this.transactionType,
    this.currCode,
    this.currSymbol,
    this.chargePercentage,
    this.chargeFixed,
    this.subtotal,
    this.total,
    this.status,
    this.email,
    this.phone,
    this.tCreatedAt,
    this.paymentMethodName,
    this.paymentMethodId,
    this.companyName,
  });

  factory TransactionModel.fromRawJson(String str) => TransactionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
    userId: json["user_id"] == null ? null : json["user_id"],
    userFName: json["user_f_name"] == null ? null : json["user_f_name"],
    userLName: json["user_l_name"] == null ? null : json["user_l_name"],
    userPhoto: json["user_photo"] == null ? null : json["user_photo"],
    endUserId: json["end_user_id"] == null ? null : json["end_user_id"],
    endUserFName: json["end_user_f_name"] == null ? null : json["end_user_f_name"],
    endUserLName: json["end_user_l_name"] == null ? null : json["end_user_l_name"],
    endUserPhoto: json["end_user_photo"] == null ? null : json["end_user_photo"],
    id: json["id"] == null ? null : json["id"],
    transactionTypeId: json["transaction_type_id"] == null ? null : json["transaction_type_id"],
    transactionType: json["transaction_type"] == null ? null : json["transaction_type"],
    currCode: json["curr_code"] == null ? null : json["curr_code"],
    currSymbol: json["curr_symbol"] == null ? null : json["curr_symbol"],
    chargePercentage: json["charge_percentage"] == null ? null : json["charge_percentage"],
    chargeFixed: json["charge_fixed"] == null ? null : json["charge_fixed"],
    subtotal: json["subtotal"] == null ? null : json["subtotal"],
    total: json["total"] == null ? null : json["total"],
    status: json["status"] == null ? null : json["status"],
    email: json["email"] == null ? null : json["email"],
    phone: json["phone"],
    tCreatedAt: json["t_created_at"] == null ? null : json["t_created_at"],
    paymentMethodName: json["payment_method_name"] == null ? "" : json["payment_method_name"],
    paymentMethodId: json["payment_method_id"] == null ? null : json["payment_method_id"],
    companyName: json["company_name"] == null ? null : json["company_name"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId == null ? null : userId,
    "user_f_name": userFName == null ? null : userFName,
    "user_l_name": userLName == null ? null : userLName,
    "user_photo": userPhoto == null ? null : userPhoto,
    "end_user_id": endUserId == null ? null : endUserId,
    "end_user_f_name": endUserFName == null ? null : endUserFName,
    "end_user_l_name": endUserLName == null ? null : endUserLName,
    "end_user_photo": endUserPhoto == null ? null : endUserPhoto,
    "id": id == null ? null : id,
    "transaction_type_id": transactionTypeId == null ? null : transactionTypeId,
    "transaction_type": transactionType == null ? null : transactionType,
    "curr_code": currCode == null ? null : currCode,
    "curr_symbol": currSymbol == null ? null : currSymbol,
    "charge_percentage": chargePercentage == null ? null : chargePercentage,
    "charge_fixed": chargeFixed == null ? null : chargeFixed,
    "subtotal": subtotal == null ? null : subtotal,
    "total": total == null ? null : total,
    "status": status == null ? null : status,
    "email": email == null ? null : email,
    "phone": phone,
    "t_created_at": tCreatedAt == null ? null : tCreatedAt,
    "payment_method_name": paymentMethodName == null ? "" : paymentMethodName,
    "payment_method_id": paymentMethodId == null ? null : paymentMethodId,
    "company_name": companyName == null ? null : companyName,
  };
}
