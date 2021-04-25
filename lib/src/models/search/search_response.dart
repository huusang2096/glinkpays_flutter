// To parse this JSON data, do
//
//     final searchResponse = searchResponseFromJson(jsonString);

import 'dart:convert';

class SearchResponse {
  SearchResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<UserSearchItem> data;

  factory SearchResponse.fromRawJson(String str) =>
      SearchResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<UserSearchItem>.from(
                json["data"].map((x) => UserSearchItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class UserSearchItem {
  UserSearchItem({
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
    this.birthday,
    this.address1,
    this.city,
    this.state,
    this.countryId,
    this.timezone,
    this.currentLevel,
    this.currentPoints,
    this.nextLevel,
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
  String birthday;
  String address1;
  String city;
  String state;
  int countryId;
  String timezone;
  TLevel currentLevel;
  double currentPoints;
  TLevel nextLevel;

  factory UserSearchItem.fromRawJson(String str) =>
      UserSearchItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserSearchItem.fromJson(Map<String, dynamic> json) => UserSearchItem(
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
        birthday: json["birthday"] == null ? null : json["birthday"],
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
        "birthday": birthday == null ? null : birthday,
        "address_1": address1 == null ? null : address1,
        "city": city == null ? null : city,
        "state": state == null ? null : state,
        "country_id": countryId == null ? null : countryId,
        "timezone": timezone == null ? null : timezone,
        "currentLevel": currentLevel == null ? null : currentLevel.toJson(),
        "currentPoints": currentPoints == null ? null : currentPoints,
        "nextLevel": nextLevel == null ? null : nextLevel.toJson(),
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
