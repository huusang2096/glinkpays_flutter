// To parse this JSON data, do
//
//     final brainTreeKeyResponse = brainTreeKeyResponseFromJson(jsonString);

// To parse this JSON data, do
//
//     final brainTreeKeyResponse = brainTreeKeyResponseFromJson(jsonString);

import 'dart:convert';

class BrainTreeKeyResponse {
  BrainTreeKeyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  BrainTreeKey data;

  factory BrainTreeKeyResponse.fromRawJson(String str) =>
      BrainTreeKeyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrainTreeKeyResponse.fromJson(Map<String, dynamic> json) =>
      BrainTreeKeyResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : BrainTreeKey.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class BrainTreeKey {
  BrainTreeKey({
    this.methodInfo,
  });

  MethodInfo methodInfo;

  factory BrainTreeKey.fromRawJson(String str) =>
      BrainTreeKey.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrainTreeKey.fromJson(Map<String, dynamic> json) => BrainTreeKey(
        methodInfo: json["method_info"] == null
            ? null
            : MethodInfo.fromJson(json["method_info"]),
      );

  Map<String, dynamic> toJson() => {
        "method_info": methodInfo == null ? null : methodInfo.toJson(),
      };
}

class MethodInfo {
  MethodInfo({
    this.environment,
    this.merchantId,
    this.publicKey,
    this.privateKey,
    this.sdkKey,
  });

  String environment;
  String merchantId;
  String publicKey;
  String privateKey;
  String sdkKey;

  factory MethodInfo.fromRawJson(String str) =>
      MethodInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MethodInfo.fromJson(Map<String, dynamic> json) => MethodInfo(
        environment: json["environment"] == null ? null : json["environment"],
        merchantId: json["merchant_id"] == null ? null : json["merchant_id"],
        publicKey: json["public_key"] == null ? null : json["public_key"],
        privateKey: json["private_key"] == null ? null : json["private_key"],
        sdkKey: json["sdk_key"] == null ? null : json["sdk_key"],
      );

  Map<String, dynamic> toJson() => {
        "environment": environment == null ? null : environment,
        "merchant_id": merchantId == null ? null : merchantId,
        "public_key": publicKey == null ? null : publicKey,
        "private_key": privateKey == null ? null : privateKey,
        "sdk_key": sdkKey == null ? null : sdkKey,
      };
}
