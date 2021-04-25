// To parse this JSON data, do
//
//     final profileRequest = profileRequestFromJson(jsonString);

import 'dart:convert';

class ProfileRequest {
  ProfileRequest({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.formattedPhone,
    this.userDefaultCountry,
    this.userCarrierCode,
    this.country,
    this.address,
    this.city,
    this.state,
    this.timezone,
    this.defaultWallet,
    this.gender,
    this.birthday,
  });

  String firstName;
  String lastName;
  String email;
  String phone;
  String formattedPhone;
  String userDefaultCountry;
  String userCarrierCode;
  int country;
  String address;
  String city;
  String state;
  String timezone;
  int defaultWallet;
  String gender;
  String birthday;

  factory ProfileRequest.fromRawJson(String str) =>
      ProfileRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileRequest.fromJson(Map<String, dynamic> json) => ProfileRequest(
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        formattedPhone:
            json["formatted_phone"] == null ? null : json["formatted_phone"],
        userDefaultCountry: json["user_default_country"] == null
            ? null
            : json["user_default_country"],
        userCarrierCode: json["user_carrier_code"] == null
            ? null
            : json["user_carrier_code"],
        country: json["country"] == null ? null : json["country"],
        address: json["address"] == null ? null : json["address"],
        city: json["city"] == null ? null : json["city"],
        state: json["state"] == null ? null : json["state"],
        timezone: json["timezone"] == null ? null : json["timezone"],
        defaultWallet:
            json["default_wallet"] == null ? null : json["default_wallet"],
        gender: json["gender"] == null ? null : json["gender"],
        birthday: json["birthday"] == null ? null : json["birthday"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "formatted_phone": formattedPhone == null ? null : formattedPhone,
        "user_default_country":
            userDefaultCountry == null ? null : userDefaultCountry,
        "user_carrier_code": userCarrierCode == null ? null : userCarrierCode,
        "country": country == null ? null : country,
        "address": address == null ? null : address,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "timezone": timezone == null ? null : timezone,
        "default_wallet": defaultWallet == null ? null : defaultWallet,
        "gender": gender == null ? null : gender,
        "birthday": birthday == null ? null : birthday,
      };
}
