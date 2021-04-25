// To parse this JSON data, do
//
//     final stripePaymentStoreRequest = stripePaymentStoreRequestFromJson(jsonString);

import 'dart:convert';

class StripePaymentStoreRequest {
  StripePaymentStoreRequest({
    this.stripeToken,
    this.depositPaymentId,
    this.currencyId,
    this.totalAmount,
    this.amount,
    this.number,
    this.expMonth,
    this.expYear,
    this.cvv,
    this.name,
  });

  @override
  String toString() {
    return 'StripePaymentStoreRequest{stripeToken: $stripeToken, depositPaymentId: $depositPaymentId, currencyId: $currencyId, totalAmount: $totalAmount, amount: $amount, number: $number, expMonth: $expMonth, expYear: $expYear, cvv: $cvv, name: $name}';
  }

  String stripeToken;
  int depositPaymentId;
  int currencyId;
  int totalAmount;
  int amount;
  String number;
  String expMonth;
  String expYear;
  String cvv;
  String name;

  factory StripePaymentStoreRequest.fromRawJson(String str) =>
      StripePaymentStoreRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StripePaymentStoreRequest.fromJson(Map<String, dynamic> json) =>
      StripePaymentStoreRequest(
        stripeToken: json["stripeToken"] == null ? null : json["stripeToken"],
        depositPaymentId: json["deposit_payment_id"] == null
            ? null
            : json["deposit_payment_id"],
        currencyId: json["currency_id"] == null ? null : json["currency_id"],
        totalAmount: json["totalAmount"] == null ? null : json["totalAmount"],
        amount: json["amount"] == null ? null : json["amount"],
        number: json["number"] == null ? null : json["number"],
        expMonth: json["exp_month"] == null ? null : json["exp_month"],
        expYear: json["exp_year"] == null ? null : json["exp_year"],
        cvv: json["cvv"] == null ? null : json["cvv"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "stripeToken": stripeToken == null ? null : stripeToken,
        "deposit_payment_id":
            depositPaymentId == null ? null : depositPaymentId,
        "currency_id": currencyId == null ? null : currencyId,
        "totalAmount": totalAmount == null ? null : totalAmount,
        "amount": amount == null ? null : amount,
        "number": number == null ? null : number,
        "exp_month": expMonth == null ? null : expMonth,
        "exp_year": expYear == null ? null : expYear,
        "cvv": cvv == null ? null : cvv,
        "name": name == null ? null : name,
      };
}
