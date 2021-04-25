// To parse this JSON data, do
//
//     final brainTreePaymentStoreRequest = brainTreePaymentStoreRequestFromJson(jsonString);

import 'dart:convert';

class BrainTreePaymentStoreRequest {
  BrainTreePaymentStoreRequest({
    this.paymentMethodNonce,
    this.depositPaymentId,
    this.currencyId,
    this.totalAmount,
    this.amount,
  });

  String paymentMethodNonce;
  int depositPaymentId;
  int currencyId;
  int totalAmount;
  int amount;

  factory BrainTreePaymentStoreRequest.fromRawJson(String str) =>
      BrainTreePaymentStoreRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrainTreePaymentStoreRequest.fromJson(Map<String, dynamic> json) =>
      BrainTreePaymentStoreRequest(
        paymentMethodNonce: json["payment_method_nonce"] == null
            ? null
            : json["payment_method_nonce"],
        depositPaymentId: json["deposit_payment_id"] == null
            ? null
            : json["deposit_payment_id"],
        currencyId: json["currency_id"] == null ? null : json["currency_id"],
        totalAmount: json["totalAmount"] == null ? null : json["totalAmount"],
        amount: json["amount"] == null ? null : json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "payment_method_nonce":
            paymentMethodNonce == null ? null : paymentMethodNonce,
        "deposit_payment_id":
            depositPaymentId == null ? null : depositPaymentId,
        "currency_id": currencyId == null ? null : currencyId,
        "totalAmount": totalAmount == null ? null : totalAmount,
        "amount": amount == null ? null : amount,
      };
}
