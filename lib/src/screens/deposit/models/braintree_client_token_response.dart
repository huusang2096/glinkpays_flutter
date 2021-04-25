// To parse this JSON data, do
//
//     final brainTreeClientTokenResponse = brainTreeClientTokenResponseFromJson(jsonString);

import 'dart:convert';

class BrainTreeClientTokenResponse {
  BrainTreeClientTokenResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  ClientPayment data;

  factory BrainTreeClientTokenResponse.fromRawJson(String str) =>
      BrainTreeClientTokenResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrainTreeClientTokenResponse.fromJson(Map<String, dynamic> json) =>
      BrainTreeClientTokenResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data:
            json["data"] == null ? null : ClientPayment.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class ClientPayment {
  ClientPayment({
    this.clientPaymentToken,
  });

  String clientPaymentToken;

  factory ClientPayment.fromRawJson(String str) =>
      ClientPayment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClientPayment.fromJson(Map<String, dynamic> json) => ClientPayment(
        clientPaymentToken: json["client_payment_token"] == null
            ? null
            : json["client_payment_token"],
      );

  Map<String, dynamic> toJson() => {
        "client_payment_token":
            clientPaymentToken == null ? null : clientPaymentToken,
      };
}
