// To parse this JSON data, do
//
//     final checkTransactionFeeResponse = checkTransactionFeeResponseFromJson(jsonString);

import 'dart:convert';

class CheckTransactionFeeResponse {
  CheckTransactionFeeResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory CheckTransactionFeeResponse.fromRawJson(String str) =>
      CheckTransactionFeeResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CheckTransactionFeeResponse.fromJson(Map<String, dynamic> json) =>
      CheckTransactionFeeResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.feeDetails,
    this.totalFeeChargePercentage,
    this.totalFeeChargeFixed,
    this.totalFee,
    this.currencyFee,
    this.totalAmountWithFee,
    this.amount,
  });

  FeeDetails feeDetails;
  double totalFeeChargePercentage;
  String totalFeeChargeFixed;
  double totalFee;
  String currencyFee;
  double totalAmountWithFee;
  String amount;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        feeDetails: json["fee_details"] == null
            ? null
            : FeeDetails.fromJson(json["fee_details"]),
        totalFeeChargePercentage: json["total_fee_charge_percentage"] == null
            ? null
            : json["total_fee_charge_percentage"].toDouble(),
        totalFeeChargeFixed: json["total_fee_charge_fixed"] == null
            ? null
            : json["total_fee_charge_fixed"],
        totalFee:
            json["total_fee"] == null ? null : json["total_fee"].toDouble(),
        currencyFee: json["currency_fee"] == null ? null : json["currency_fee"],
        totalAmountWithFee: json["total_amount_with_fee"] == null
            ? null
            : json["total_amount_with_fee"].toDouble(),
        amount: json["amount"] == null ? null : json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "fee_details": feeDetails == null ? null : feeDetails.toJson(),
        "total_fee_charge_percentage":
            totalFeeChargePercentage == null ? null : totalFeeChargePercentage,
        "total_fee_charge_fixed":
            totalFeeChargeFixed == null ? null : totalFeeChargeFixed,
        "total_fee": totalFee == null ? null : totalFee,
        "currency_fee": currencyFee == null ? null : currencyFee,
        "total_amount_with_fee":
            totalAmountWithFee == null ? null : totalAmountWithFee,
        "amount": amount == null ? null : amount,
      };
}

class FeeDetails {
  FeeDetails({
    this.chargePercentage,
    this.chargeFixed,
  });

  String chargePercentage;
  String chargeFixed;

  factory FeeDetails.fromRawJson(String str) =>
      FeeDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FeeDetails.fromJson(Map<String, dynamic> json) => FeeDetails(
        chargePercentage: json["charge_percentage"] == null
            ? null
            : json["charge_percentage"],
        chargeFixed: json["charge_fixed"] == null ? null : json["charge_fixed"],
      );

  Map<String, dynamic> toJson() => {
        "charge_percentage": chargePercentage == null ? null : chargePercentage,
        "charge_fixed": chargeFixed == null ? null : chargeFixed,
      };
}
