
class SendCurrencyResponse {
  bool success;
  String message;
  SendCurrencyData data;

  SendCurrencyResponse({
    this.success,
    this.message,
    this.data,
  });

  factory SendCurrencyResponse.fromJson(Map<String, dynamic> json) => SendCurrencyResponse(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : SendCurrencyData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : data.toJson(),
  };
}

class SendCurrencyData {
  List<Wallet> wallets;

  SendCurrencyData({
    this.wallets,
  });

  factory SendCurrencyData.fromJson(Map<String, dynamic> json) => SendCurrencyData(
    wallets: json["wallets"] == null ? null : List<Wallet>.from(json["wallets"].map((x) => Wallet.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "wallets": wallets == null ? null : List<dynamic>.from(wallets.map((x) => x.toJson())),
  };
}

class Wallet {
  int id;
  String code;
  String isDefault;

  Wallet({
    this.id,
    this.code,
    this.isDefault,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
    id: json["id"] == null ? null : json["id"],
    code: json["code"] == null ? null : json["code"],
    isDefault: json["is_default"] == null ? null : json["is_default"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "code": code == null ? null : code,
    "is_default": isDefault == null ? null : isDefault,
  };
}
