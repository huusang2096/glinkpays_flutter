
// To parse this JSON data, do
//
//     final stripeKeyRequest = stripeKeyRequestFromJson(jsonString);

import 'dart:convert';

class StripeKeyRequest {
  StripeKeyRequest({
    this.currencyId,
    this.methodId,
  });

  int currencyId;
  int methodId;

  factory StripeKeyRequest.fromRawJson(String str) => StripeKeyRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StripeKeyRequest.fromJson(Map<String, dynamic> json) => StripeKeyRequest(
    currencyId: json["currency_id"] == null ? null : json["currency_id"],
    methodId: json["method_id"] == null ? null : json["method_id"],
  );

  Map<String, dynamic> toJson() => {
    "currency_id": currencyId == null ? null : currencyId,
    "method_id": methodId == null ? null : methodId,
  };
}
