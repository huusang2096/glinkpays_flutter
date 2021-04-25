// To parse this JSON data, do
//
//     final userResponse = userResponseFromJson(jsonString);

import 'dart:convert';

class UserResponse {
  UserResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  User data;

  factory UserResponse.fromRawJson(String str) =>
      UserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : User.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class User {
  User({
    this.id,
    this.firstName,
    this.lastName,
    this.name,
    this.email,
    this.apiToken,
    this.phone,
    this.address,
    this.bio,
    this.type,
    this.image,
    this.electronicSignature,
    this.birthday,
    this.gender,
    this.address1,
    this.city,
    this.state,
    this.countryId,
    this.timezone,
    this.currentLevel,
    this.currentPoints,
    this.nextLevel,
    this.inherited,
    this.documentVerification,
    this.emailVerification,
    this.phoneVerificationCode,
    this.identityVerificationWarring,
    this.stockCertificate,
  });

  int id;
  String firstName;
  String lastName;
  String name;
  String email;
  String apiToken;
  String phone;
  String address;
  String bio;
  String type;
  String image;
  String electronicSignature;
  String birthday;
  String gender;
  String address1;
  String city;
  String state;
  int countryId;
  String timezone;
  TLevel currentLevel;
  double currentPoints;
  TLevel nextLevel;
  Inherited inherited;
  List<DocumentVerification> documentVerification;
  bool emailVerification;
  bool phoneVerificationCode;
  bool identityVerificationWarring;
  String stockCertificate;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        apiToken: json["apiToken"] == null ? null : json["apiToken"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        bio: json["bio"] == null ? null : json["bio"],
        type: json["type"] == null ? null : json["type"],
        image: json["image"] == null ? null : json["image"],
        electronicSignature: json["electronic_signature"] == null
            ? null
            : json["electronic_signature"],
        birthday: json["birthday"] == null ? null : json["birthday"],
        gender: json["gender"] == null ? null : json["gender"],
        address1: json["address_1"] == null ? null : json["address_1"],
        city: json["city"] == null ? null : json["city"],
        state: json["state"] == null ? null : json["state"],
        countryId: json["country_id"] == null ? null : json["country_id"],
        timezone: json["timezone"] == null ? null : json["timezone"],
        currentLevel: json["currentLevel"] == null
            ? null
            : TLevel.fromJson(json["currentLevel"]),
        currentPoints: json["currentPoints"] == null
            ? null
            : json["currentPoints"].toDouble(),
        nextLevel: json["nextLevel"] == null
            ? null
            : TLevel.fromJson(json["nextLevel"]),
        inherited: json["inherited"] == null
            ? null
            : Inherited.fromJson(json["inherited"]),
        documentVerification: json["document_verification"] == null
            ? null
            : List<DocumentVerification>.from(json["document_verification"]
                .map((x) => DocumentVerification.fromJson(x))),
        emailVerification: json["email_verification"] == null
            ? null
            : json["email_verification"],
        phoneVerificationCode: json["phone_verification_code"] == null
            ? null
            : json["phone_verification_code"],
        identityVerificationWarring:
            json["identity_verification_warring"] == null
                ? null
                : json["identity_verification_warring"],
        stockCertificate: json["stock_certificate"] == null
            ? null
            : json["stock_certificate"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "apiToken": apiToken == null ? null : apiToken,
        "phone": phone == null ? null : phone,
        "address": address == null ? null : address,
        "bio": bio == null ? null : bio,
        "type": type == null ? null : type,
        "image": image == null ? null : image,
        "electronic_signature":
            electronicSignature == null ? null : electronicSignature,
        "birthday": birthday == null ? null : birthday,
        "gender": gender == null ? null : gender,
        "address_1": address1 == null ? null : address1,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "country_id": countryId == null ? null : countryId,
        "timezone": timezone == null ? null : timezone,
        "currentLevel": currentLevel == null ? null : currentLevel.toJson(),
        "currentPoints": currentPoints == null ? null : currentPoints,
        "nextLevel": nextLevel == null ? null : nextLevel.toJson(),
        "inherited": inherited == null ? null : inherited.toJson(),
        "document_verification": documentVerification == null
            ? null
            : List<dynamic>.from(documentVerification.map((x) => x.toJson())),
        "email_verification":
            emailVerification == null ? null : emailVerification,
        "phone_verification_code":
            phoneVerificationCode == null ? null : phoneVerificationCode,
        "identity_verification_warring": identityVerificationWarring == null
            ? null
            : identityVerificationWarring,
        "stock_certificate": stockCertificate == null ? null : stockCertificate,
      };
}

class TLevel {
  TLevel({
    this.name,
    this.badgeImage,
    this.minimumPoint,
  });

  String name;
  String badgeImage;
  int minimumPoint;

  factory TLevel.fromRawJson(String str) => TLevel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TLevel.fromJson(Map<String, dynamic> json) => TLevel(
        name: json["name"] == null ? null : json["name"],
        badgeImage: json["badge_image"] == null ? null : json["badge_image"],
        minimumPoint:
            json["minimum_point"] == null ? null : json["minimum_point"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "badge_image": badgeImage == null ? null : badgeImage,
        "minimum_point": minimumPoint == null ? null : minimumPoint,
      };
}

class DocumentVerification {
  DocumentVerification({
    this.id,
    this.userId,
    this.fileId,
    this.verificationType,
    this.identityType,
    this.identityNumber,
    this.status,
    this.path,
  });

  int id;
  int userId;
  int fileId;
  String verificationType;
  String identityType;
  String identityNumber;
  String status;
  List<String> path;

  factory DocumentVerification.fromRawJson(String str) =>
      DocumentVerification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DocumentVerification.fromJson(Map<String, dynamic> json) =>
      DocumentVerification(
        id: json["id"] == null ? null : json["id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        fileId: json["file_id"] == null ? null : json["file_id"],
        verificationType: json["verification_type"] == null
            ? null
            : json["verification_type"],
        identityType:
            json["identity_type"] == null ? null : json["identity_type"],
        identityNumber:
            json["identity_number"] == null ? null : json["identity_number"],
        status: json["status"] == null ? null : json["status"],
        path: json["path"] == null
            ? null
            : List<String>.from(json["path"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "user_id": userId == null ? null : userId,
        "file_id": fileId == null ? null : fileId,
        "verification_type": verificationType == null ? null : verificationType,
        "identity_type": identityType == null ? null : identityType,
        "identity_number": identityNumber == null ? null : identityNumber,
        "status": status == null ? null : status,
        "path": path == null ? null : List<dynamic>.from(path.map((x) => x)),
      };
}

class Inherited {
  Inherited(
      {this.firstName,
      this.lastName,
      this.phone,
      this.address,
      this.identity,
      this.verifyToken});

  String firstName;
  String lastName;
  String phone;
  String address;
  String identity;
  String verifyToken;

  factory Inherited.fromRawJson(String str) =>
      Inherited.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Inherited.fromJson(Map<String, dynamic> json) => Inherited(
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        identity: json["identity"] == null ? null : json["identity"],
        verifyToken: json["verify_token"] == null ? null : json['verify_token'],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "phone": phone == null ? null : phone,
        "address": address == null ? null : address,
        "identity": identity == null ? null : identity,
        "verify_token": verifyToken == null ? null : verifyToken,
      };
}
