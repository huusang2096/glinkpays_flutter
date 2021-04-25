import 'package:vipay/src/models/base_model.dart';

class CurrencyConvertResponse extends BaseResponse {
  bool success;
  String message;
  CurrencyConvertData data;

  CurrencyConvertResponse({
    this.success,
    this.message,
    this.data,
  });

  factory CurrencyConvertResponse.fromJson(Map<String, dynamic> json) =>
      CurrencyConvertResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : CurrencyConvertData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };

  @override
  bool hasData() {
    return data != null;
  }
}

class CurrencyConvertData {
  double toWalletRate;
  String toWalletRateHtml;
  String toWalletCurrencyCode;
  String toWalletSymbol;
  String getAmountMoneyFormat;

  CurrencyConvertData({
    this.toWalletRate,
    this.toWalletRateHtml,
    this.toWalletCurrencyCode,
    this.toWalletSymbol,
    this.getAmountMoneyFormat,
  });

  factory CurrencyConvertData.fromJson(Map<String, dynamic> json) =>
      CurrencyConvertData(
        toWalletRate: json["to_wallet_rate"] == null
            ? null
            : json["to_wallet_rate"].toDouble(),
        toWalletRateHtml: json["to_wallet_rate_html"] == null
            ? null
            : json["to_wallet_rate_html"],
        toWalletCurrencyCode: json["to_wallet_currency_code"] == null
            ? null
            : json["to_wallet_currency_code"],
        toWalletSymbol:
            json["to_wallet_symbol"] == null ? null : json["to_wallet_symbol"],
        getAmountMoneyFormat: json["get_amount_money_format"] == null
            ? null
            : json["get_amount_money_format"],
      );

  Map<String, dynamic> toJson() => {
        "to_wallet_rate": toWalletRate == null ? null : toWalletRate,
        "to_wallet_rate_html":
            toWalletRateHtml == null ? null : toWalletRateHtml,
        "to_wallet_currency_code":
            toWalletCurrencyCode == null ? null : toWalletCurrencyCode,
        "to_wallet_symbol": toWalletSymbol == null ? null : toWalletSymbol,
        "get_amount_money_format":
            getAmountMoneyFormat == null ? null : getAmountMoneyFormat,
      };
}
