// To parse this JSON data, do
//
//     final stripeKeyResponse = stripeKeyResponseFromJson(jsonString);

import 'dart:convert';

class StripeKeyResponse {
  StripeKeyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  StripeKey data;

  factory StripeKeyResponse.fromRawJson(String str) =>
      StripeKeyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StripeKeyResponse.fromJson(Map<String, dynamic> json) =>
      StripeKeyResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : StripeKey.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class StripeKey {
  StripeKey({
    this.stripeKeys,
  });

  StripeKeys stripeKeys;

  factory StripeKey.fromRawJson(String str) =>
      StripeKey.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StripeKey.fromJson(Map<String, dynamic> json) => StripeKey(
        stripeKeys: json["stripe_keys"] == null
            ? null
            : StripeKeys.fromJson(json["stripe_keys"]),
      );

  Map<String, dynamic> toJson() => {
        "stripe_keys": stripeKeys == null ? null : stripeKeys.toJson(),
      };
}

class StripeKeys {
  StripeKeys({
    this.secretKey,
    this.publishableKey,
  });

  String secretKey;
  String publishableKey;

  factory StripeKeys.fromRawJson(String str) =>
      StripeKeys.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StripeKeys.fromJson(Map<String, dynamic> json) => StripeKeys(
        secretKey: json["secret_key"] == null ? null : json["secret_key"],
        publishableKey:
            json["publishable_key"] == null ? null : json["publishable_key"],
      );

  Map<String, dynamic> toJson() => {
        "secret_key": secretKey == null ? null : secretKey,
        "publishable_key": publishableKey == null ? null : publishableKey,
      };
}
