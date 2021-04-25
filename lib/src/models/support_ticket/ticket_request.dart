// To parse this JSON data, do
//
//     final ticketRequest = ticketRequestFromJson(jsonString);

import 'dart:convert';

class TicketRequest {
  TicketRequest({
    this.subject,
    this.message,
    this.priority,
  });

  String subject;
  String message;
  String priority;

  factory TicketRequest.fromRawJson(String str) =>
      TicketRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TicketRequest.fromJson(Map<String, dynamic> json) => TicketRequest(
        subject: json["subject"] == null ? null : json["subject"],
        message: json["message"] == null ? null : json["message"],
        priority: json["priority"] == null ? null : json["priority"],
      );

  Map<String, dynamic> toJson() => {
        "subject": subject == null ? null : subject,
        "message": message == null ? null : message,
        "priority": priority == null ? null : priority,
      };
}
