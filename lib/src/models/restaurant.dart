import 'package:vipay/src/models/media.dart';

class Restaurant {
  int id;
  String name;
  String description;
  String address;
  String latitude;
  String longitude;
  String phone;
  String mobile;
  String information;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> customFields;
  bool hasMedia;
  String rate;
  List<Media> media;

  Restaurant({
    this.id,
    this.name,
    this.description,
    this.address,
    this.latitude,
    this.longitude,
    this.phone,
    this.mobile,
    this.information,
    this.createdAt,
    this.updatedAt,
    this.customFields,
    this.hasMedia,
    this.rate,
    this.media,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        address: json["address"] == null ? null : json["address"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        phone: json["phone"] == null ? null : json["phone"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        information: json["information"] == null ? null : json["information"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        customFields: json["custom_fields"] == null
            ? null
            : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        rate: json["rate"] == null ? null : json["rate"],
        media: json["media"] == null
            ? null
            : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "address": address == null ? null : address,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "phone": phone == null ? null : phone,
        "mobile": mobile == null ? null : mobile,
        "information": information == null ? null : information,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "rate": rate == null ? null : rate,
        "media": media == null
            ? null
            : List<dynamic>.from(media.map((x) => x.toJson())),
      };
}
