// To parse this JSON data, do
//
//     final updateTicketResponse = updateTicketResponseFromJson(jsonString);

import 'dart:convert';

class UpdateTicketResponse {
  UpdateTicketResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  Data data;

  factory UpdateTicketResponse.fromRawJson(String str) =>
      UpdateTicketResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateTicketResponse.fromJson(Map<String, dynamic> json) =>
      UpdateTicketResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.admin,
    this.ticketStatusId,
    this.subject,
    this.message,
    this.code,
    this.priority,
    this.lastReply,
    this.status,
    this.ticketReplys,
  });

  int id;
  dynamic admin;
  dynamic ticketStatusId;
  String subject;
  String message;
  String code;
  String priority;
  dynamic lastReply;
  dynamic status;
  List<dynamic> ticketReplys;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        admin: json["admin"],
        ticketStatusId: json["ticket_status_id"],
        subject: json["subject"] == null ? null : json["subject"],
        message: json["message"] == null ? null : json["message"],
        code: json["code"] == null ? null : json["code"],
        priority: json["priority"] == null ? null : json["priority"],
        lastReply: json["last_reply"],
        status: json["status"],
        ticketReplys: json["ticket_replys"] == null
            ? null
            : List<dynamic>.from(json["ticket_replys"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "admin": admin,
        "ticket_status_id": ticketStatusId,
        "subject": subject == null ? null : subject,
        "message": message == null ? null : message,
        "code": code == null ? null : code,
        "priority": priority == null ? null : priority,
        "last_reply": lastReply,
        "status": status,
        "ticket_replys": ticketReplys == null
            ? null
            : List<dynamic>.from(ticketReplys.map((x) => x)),
      };
}
