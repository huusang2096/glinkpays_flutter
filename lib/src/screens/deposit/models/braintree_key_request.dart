// To parse this JSON data, do
//
//     final brainTreeKeyRequest = brainTreeKeyRequestFromJson(jsonString);

import 'dart:convert';

class BrainTreeKeyRequest {
  BrainTreeKeyRequest({
    this.currencyId,
    this.methodId,
  });

  int currencyId;
  int methodId;

  factory BrainTreeKeyRequest.fromRawJson(String str) => BrainTreeKeyRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrainTreeKeyRequest.fromJson(Map<String, dynamic> json) => BrainTreeKeyRequest(
    currencyId: json["currency_id"] == null ? null : json["currency_id"],
    methodId: json["method_id"] == null ? null : json["method_id"],
  );

  Map<String, dynamic> toJson() => {
    "currency_id": currencyId == null ? null : currencyId,
    "method_id": methodId == null ? null : methodId,
  };
}
