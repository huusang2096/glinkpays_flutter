// To parse this JSON data, do
//
//     final checkVoucherRequest = checkVoucherRequestFromJson(jsonString);

import 'dart:convert';

class SendMoneyMerchantRequest {
  SendMoneyMerchantRequest({
    this.code,
    this.paymentAmount,
    this.merchantId,
  });

  String code;
  int paymentAmount;
  int merchantId;

  factory SendMoneyMerchantRequest.fromRawJson(String str) =>
      SendMoneyMerchantRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SendMoneyMerchantRequest.fromJson(Map<String, dynamic> json) =>
      SendMoneyMerchantRequest(
        code: json["code"] == null ? null : json["code"],
        paymentAmount:
            json["payment_amount"] == null ? null : json["payment_amount"],
        merchantId: json["merchant_id"] == null ? null : json["merchant_id"],
      );

  Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "payment_amount": paymentAmount == null ? null : paymentAmount,
        "merchant_id": merchantId == null ? null : merchantId,
      };
}
