// To parse this JSON data, do
//
//     final exchangeMoneyCompleteRequest = exchangeMoneyCompleteRequestFromJson(jsonString);

import 'dart:convert';

class ExchangeMoneyCompleteRequest {
  ExchangeMoneyCompleteRequest({
    this.fromWalletCurrencyId,
    this.toWalletCurrencyId,
    this.toWalletAmount,
    this.toWalletExchangeRate,
    this.fromWalletAmount,
    this.totalFees,
  });

  int fromWalletCurrencyId;
  int toWalletCurrencyId;
  double toWalletAmount;
  double toWalletExchangeRate;
  double fromWalletAmount;
  double totalFees;

  factory ExchangeMoneyCompleteRequest.fromRawJson(String str) =>
      ExchangeMoneyCompleteRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ExchangeMoneyCompleteRequest.fromJson(Map<String, dynamic> json) =>
      ExchangeMoneyCompleteRequest(
        fromWalletCurrencyId: json["from_wallet_currency_id"] == null
            ? null
            : json["from_wallet_currency_id"],
        toWalletCurrencyId: json["to_wallet_currency_id"] == null
            ? null
            : json["to_wallet_currency_id"],
        toWalletAmount: json["to_wallet_amount"] == null
            ? null
            : json["to_wallet_amount"].toDouble(),
        toWalletExchangeRate: json["to_wallet_exchange_rate"] == null
            ? null
            : json["to_wallet_exchange_rate"].toDouble(),
        fromWalletAmount: json["from_wallet_amount"] == null
            ? null
            : json["from_wallet_amount"].toDouble(),
        totalFees:
            json["total_fees"] == null ? null : json["total_fees"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "from_wallet_currency_id":
            fromWalletCurrencyId == null ? null : fromWalletCurrencyId,
        "to_wallet_currency_id":
            toWalletCurrencyId == null ? null : toWalletCurrencyId,
        "to_wallet_amount": toWalletAmount == null ? null : toWalletAmount,
        "to_wallet_exchange_rate":
            toWalletExchangeRate == null ? null : toWalletExchangeRate,
        "from_wallet_amount":
            fromWalletAmount == null ? null : fromWalletAmount,
        "total_fees": totalFees == null ? null : totalFees,
      };
}
