// To parse this JSON data, do
//
//     final sendMoneyReponse = sendMoneyReponseFromJson(jsonString);

import 'dart:convert';

class SendMoneyResponse {
  SendMoneyResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory SendMoneyResponse.fromRawJson(String str) =>
      SendMoneyResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SendMoneyResponse.fromJson(Map<String, dynamic> json) =>
      SendMoneyResponse(
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
    this.trRefId,
  });

  int trRefId;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        trRefId: json["tr_ref_id"] == null ? null : json["tr_ref_id"],
      );

  Map<String, dynamic> toJson() => {
        "tr_ref_id": trRefId == null ? null : trRefId,
      };
}
