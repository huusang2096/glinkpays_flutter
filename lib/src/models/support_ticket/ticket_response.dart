// To parse this JSON data, do
//
//     final ticketResponse = ticketResponseFromJson(jsonString);

import 'dart:convert';

class TicketResponse {
  TicketResponse({
    this.success,
    this.message,
    this.data,
  });

  bool success;
  String message;
  List<Ticket> data;

  factory TicketResponse.fromRawJson(String str) =>
      TicketResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TicketResponse.fromJson(Map<String, dynamic> json) => TicketResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Ticket>.from(json["data"].map((x) => Ticket.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Ticket {
  Ticket({
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
  Admin admin;
  int ticketStatusId;
  String subject;
  String message;
  String code;
  String priority;
  DateTime lastReply;
  Status status;
  List<TicketReply> ticketReplys;

  factory Ticket.fromRawJson(String str) => Ticket.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(
        id: json["id"] == null ? null : json["id"],
        admin: json["admin"] == null ? null : Admin.fromJson(json["admin"]),
        ticketStatusId:
            json["ticket_status_id"] == null ? null : json["ticket_status_id"],
        subject: json["subject"] == null ? null : json["subject"],
        message: json["message"] == null ? null : json["message"],
        code: json["code"] == null ? null : json["code"],
        priority: json["priority"] == null ? null : json["priority"],
        lastReply: json["last_reply"] == null
            ? null
            : DateTime.parse(json["last_reply"]),
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        ticketReplys: json["ticket_replys"] == null
            ? null
            : List<TicketReply>.from(
                json["ticket_replys"].map((x) => TicketReply.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "admin": admin == null ? null : admin.toJson(),
        "ticket_status_id": ticketStatusId == null ? null : ticketStatusId,
        "subject": subject == null ? null : subject,
        "message": message == null ? null : message,
        "code": code == null ? null : code,
        "priority": priority == null ? null : priority,
        "last_reply": lastReply == null ? null : lastReply.toIso8601String(),
        "status": status == null ? null : status.toJson(),
        "ticket_replys": ticketReplys == null
            ? null
            : List<dynamic>.from(ticketReplys.map((x) => x.toJson())),
      };
}

class Admin {
  Admin({
    this.id,
    this.roleId,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.picture,
    this.companyId,
  });

  int id;
  int roleId;
  String firstName;
  String lastName;
  dynamic phone;
  String email;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  String picture;
  dynamic companyId;

  factory Admin.fromRawJson(String str) => Admin.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Admin.fromJson(Map<String, dynamic> json) => Admin(
        id: json["id"] == null ? null : json["id"],
        roleId: json["role_id"] == null ? null : json["role_id"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        phone: json["phone"],
        email: json["email"] == null ? null : json["email"],
        status: json["status"] == null ? null : json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        picture: json["picture"] == null ? null : json["picture"],
        companyId: json["company_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "role_id": roleId == null ? null : roleId,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "phone": phone,
        "email": email == null ? null : email,
        "status": status == null ? null : status,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "picture": picture == null ? null : picture,
        "company_id": companyId,
      };
}

class Status {
  Status({
    this.id,
    this.name,
    this.color,
    this.isDefault,
  });

  int id;
  String name;
  String color;
  int isDefault;

  factory Status.fromRawJson(String str) => Status.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        color: json["color"] == null ? null : json["color"],
        isDefault: json["is_default"] == null ? null : json["is_default"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "color": color == null ? null : color,
        "is_default": isDefault == null ? null : isDefault,
      };
}

class TicketReply {
  TicketReply({
    this.id,
    this.adminId,
    this.userId,
    this.ticketId,
    this.message,
    this.userType,
    this.createdAt,
  });

  int id;
  int adminId;
  int userId;
  int ticketId;
  String message;
  String userType;
  DateTime createdAt;

  factory TicketReply.fromRawJson(String str) =>
      TicketReply.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TicketReply.fromJson(Map<String, dynamic> json) => TicketReply(
        id: json["id"] == null ? null : json["id"],
        adminId: json["admin_id"] == null ? null : json["admin_id"],
        userId: json["user_id"] == null ? null : json["user_id"],
        ticketId: json["ticket_id"] == null ? null : json["ticket_id"],
        message: json["message"] == null ? null : json["message"],
        userType: json["user_type"] == null ? null : json["user_type"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "admin_id": adminId == null ? null : adminId,
        "user_id": userId == null ? null : userId,
        "ticket_id": ticketId == null ? null : ticketId,
        "message": message == null ? null : message,
        "user_type": userType == null ? null : userType,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
      };
}
