// To parse this JSON data, do
//
//     final getCurrencyResponse = getCurrencyResponseFromJson(jsonString);

import 'dart:convert';

class GetCurrencyResponse {
  GetCurrencyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Currency> data;

  factory GetCurrencyResponse.fromRawJson(String str) =>
      GetCurrencyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetCurrencyResponse.fromJson(Map<String, dynamic> json) =>
      GetCurrencyResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Currency>.from(
                json["data"].map((x) => Currency.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Currency {
  Currency({
    this.id,
    this.name,
    this.symbol,
    this.code,
    this.rate,
    this.hundredsName,
    this.status,
  });

  int id;
  String name;
  String symbol;
  String code;
  double rate;
  String hundredsName;
  String status;

  factory Currency.fromRawJson(String str) =>
      Currency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        symbol: json["symbol"] == null ? null : json["symbol"],
        code: json["code"] == null ? null : json["code"],
        rate: json["rate"] == null ? null : json["rate"].toDouble(),
        hundredsName:
            json["hundreds_name"] == null ? null : json["hundreds_name"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "symbol": symbol == null ? null : symbol,
        "code": code == null ? null : code,
        "rate": rate == null ? null : rate,
        "hundreds_name": hundredsName == null ? null : hundredsName,
        "status": status == null ? null : status,
      };
}
