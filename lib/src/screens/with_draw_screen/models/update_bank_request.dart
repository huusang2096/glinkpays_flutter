// To parse this JSON data, do
//
//     final updateBankRequest = updateBankRequestFromJson(jsonString);

import 'dart:convert';

class UpdateBankRequest {
  UpdateBankRequest({
    this.id,
    this.countryId,
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
  int countryId;
  String accountName;
  String accountNumber;
  String swiftCode;
  String bankName;
  String globalName;
  String bankBranchName;
  String bankBranchCity;
  String bankBranchAddress;

  factory UpdateBankRequest.fromRawJson(String str) =>
      UpdateBankRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateBankRequest.fromJson(Map<String, dynamic> json) =>
      UpdateBankRequest(
        id: json["id"] == null ? null : json["id"],
        countryId: json["country_id"] == null ? null : json["country_id"],
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
        "country_id": countryId == null ? null : countryId,
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
