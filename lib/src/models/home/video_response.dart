// To parse this JSON data, do
//
//     final videoResponse = videoResponseFromJson(jsonString);

import 'dart:convert';

class VideoResponse {
  VideoResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Video> data;

  factory VideoResponse.fromRawJson(String str) =>
      VideoResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoResponse.fromJson(Map<String, dynamic> json) => VideoResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Video>.from(json["data"].map((x) => Video.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Video {
  Video({
    this.id,
    this.title,
    this.shortDescription,
    this.url,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String title;
  String shortDescription;
  String url;
  String status;
  dynamic createdAt;
  dynamic updatedAt;

  factory Video.fromRawJson(String str) => Video.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        shortDescription: json["short_description"] == null
            ? null
            : json["short_description"],
        url: json["url"] == null ? null : json["url"],
        status: json["status"] == null ? null : json["status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "short_description": shortDescription == null ? null : shortDescription,
        "url": url == null ? null : url,
        "status": status == null ? null : status,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
