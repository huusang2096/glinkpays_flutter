import 'dart:convert';

import 'package:vipay/src/models/base_model.dart';

class SettingResponse extends BaseResponse {
  bool success;
  SettingFood data;
  String message;

  SettingResponse({
    this.success,
    this.data,
    this.message,
  });

  factory SettingResponse.fromJson(Map<String, dynamic> json) =>
      SettingResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : SettingFood.fromJson(json["data"]),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
        "message": message == null ? null : message,
      };

  @override
  bool hasData() {
    return data != null;
  }
}

class SettingFood {
  String appName;
  String defaultTax;
  String defaultCurrency;
  String enableStripe;
  String currencyRight;
  String rangeFilter;

  SettingFood({
    this.appName,
    this.defaultTax,
    this.defaultCurrency,
    this.enableStripe,
    this.currencyRight,
    this.rangeFilter,
  });

  factory SettingFood.fromRawJson(String str) =>
      SettingFood.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SettingFood.fromJson(Map<String, dynamic> json) => SettingFood(
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
