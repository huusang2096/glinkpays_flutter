// To parse this JSON data, do
//
//     final transactionDetailResponse = transactionDetailResponseFromJson(jsonString);

import 'dart:convert';

class TransactionDetailResponse {
  bool success;
  String message;
  TransactionDetailModel data;

  TransactionDetailResponse({
    this.success,
    this.message,
    this.data,
  });

  factory TransactionDetailResponse.fromRawJson(String str) => TransactionDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionDetailResponse.fromJson(Map<String, dynamic> json) => TransactionDetailResponse(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : TransactionDetailModel.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : data.toJson(),
  };
}

class TransactionDetailModel {
  int id;
  int userId;
  int endUserId;
  int currencyId;
  dynamic paymentMethodId;
  dynamic merchantId;
  int transactionTypeId;
  int transactionReferenceId;
  String chargePercentage;
  String chargeFixed;
  String subtotal;
  String total;
  String transactionId;
  String status;
  String description;
  String email;
  dynamic phone;
  String tCreatedAt;
  String userFName;
  String userLName;
  String userPhoto;
  String endUserFName;
  String endUserLName;
  String endUserPhoto;
  String currCode;
  String currSymbol;
  int typeId;
  String type;
  Currency currency;
  User user;
  User endUser;
  dynamic paymentMethod;
  TransactionType transactionType;
  dynamic merchant;

  TransactionDetailModel({
    this.id,
    this.userId,
    this.endUserId,
    this.currencyId,
    this.paymentMethodId,
    this.merchantId,
    this.transactionTypeId,
    this.transactionReferenceId,
    this.chargePercentage,
    this.chargeFixed,
    this.subtotal,
    this.total,
    this.transactionId,
    this.status,
    this.description,
    this.email,
    this.phone,
    this.tCreatedAt,
    this.userFName,
    this.userLName,
    this.userPhoto,
    this.endUserFName,
    this.endUserLName,
    this.endUserPhoto,
    this.currCode,
    this.currSymbol,
    this.typeId,
    this.type,
    this.currency,
    this.user,
    this.endUser,
    this.paymentMethod,
    this.transactionType,
    this.merchant,
  });

  factory TransactionDetailModel.fromRawJson(String str) => TransactionDetailModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionDetailModel.fromJson(Map<String, dynamic> json) => TransactionDetailModel(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    endUserId: json["end_user_id"] == null ? null : json["end_user_id"],
    currencyId: json["currency_id"] == null ? null : json["currency_id"],
    paymentMethodId: json["payment_method_id"],
    merchantId: json["merchant_id"],
    transactionTypeId: json["transaction_type_id"] == null ? null : json["transaction_type_id"],
    transactionReferenceId: json["transaction_reference_id"] == null ? null : json["transaction_reference_id"],
    chargePercentage: json["charge_percentage"] == null ? null : json["charge_percentage"],
    chargeFixed: json["charge_fixed"] == null ? null : json["charge_fixed"],
    subtotal: json["subtotal"] == null ? null : json["subtotal"],
    total: json["total"] == null ? null : json["total"],
    transactionId: json["transaction_id"] == null ? null : json["transaction_id"],
    status: json["status"] == null ? null : json["status"],
    description: json["description"] == null ? null : json["description"],
    email: json["email"] == null ? null : json["email"],
    phone: json["phone"],
    tCreatedAt: json["t_created_at"] == null ? null : json["t_created_at"],
    userFName: json["user_f_name"] == null ? null : json["user_f_name"],
    userLName: json["user_l_name"] == null ? null : json["user_l_name"],
    userPhoto: json["user_photo"] == null ? null : json["user_photo"],
    endUserFName: json["end_user_f_name"] == null ? null : json["end_user_f_name"],
    endUserLName: json["end_user_l_name"] == null ? null : json["end_user_l_name"],
    endUserPhoto: json["end_user_photo"] == null ? null : json["end_user_photo"],
    currCode: json["curr_code"] == null ? null : json["curr_code"],
    currSymbol: json["curr_symbol"] == null ? null : json["curr_symbol"],
    typeId: json["type_id"] == null ? null : json["type_id"],
    type: json["type"] == null ? null : json["type"],
    currency: json["currency"] == null ? null : Currency.fromJson(json["currency"]),
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    endUser: json["end_user"] == null ? null : User.fromJson(json["end_user"]),
    paymentMethod: json["payment_method"],
    transactionType: json["transaction_type"] == null ? null : TransactionType.fromJson(json["transaction_type"]),
    merchant: json["merchant"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "end_user_id": endUserId == null ? null : endUserId,
    "currency_id": currencyId == null ? null : currencyId,
    "payment_method_id": paymentMethodId,
    "merchant_id": merchantId,
    "transaction_type_id": transactionTypeId == null ? null : transactionTypeId,
    "transaction_reference_id": transactionReferenceId == null ? null : transactionReferenceId,
    "charge_percentage": chargePercentage == null ? null : chargePercentage,
    "charge_fixed": chargeFixed == null ? null : chargeFixed,
    "subtotal": subtotal == null ? null : subtotal,
    "total": total == null ? null : total,
    "transaction_id": transactionId == null ? null : transactionId,
    "status": status == null ? null : status,
    "description": description == null ? null : description,
    "email": email == null ? null : email,
    "phone": phone,
    "t_created_at": tCreatedAt == null ? null : tCreatedAt,
    "user_f_name": userFName == null ? null : userFName,
    "user_l_name": userLName == null ? null : userLName,
    "user_photo": userPhoto == null ? null : userPhoto,
    "end_user_f_name": endUserFName == null ? null : endUserFName,
    "end_user_l_name": endUserLName == null ? null : endUserLName,
    "end_user_photo": endUserPhoto == null ? null : endUserPhoto,
    "curr_code": currCode == null ? null : currCode,
    "curr_symbol": currSymbol == null ? null : currSymbol,
    "type_id": typeId == null ? null : typeId,
    "type": type == null ? null : type,
    "currency": currency == null ? null : currency.toJson(),
    "user": user == null ? null : user.toJson(),
    "end_user": endUser == null ? null : endUser.toJson(),
    "payment_method": paymentMethod,
    "transaction_type": transactionType == null ? null : transactionType.toJson(),
    "merchant": merchant,
  };
}

class Currency {
  int id;
  String code;
  String symbol;
  String orgSymbol;

  Currency({
    this.id,
    this.code,
    this.symbol,
    this.orgSymbol,
  });

  factory Currency.fromRawJson(String str) => Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    id: json["id"] == null ? null : json["id"],
    code: json["code"] == null ? null : json["code"],
    symbol: json["symbol"] == null ? null : json["symbol"],
    orgSymbol: json["org_symbol"] == null ? null : json["org_symbol"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "code": code == null ? null : code,
    "symbol": symbol == null ? null : symbol,
    "org_symbol": orgSymbol == null ? null : orgSymbol,
  };
}

class User {
  int id;
  String firstName;
  String lastName;
  String picture;

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.picture,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    firstName: json["first_name"] == null ? null : json["first_name"],
    lastName: json["last_name"] == null ? null : json["last_name"],
    picture: json["picture"] == null ? null : json["picture"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "first_name": firstName == null ? null : firstName,
    "last_name": lastName == null ? null : lastName,
    "picture": picture == null ? null : picture,
  };
}

class TransactionType {
  int id;
  String name;

  TransactionType({
    this.id,
    this.name,
  });

  factory TransactionType.fromRawJson(String str) => TransactionType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TransactionType.fromJson(Map<String, dynamic> json) => TransactionType(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
  };
}
