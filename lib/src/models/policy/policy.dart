import 'dart:convert';

class Policy {
  Policy({
    this.ruleId,
    this.versionNumber,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.ruleTitle,
  });

  int ruleId;
  int versionNumber;
  String content;
  dynamic createdAt;
  dynamic updatedAt;
  String ruleTitle;

  factory Policy.fromRawJson(String str) => Policy.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Policy.fromJson(Map<String, dynamic> json) => Policy(
        ruleId: json["rule_id"],
        versionNumber: json["version_number"],
        content: json["content"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        ruleTitle: json["rule_title"],
      );

  Map<String, dynamic> toJson() => {
        "rule_id": ruleId,
        "version_number": versionNumber,
        "content": content,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "rule_title": ruleTitle,
      };
}
