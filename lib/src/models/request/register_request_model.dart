// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromJson(jsonString);

import 'dart:convert';

class RegisterRequest {
  RegisterRequest({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.password,
    this.type,
    this.verifyToken,
  });

  String firstName;
  String lastName;
  String email;
  String phone;
  String password;
  String type;
  String verifyToken;
  String confirmPassword;

  @override
  String toString() {
    return 'RegisterRequest{firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, password: $password, type: $type, verifyToken: $verifyToken}';
  }

  factory RegisterRequest.fromRawJson(String str) =>
      RegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
        password: json["password"] == null ? null : json["password"],
        type: json["type"] == null ? null : json["type"],
        verifyToken: json["verify_token"] == null ? null : json["verify_token"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
        "password": password == null ? null : password,
        "type": type == null ? null : type,
        "verify_token": verifyToken == null ? null : verifyToken,
      };
}
