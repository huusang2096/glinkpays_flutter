// To parse this JSON data, do
//
//     final notificationResponse = notificationResponseFromJson(jsonString);

import 'dart:convert';

class NotificationResponse {
    NotificationResponse({
        this.success,
        this.message,
        this.data,
    });

    bool success;
    String message;
    NotificationData data;

    factory NotificationResponse.fromRawJson(String str) => NotificationResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NotificationResponse.fromJson(Map<String, dynamic> json) => NotificationResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : NotificationData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
    };
}

class NotificationData {
    NotificationData({
        this.user,
        this.system,
    });

    List<NotificationItem> user;
    List<NotificationItem> system;

    factory NotificationData.fromRawJson(String str) => NotificationData.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NotificationData.fromJson(Map<String, dynamic> json) => NotificationData(
        user: json["user"] == null ? null : List<NotificationItem>.from(json["user"].map((x) => NotificationItem.fromJson(x))),
        system: json["system"] == null ? null : List<NotificationItem>.from(json["system"].map((x) => NotificationItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "user": user == null ? null : List<dynamic>.from(user.map((x) => x.toJson())),
        "system": system == null ? null : List<dynamic>.from(system.map((x) => x.toJson())),
    };
}

class NotificationItem {
    NotificationItem({
        this.id,
        this.title,
        this.notificationTypeId,
        this.userId,
        this.read,
        this.subtitle,
        this.content,
        this.createdBy,
    });

    int id;
    String title;
    int notificationTypeId;
    int userId;
    int read;
    String subtitle;
    String content;
    int createdBy;

    factory NotificationItem.fromRawJson(String str) => NotificationItem.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory NotificationItem.fromJson(Map<String, dynamic> json) => NotificationItem(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        notificationTypeId: json["notification_type_id"] == null ? null : json["notification_type_id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        read: json["read"] == null ? null : json["read"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        content: json["content"] == null ? null : json["content"],
        createdBy: json["created_by"] == null ? null : json["created_by"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "notification_type_id": notificationTypeId == null ? null : notificationTypeId,
        "user_id": userId == null ? null : userId,
        "read": read == null ? null : read,
        "subtitle": subtitle == null ? null : subtitle,
        "content": content == null ? null : content,
        "created_by": createdBy == null ? null : createdBy,
    };
}
