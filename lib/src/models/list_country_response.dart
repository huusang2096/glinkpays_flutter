// To parse this JSON data, do
//
//     final listCountryResponse = listCountryResponseFromJson(jsonString);

import 'dart:convert';

class ListCountryResponse {
  ListCountryResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Country> data;

  factory ListCountryResponse.fromRawJson(String str) =>
      ListCountryResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListCountryResponse.fromJson(Map<String, dynamic> json) =>
      ListCountryResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Country>.from(json["data"].map((x) => Country.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Country {
  Country({
    this.id,
    this.shortName,
    this.name,
    this.iso3,
    this.numberCode,
    this.phoneCode,
  });

  int id;
  String shortName;
  String name;
  String iso3;
  String numberCode;
  String phoneCode;

  factory Country.fromRawJson(String str) => Country.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"] == null ? null : json["id"],
        shortName: json["short_name"] == null ? null : json["short_name"],
        name: json["name"] == null ? null : json["name"],
        iso3: json["iso3"] == null ? null : json["iso3"],
        numberCode: json["number_code"] == null ? null : json["number_code"],
        phoneCode: json["phone_code"] == null ? null : json["phone_code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "short_name": shortName == null ? null : shortName,
        "name": name == null ? null : name,
        "iso3": iso3 == null ? null : iso3,
        "number_code": numberCode == null ? null : numberCode,
        "phone_code": phoneCode == null ? null : phoneCode,
      };
}
