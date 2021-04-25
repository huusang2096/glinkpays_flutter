// To parse this JSON data, do
//
//     final getCurrenciesExchangeRateRequest = getCurrenciesExchangeRateRequestFromJson(jsonString);

import 'dart:convert';

class GetCurrenciesExchangeRateRequest {
  GetCurrenciesExchangeRateRequest({
    this.amount,
    this.fromWalletCurrencyId,
    this.toWallet,
    this.fromWalletCurrencyCode,
  });

  int amount;
  int fromWalletCurrencyId;
  int toWallet;
  String fromWalletCurrencyCode;

  factory GetCurrenciesExchangeRateRequest.fromRawJson(String str) =>
      GetCurrenciesExchangeRateRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetCurrenciesExchangeRateRequest.fromJson(
          Map<String, dynamic> json) =>
      GetCurrenciesExchangeRateRequest(
        amount: json["amount"] == null ? null : json["amount"],
        fromWalletCurrencyId: json["from_wallet_currency_id"] == null
            ? null
            : json["from_wallet_currency_id"],
        toWallet: json["to_wallet"] == null ? null : json["to_wallet"],
        fromWalletCurrencyCode: json["from_wallet_currency_code"] == null
            ? null
            : json["from_wallet_currency_code"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount == null ? null : amount,
        "from_wallet_currency_id":
            fromWalletCurrencyId == null ? null : fromWalletCurrencyId,
        "to_wallet": toWallet == null ? null : toWallet,
        "from_wallet_currency_code":
            fromWalletCurrencyCode == null ? null : fromWalletCurrencyCode,
      };
}
