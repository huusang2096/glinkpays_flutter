// To parse this JSON data, do
//
//     final settingResponse = settingResponseFromJson(jsonString);

import 'dart:convert';

class SettingResponse {
  SettingResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  Data data;
  String message;

  factory SettingResponse.fromRawJson(String str) =>
      SettingResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SettingResponse.fromJson(Map<String, dynamic> json) =>
      SettingResponse(
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
    this.appName,
    this.defaultTax,
    this.defaultCurrency,
    this.enableStripe,
    this.currencyRight,
    this.rangeFilter,
  });

  String appName;
  String defaultTax;
  String defaultCurrency;
  String enableStripe;
  String currencyRight;
  String rangeFilter;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        appName: json["app_name"] == null ? null : json["app_name"],
        defaultTax: json["default_tax"] == null ? null : json["default_tax"],
        defaultCurrency:
            json["default_currency"] == null ? null : json["default_currency"],
        enableStripe:
            json["enable_stripe"] == null ? null : json["enable_stripe"],
        currencyRight:
            json["currency_right"] == null ? null : json["currency_right"],
        rangeFilter: json["range_filter"] == null ? null : json["range_filter"],
      );

  Map<String, dynamic> toJson() => {
        "app_name": appName == null ? null : appName,
        "default_tax": defaultTax == null ? null : defaultTax,
        "default_currency": defaultCurrency == null ? null : defaultCurrency,
        "enable_stripe": enableStripe == null ? null : enableStripe,
        "currency_right": currencyRight == null ? null : currencyRight,
        "range_filter": rangeFilter == null ? null : rangeFilter,
      };
}
