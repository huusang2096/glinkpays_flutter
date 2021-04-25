import 'custom_properties.dart';

class Media {
  int id;
  String modelType;
  int modelId;
  String collectionName;
  String name;
  String fileName;
  String mimeType;
  String disk;
  int size;
  List<dynamic> manipulations;
  CustomProperties customProperties;
  List<dynamic> responsiveImages;
  int orderColumn;
  DateTime createdAt;
  DateTime updatedAt;
  String url;
  String thumb;
  String icon;
  String formatedSize;

  Media({
    this.id,
    this.modelType,
    this.modelId,
    this.collectionName,
    this.name,
    this.fileName,
    this.mimeType,
    this.disk,
    this.size,
    this.manipulations,
    this.customProperties,
    this.responsiveImages,
    this.orderColumn,
    this.createdAt,
    this.updatedAt,
    this.url,
    this.thumb,
    this.icon,
    this.formatedSize,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    id: json["id"] == null ? null : json["id"],
    modelType: json["model_type"] == null ? null : json["model_type"],
    modelId: json["model_id"] == null ? null : json["model_id"],
    collectionName: json["collection_name"] == null ? null : json["collection_name"],
    name: json["name"] == null ? null : json["name"],
    fileName: json["file_name"] == null ? null : json["file_name"],
    mimeType: json["mime_type"] == null ? null : json["mime_type"],
    disk: json["disk"] == null ? null : json["disk"],
    size: json["size"] == null ? null : json["size"],
    manipulations: json["manipulations"] == null ? null : List<dynamic>.from(json["manipulations"].map((x) => x)),
    customProperties: json["custom_properties"] == null ? null : CustomProperties.fromJson(json["custom_properties"]),
    responsiveImages: json["responsive_images"] == null ? null : List<dynamic>.from(json["responsive_images"].map((x) => x)),
    orderColumn: json["order_column"] == null ? null : json["order_column"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    url: json["url"] == null ? null : json["url"],
    thumb: json["thumb"] == null ? null : json["thumb"],
    icon: json["icon"] == null ? null : json["icon"],
    formatedSize: json["formated_size"] == null ? null : json["formated_size"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "model_type": modelType == null ? null : modelType,
    "model_id": modelId == null ? null : modelId,
    "collection_name": collectionName == null ? null : collectionName,
    "name": name == null ? null : name,
    "file_name": fileName == null ? null : fileName,
    "mime_type": mimeType == null ? null : mimeType,
    "disk": disk == null ? null : disk,
    "size": size == null ? null : size,
    "manipulations": manipulations == null ? null : List<dynamic>.from(manipulations.map((x) => x)),
    "custom_properties": customProperties == null ? null : customProperties.toJson(),
    "responsive_images": responsiveImages == null ? null : List<dynamic>.from(responsiveImages.map((x) => x)),
    "order_column": orderColumn == null ? null : orderColumn,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
    "url": url == null ? null : url,
    "thumb": thumb == null ? null : thumb,
    "icon": icon == null ? null : icon,
    "formated_size": formatedSize == null ? null : formatedSize,
  };
}