
class RequestCurrencyResponse {
  bool success;
  String message;
  RequestCurrencyData data;

  RequestCurrencyResponse({
    this.success,
    this.message,
    this.data,
  });

  factory RequestCurrencyResponse.fromJson(Map<String, dynamic> json) => RequestCurrencyResponse(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : RequestCurrencyData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : data.toJson(),
  };
}

class RequestCurrencyData {
  List<RequestCurrency> currencies;
  int defaultWalletCurrencyId;

  RequestCurrencyData({
    this.currencies,
    this.defaultWalletCurrencyId,
  });

  factory RequestCurrencyData.fromJson(Map<String, dynamic> json) => RequestCurrencyData(
    currencies: json["currencies"] == null ? null : List<RequestCurrency>.from(json["currencies"].map((x) => RequestCurrency.fromJson(x))),
    defaultWalletCurrencyId: json["defaultWalletCurrencyId"] == null ? null : json["defaultWalletCurrencyId"],
  );

  Map<String, dynamic> toJson() => {
    "currencies": currencies == null ? null : List<dynamic>.from(currencies.map((x) => x.toJson())),
    "defaultWalletCurrencyId": defaultWalletCurrencyId == null ? null : defaultWalletCurrencyId,
  };
}

class RequestCurrency {
  int id;
  String code;
  String symbol;

  RequestCurrency({
    this.id,
    this.code,
    this.symbol,
  });

  factory RequestCurrency.fromJson(Map<String, dynamic> json) => RequestCurrency(
    id: json["id"] == null ? null : json["id"],
    code: json["code"] == null ? null : json["code"],
    symbol: json["symbol"] == null ? null : json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "code": code == null ? null : code,
    "symbol": symbol == null ? null : symbol,
  };
}
