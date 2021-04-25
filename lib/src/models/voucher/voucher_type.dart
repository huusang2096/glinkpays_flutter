import 'package:vipay/src/models/base_model.dart';

class VoucherTypeResponse extends BaseResponse {
  bool success;
  List<VoucherType> data;
  String message;

  VoucherTypeResponse({
    this.success,
    this.data,
    this.message,
  });

  factory VoucherTypeResponse.fromJson(Map<String, dynamic> json) =>
      VoucherTypeResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : List<VoucherType>.from(
                json["data"].map((x) => VoucherType.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
      };

  @override
  bool hasData() {
    return data != null;
  }
}

class VoucherType {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  VoucherType({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory VoucherType.fromJson(Map<String, dynamic> json) => VoucherType(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}
