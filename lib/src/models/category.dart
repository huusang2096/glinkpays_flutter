// To parse this JSON data, do
//
//     final CategoryResponse = CategoryResponseFromJson(jsonString);

import 'dart:convert';


class CategoriesResponse {
    CategoriesResponse({
        this.success,
        this.data,
        this.message,
    });

    bool success;
    List<CategoryResponse> data;
    String message;

    factory CategoriesResponse.fromRawJson(String str) => CategoriesResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CategoriesResponse.fromJson(Map<String, dynamic> json) => CategoriesResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : List<CategoryResponse>.from(json["data"].map((x) => CategoryResponse.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
    };
}

class CategoryResponse{
    CategoryResponse({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.customFields,
        this.hasMedia,
        this.media,
    });

    int id;
    String name;
    DateTime createdAt;
    DateTime updatedAt;
    List<dynamic> customFields;
    bool hasMedia;
    List<Media> media;

    factory CategoryResponse.fromRawJson(String str) => CategoryResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        customFields: json["custom_fields"] == null ? null : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        media: json["media"] == null ? null : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "custom_fields": customFields == null ? null : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "media": media == null ? null : List<dynamic>.from(media.map((x) => x.toJson())),
    };
}

class Media {
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

    factory Media.fromRawJson(String str) => Media.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

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

class CustomProperties {
    CustomProperties({
        this.uuid,
        this.generatedConversions,
    });

    String uuid;
    GeneratedConversions generatedConversions;

    factory CustomProperties.fromRawJson(String str) => CustomProperties.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

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
    GeneratedConversions({
        this.thumb,
        this.icon,
    });

    bool thumb;
    bool icon;

    factory GeneratedConversions.fromRawJson(String str) => GeneratedConversions.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory GeneratedConversions.fromJson(Map<String, dynamic> json) => GeneratedConversions(
        thumb: json["thumb"] == null ? null : json["thumb"],
        icon: json["icon"] == null ? null : json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "thumb": thumb == null ? null : thumb,
        "icon": icon == null ? null : icon,
    };
}
