// To parse this JSON data, do
//
//     final userPaymentResponse = userPaymentResponseFromJson(jsonString);

import 'dart:convert';

class UserPaymentResponse {
  bool success;
  String message;
  UserPayment data;

  UserPaymentResponse({
    this.success,
    this.message,
    this.data,
  });

  factory UserPaymentResponse.fromRawJson(String str) => UserPaymentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserPaymentResponse.fromJson(Map<String, dynamic> json) => UserPaymentResponse(
    success: json["success"] == null ? null : json["success"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : UserPayment.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "message": message == null ? null : message,
    "data": data == null ? null : data.toJson(),
  };
}

class UserPayment {
  int userId;
  String firstName;
  String lastName;
  String email;
  String formattedPhone;
  String picture;
  String token;

  UserPayment({
    this.userId,
    this.firstName,
    this.lastName,
    this.email,
    this.formattedPhone,
    this.picture,
    this.token,
  });

  factory UserPayment.fromRawJson(String str) => UserPayment.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserPayment.fromJson(Map<String, dynamic> json) => UserPayment(
    userId: json["user_id"] == null ? null : json["user_id"],
    firstName: json["first_name"] == null ? null : json["first_name"],
    lastName: json["last_name"] == null ? null : json["last_name"],
    email: json["email"] == null ? null : json["email"],
    formattedPhone: json["formattedPhone"] == null ? null : json["formattedPhone"],
    picture: json["picture"] == null ? null : json["picture"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId == null ? null : userId,
    "first_name": firstName == null ? null : firstName,
    "last_name": lastName == null ? null : lastName,
    "email": email == null ? null : email,
    "formattedPhone": formattedPhone == null ? null : formattedPhone,
    "picture": picture == null ? null : picture,
    "token": token == null ? null : token,
  };
}
