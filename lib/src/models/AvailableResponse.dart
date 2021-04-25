// To parse this JSON data, do
//
//     final availableResponse = availableResponseFromJson(jsonString);

import 'dart:convert';

class AvailableResponse {
  bool success;
  String message;
  Data data;

  AvailableResponse({
    this.success,
    this.message,
    this.data,
  });

  factory AvailableResponse.fromRawJson(String str) => AvailableResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AvailableResponse.fromJson(Map<String, dynamic> json) => AvailableResponse(
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
  String formattedPhone;
  List<Wallet> wallets;

  Data({
    this.formattedPhone,
    this.wallets,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    formattedPhone: json["formatted_phone"] == null ? "" : json["formatted_phone"],
    wallets: json["wallets"] == null ? null : List<Wallet>.from(json["wallets"].map((x) => Wallet.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "formatted_phone": formattedPhone == null ? "" : formattedPhone,
    "wallets": wallets == null ? null : List<dynamic>.from(wallets.map((x) => x.toJson())),
  };
}

class Wallet {
  int currId;
  String balance;
  String isDefault;
  String currName;
  String currCode;

  Wallet({
    this.currId,
    this.balance,
    this.isDefault,
    this.currName,
    this.currCode,
  });

  factory Wallet.fromRawJson(String str) => Wallet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
    currId: json['curr_id'] == null ? null : json['curr_id'],
    balance: json["balance"] == null ? null : json["balance"],
    isDefault: json["is_default"] == null ? null : json["is_default"],
    currName: json["curr_name"] == null ? null : json["curr_name"],
    currCode: json["curr_code"] == null ? null : json["curr_code"],
  );

  Map<String, dynamic> toJson() => {
    "balance": balance == null ? null : balance,
    "is_default": isDefault == null ? null : isDefault,
    "curr_name": currName == null ? null : currName,
    "curr_code": currCode == null ? null : currCode,
    'curr_id': currId == null ? null : currId
  };
}
