// To parse this JSON data, do
//
//     final myVoucherOrderResponse = myVoucherOrderResponseFromJson(jsonString);

import 'dart:convert';

class MyVoucherOrderResponse {
  MyVoucherOrderResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  List<MyVoucherOrder> data;
  String message;

  factory MyVoucherOrderResponse.fromRawJson(String str) =>
      MyVoucherOrderResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MyVoucherOrderResponse.fromJson(Map<String, dynamic> json) =>
      MyVoucherOrderResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? []
            : List<MyVoucherOrder>.from(
                json["data"].map((x) => MyVoucherOrder.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
      };
}

class MyVoucherOrder {
  MyVoucherOrder({
    this.id,
    this.food,
    this.price,
    this.quantity,
    this.orderId,
    this.couponCode,
    this.expiryDate,
    this.used,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  Food food;
  int price;
  int quantity;
  int orderId;
  String couponCode;
  DateTime expiryDate;
  bool used;
  DateTime createdAt;
  DateTime updatedAt;

  factory MyVoucherOrder.fromRawJson(String str) =>
      MyVoucherOrder.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MyVoucherOrder.fromJson(Map<String, dynamic> json) => MyVoucherOrder(
        id: json["id"] == null ? null : json["id"],
        food: json["food"] == null ? null : Food.fromJson(json["food"]),
        price: json["price"] == null ? null : json["price"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        orderId: json["order_id"] == null ? null : json["order_id"],
        couponCode: json["coupon_code"] == null ? null : json["coupon_code"],
        expiryDate: json["expiry_date"] == null
            ? null
            : DateTime.parse(json["expiry_date"]),
        used: json["used"] == null ? null : json["used"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "food": food == null ? null : food.toJson(),
        "price": price == null ? null : price,
        "quantity": quantity == null ? null : quantity,
        "order_id": orderId == null ? null : orderId,
        "coupon_code": couponCode == null ? null : couponCode,
        "expiry_date": expiryDate == null ? null : expiryDate.toIso8601String(),
        "used": used == null ? null : used,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
      };
}

class Food {
  Food({
    this.id,
    this.name,
    this.foodTypeId,
    this.price,
    this.discountPrice,
    this.description,
    this.ingredients,
    this.quantity,
    this.featured,
    this.restaurantId,
    this.categoryId,
    this.saleStartTime,
    this.saleEndTime,
    this.isCoupon,
    this.couponDuration,
    this.createdAt,
    this.updatedAt,
    this.customFields,
    this.hasMedia,
    this.restaurant,
    this.foodType,
    this.media,
  });

  int id;
  String name;
  int foodTypeId;
  int price;
  int discountPrice;
  String description;
  String ingredients;
  int quantity;
  bool featured;
  int restaurantId;
  int categoryId;
  dynamic saleStartTime;
  dynamic saleEndTime;
  bool isCoupon;
  int couponDuration;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> customFields;
  bool hasMedia;
  Restaurant restaurant;
  FoodType foodType;
  List<Media> media;

  factory Food.fromRawJson(String str) => Food.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        foodTypeId: json["food_type_id"] == null ? null : json["food_type_id"],
        price: json["price"] == null ? null : json["price"],
        discountPrice:
            json["discount_price"] == null ? null : json["discount_price"],
        description: json["description"] == null ? null : json["description"],
        ingredients: json["ingredients"] == null ? null : json["ingredients"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        featured: json["featured"] == null ? null : json["featured"],
        restaurantId:
            json["restaurant_id"] == null ? null : json["restaurant_id"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        saleStartTime: json["sale_start_time"],
        saleEndTime: json["sale_end_time"],
        isCoupon: json["is_coupon"] == null ? null : json["is_coupon"],
        couponDuration:
            json["coupon_duration"] == null ? null : json["coupon_duration"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        customFields: json["custom_fields"] == null
            ? null
            : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        restaurant: json["restaurant"] == null
            ? null
            : Restaurant.fromJson(json["restaurant"]),
        foodType: json["food_type"] == null
            ? null
            : FoodType.fromJson(json["food_type"]),
        media: json["media"] == null
            ? null
            : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "food_type_id": foodTypeId == null ? null : foodTypeId,
        "price": price == null ? null : price,
        "discount_price": discountPrice == null ? null : discountPrice,
        "description": description == null ? null : description,
        "ingredients": ingredients == null ? null : ingredients,
        "quantity": quantity == null ? null : quantity,
        "featured": featured == null ? null : featured,
        "restaurant_id": restaurantId == null ? null : restaurantId,
        "category_id": categoryId == null ? null : categoryId,
        "sale_start_time": saleStartTime,
        "sale_end_time": saleEndTime,
        "is_coupon": isCoupon == null ? null : isCoupon,
        "coupon_duration": couponDuration == null ? null : couponDuration,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "restaurant": restaurant == null ? null : restaurant.toJson(),
        "food_type": foodType == null ? null : foodType.toJson(),
        "media": media == null
            ? null
            : List<dynamic>.from(media.map((x) => x.toJson())),
      };
}

class FoodType {
  FoodType({
    this.id,
    this.name,
  });

  int id;
  String name;

  factory FoodType.fromRawJson(String str) =>
      FoodType.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FoodType.fromJson(Map<String, dynamic> json) => FoodType(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
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
        collectionName:
            json["collection_name"] == null ? null : json["collection_name"],
        name: json["name"] == null ? null : json["name"],
        fileName: json["file_name"] == null ? null : json["file_name"],
        mimeType: json["mime_type"] == null ? null : json["mime_type"],
        disk: json["disk"] == null ? null : json["disk"],
        size: json["size"] == null ? null : json["size"],
        manipulations: json["manipulations"] == null
            ? null
            : List<dynamic>.from(json["manipulations"].map((x) => x)),
        customProperties: json["custom_properties"] == null
            ? null
            : CustomProperties.fromJson(json["custom_properties"]),
        responsiveImages: json["responsive_images"] == null
            ? null
            : List<dynamic>.from(json["responsive_images"].map((x) => x)),
        orderColumn: json["order_column"] == null ? null : json["order_column"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        url: json["url"] == null ? null : json["url"],
        thumb: json["thumb"] == null ? null : json["thumb"],
        icon: json["icon"] == null ? null : json["icon"],
        formatedSize:
            json["formated_size"] == null ? null : json["formated_size"],
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
        "manipulations": manipulations == null
            ? null
            : List<dynamic>.from(manipulations.map((x) => x)),
        "custom_properties":
            customProperties == null ? null : customProperties.toJson(),
        "responsive_images": responsiveImages == null
            ? null
            : List<dynamic>.from(responsiveImages.map((x) => x)),
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

  factory CustomProperties.fromRawJson(String str) =>
      CustomProperties.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomProperties.fromJson(Map<String, dynamic> json) =>
      CustomProperties(
        uuid: json["uuid"] == null ? null : json["uuid"],
        generatedConversions: json["generated_conversions"] == null
            ? null
            : GeneratedConversions.fromJson(json["generated_conversions"]),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid == null ? null : uuid,
        "generated_conversions":
            generatedConversions == null ? null : generatedConversions.toJson(),
      };
}

class GeneratedConversions {
  GeneratedConversions({
    this.thumb,
    this.icon,
  });

  bool thumb;
  bool icon;

  factory GeneratedConversions.fromRawJson(String str) =>
      GeneratedConversions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GeneratedConversions.fromJson(Map<String, dynamic> json) =>
      GeneratedConversions(
        thumb: json["thumb"] == null ? null : json["thumb"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "thumb": thumb == null ? null : thumb,
        "icon": icon == null ? null : icon,
      };
}

class Restaurant {
  Restaurant({
    this.id,
    this.name,
    this.description,
    this.address,
    this.latitude,
    this.longitude,
    this.phone,
    this.mobile,
    this.information,
    this.customFields,
    this.hasMedia,
    this.rate,
    this.media,
  });

  int id;
  String name;
  String description;
  String address;
  String latitude;
  String longitude;
  String phone;
  String mobile;
  String information;
  List<dynamic> customFields;
  bool hasMedia;
  String rate;
  List<Media> media;

  factory Restaurant.fromRawJson(String str) =>
      Restaurant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        address: json["address"] == null ? null : json["address"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        phone: json["phone"] == null ? null : json["phone"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        information: json["information"] == null ? null : json["information"],
        customFields: json["custom_fields"] == null
            ? null
            : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        rate: json["rate"] == null ? null : json["rate"],
        media: json["media"] == null
            ? null
            : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "address": address == null ? null : address,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "phone": phone == null ? null : phone,
        "mobile": mobile == null ? null : mobile,
        "information": information == null ? null : information,
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "rate": rate == null ? null : rate,
        "media": media == null
            ? null
            : List<dynamic>.from(media.map((x) => x.toJson())),
      };
}
