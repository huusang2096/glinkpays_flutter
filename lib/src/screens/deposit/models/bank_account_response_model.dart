// To parse this JSON data, do
//
//     final bankAccountResponse = bankAccountResponseFromJson(jsonString);

import 'dart:convert';

class BankAccountResponse {
  BankAccountResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Bank> data;

  factory BankAccountResponse.fromRawJson(String str) =>
      BankAccountResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BankAccountResponse.fromJson(Map<String, dynamic> json) =>
      BankAccountResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Bank>.from(json["data"].map((x) => Bank.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Bank {
  Bank({
    this.id,
    this.country,
    this.accountName,
    this.accountNumber,
    this.swiftCode,
    this.bankName,
    this.globalName,
    this.bankBranchName,
    this.bankBranchCity,
    this.bankBranchAddress,
  });

  int id;
  Country country;
  String accountName;
  String accountNumber;
  String swiftCode;
  String bankName;
  String globalName;
  String bankBranchName;
  String bankBranchCity;
  String bankBranchAddress;

  factory Bank.fromRawJson(String str) => Bank.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
        id: json["id"] == null ? null : json["id"],
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        accountName: json["account_name"] == null ? null : json["account_name"],
        accountNumber:
            json["account_number"] == null ? null : json["account_number"],
        swiftCode: json["swift_code"] == null ? null : json["swift_code"],
        bankName: json["bank_name"] == null ? null : json["bank_name"],
        globalName: json["global_name"] == null ? null : json["global_name"],
        bankBranchName:
            json["bank_branch_name"] == null ? null : json["bank_branch_name"],
        bankBranchCity:
            json["bank_branch_city"] == null ? null : json["bank_branch_city"],
        bankBranchAddress: json["bank_branch_address"] == null
            ? null
            : json["bank_branch_address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "country": country == null ? null : country.toJson(),
        "account_name": accountName == null ? null : accountName,
        "account_number": accountNumber == null ? null : accountNumber,
        "swift_code": swiftCode == null ? null : swiftCode,
        "bank_name": bankName == null ? null : bankName,
        "global_name": globalName == null ? null : globalName,
        "bank_branch_name": bankBranchName == null ? null : bankBranchName,
        "bank_branch_city": bankBranchCity == null ? null : bankBranchCity,
        "bank_branch_address":
            bankBranchAddress == null ? null : bankBranchAddress,
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
