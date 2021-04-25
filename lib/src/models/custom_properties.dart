

class CustomProperties {
  String uuid;
  GeneratedConversions generatedConversions;

  CustomProperties({
    this.uuid,
    this.generatedConversions,
  });

  factory CustomProperties.fromJson(Map<String, dynamic> json) => CustomProperties(
    uuid: json["uuid"] == null ? null : json["uuid"],
    generatedConversions: json["generated_conversions"] == null ? null : GeneratedConversions.fromJson(json["generated_conversions"]),
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid == null ? null : uuid,
    "generated_conversions": generatedConversions == null ? null : generatedConversions.toJson(),
  };
}

class GeneratedConversions {
  bool thumb;
  bool icon;

  GeneratedConversions({
    this.thumb,
    this.icon,
  });

  factory GeneratedConversions.fromJson(Map<String, dynamic> json) => GeneratedConversions(
    thumb: json["thumb"] == null ? null : json["thumb"],
    icon: json["icon"] == null ? null : json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "thumb": thumb == null ? null : thumb,
    "icon": icon == null ? null : icon,
  };
}