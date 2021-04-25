// To parse this JSON data, do
//
//     final foodsResponse = foodsResponseFromJson(jsonString);

import 'dart:convert';

import 'package:vipay/src/models/home/category_response.dart';

import '../restaurant.dart';

class FoodDatasResponse {
  FoodDatasResponse({
    this.success,
    this.data,
    this.message,
  });

  bool success;
  List<FoodData> data;
  String message;

  factory FoodDatasResponse.fromRawJson(String str) =>
      FoodDatasResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FoodDatasResponse.fromJson(Map<String, dynamic> json) =>
      FoodDatasResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null
            ? null
            : List<FoodData>.from(
                json["data"].map((x) => FoodData.fromJson(x))),
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

class FoodData {
  FoodData({
    this.id,
    this.name,
    this.foodTypeId,
    this.price,
    this.discountPrice,
    this.maxApply,
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
    this.distance,
    this.customFields,
    this.hasMedia,
    this.restaurant,
    this.foodType,
    this.nutrition,
    this.category,
    this.extras,
    this.foodReviews,
    this.media,
  });

  int id;
  String name;
  int foodTypeId;
  double price;
  int discountPrice;
  int maxApply;
  String description;
  String ingredients;
  int quantity;
  bool featured;
  int restaurantId;
  int categoryId;
  String saleStartTime;
  String saleEndTime;
  bool isCoupon;
  int couponDuration;
  String createdAt;
  String updatedAt;
  double distance;
  List<dynamic> customFields;
  bool hasMedia;
  Restaurant restaurant;
  FoodType foodType;
  List<dynamic> nutrition;
  Category category;
  List<dynamic> extras;
  List<FoodReview> foodReviews;
  List<Media> media;

  factory FoodData.fromRawJson(String str) =>
      FoodData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FoodData.fromJson(Map<String, dynamic> json) => FoodData(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        foodTypeId: json["food_type_id"] == null ? null : json["food_type_id"],
        price: json["price"] == null ? null : json["price"].toDouble(),
        discountPrice:
            json["discount_price"] == null ? null : json["discount_price"],
        maxApply: json["max_apply"] == null ? null : json["max_apply"],
        description: json["description"] == null ? null : json["description"],
        ingredients: json["ingredients"] == null ? null : json["ingredients"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        featured: json["featured"] == null ? null : json["featured"],
        restaurantId:
            json["restaurant_id"] == null ? null : json["restaurant_id"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        saleStartTime:
            json["sale_start_time"] == null ? null : json["sale_start_time"],
        saleEndTime:
            json["sale_end_time"] == null ? null : json["sale_end_time"],
        isCoupon: json["is_coupon"] == null ? null : json["is_coupon"],
        couponDuration:
            json["coupon_duration"] == null ? null : json["coupon_duration"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        distance: json["distance"] == null ? null : json["distance"].toDouble(),
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
        nutrition: json["nutrition"] == null
            ? null
            : List<dynamic>.from(json["nutrition"].map((x) => x)),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        extras: json["extras"] == null
            ? null
            : List<dynamic>.from(json["extras"].map((x) => x)),
        foodReviews: json["food_reviews"] == null
            ? null
            : List<FoodReview>.from(
                json["food_reviews"].map((x) => FoodReview.fromJson(x))),
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
        "max_apply": maxApply == null ? null : maxApply,
        "description": description == null ? null : description,
        "ingredients": ingredients == null ? null : ingredients,
        "quantity": quantity == null ? null : quantity,
        "featured": featured == null ? null : featured,
        "restaurant_id": restaurantId == null ? null : restaurantId,
        "category_id": categoryId == null ? null : categoryId,
        "sale_start_time": saleStartTime == null ? null : saleStartTime,
        "sale_end_time": saleEndTime == null ? null : saleEndTime,
        "is_coupon": isCoupon == null ? null : isCoupon,
        "coupon_duration": couponDuration == null ? null : couponDuration,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
        "distance": distance == null ? null : distance,
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "restaurant": restaurant == null ? null : restaurant.toJson(),
        "food_type": foodType == null ? null : foodType.toJson(),
        "nutrition": nutrition == null
            ? null
            : List<dynamic>.from(nutrition.map((x) => x)),
        "category": category == null ? null : category.toJson(),
        "extras":
            extras == null ? null : List<dynamic>.from(extras.map((x) => x)),
        "food_reviews": foodReviews == null
            ? null
            : List<dynamic>.from(foodReviews.map((x) => x.toJson())),
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
  String createdAt;
  String updatedAt;
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
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
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
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
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

class FoodReview {
  FoodReview({
    this.id,
    this.review,
    this.rate,
    this.userId,
    this.foodId,
    this.createdAt,
    this.updatedAt,
    this.customFields,
    this.user,
  });

  int id;
  String review;
  int rate;
  int userId;
  int foodId;
  String createdAt;
  String updatedAt;
  List<dynamic> customFields;
  User user;

  factory FoodReview.fromRawJson(String str) =>
      FoodReview.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FoodReview.fromJson(Map<String, dynamic> json) => FoodReview(
        id: json["id"] == null ? null : json["id"],
        review: json["review"] == null ? null : json["review"],
        rate: json["rate"] == null ? null : json["rate"],
        userId: json["user_id"] == null ? null : json["user_id"],
        foodId: json["food_id"] == null ? null : json["food_id"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        customFields: json["custom_fields"] == null
            ? null
            : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "review": review == null ? null : review,
        "rate": rate == null ? null : rate,
        "user_id": userId == null ? null : userId,
        "food_id": foodId == null ? null : foodId,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
        "custom_fields": customFields == null
            ? null
            : List<dynamic>.from(customFields.map((x) => x)),
        "user": user == null ? null : user.toJson(),
      };
}

class User {
  User({
    this.id,
    this.roleId,
    this.type,
    this.firstName,
    this.lastName,
    this.formattedPhone,
    this.phone,
    this.google2FaSecret,
    this.defaultCountry,
    this.carrierCode,
    this.email,
    this.phrase,
    this.addressVerified,
    this.identityVerified,
    this.status,
    this.latitude,
    this.longitude,
    this.blocked,
    this.expiredDateBlocked,
    this.createdAt,
    this.updatedAt,
    this.companyId,
    this.firstNameInheritedUser,
    this.lastNameInheritedUser,
    this.phoneInheritedUser,
    this.addressInheritedUser,
    this.identityInheritedUser,
    this.electronicSignature,
    this.customFields,
    this.hasMedia,
    this.media,
  });

  int id;
  int roleId;
  String type;
  String firstName;
  String lastName;
  String formattedPhone;
  String phone;
  dynamic google2FaSecret;
  dynamic defaultCountry;
  String carrierCode;
  String email;
  dynamic phrase;
  int addressVerified;
  int identityVerified;
  String status;
  String latitude;
  String longitude;
  int blocked;
  dynamic expiredDateBlocked;
  String createdAt;
  String updatedAt;
  dynamic companyId;
  dynamic firstNameInheritedUser;
  dynamic lastNameInheritedUser;
  dynamic phoneInheritedUser;
  dynamic addressInheritedUser;
  dynamic identityInheritedUser;
  dynamic electronicSignature;
  CustomFields customFields;
  bool hasMedia;
  List<dynamic> media;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        roleId: json["role_id"] == null ? null : json["role_id"],
        type: json["type"] == null ? null : json["type"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        formattedPhone:
            json["formattedPhone"] == null ? null : json["formattedPhone"],
        phone: json["phone"] == null ? null : json["phone"],
        google2FaSecret: json["google2fa_secret"],
        defaultCountry: json["defaultCountry"],
        carrierCode: json["carrierCode"] == null ? null : json["carrierCode"],
        email: json["email"] == null ? null : json["email"],
        phrase: json["phrase"],
        addressVerified:
            json["address_verified"] == null ? null : json["address_verified"],
        identityVerified: json["identity_verified"] == null
            ? null
            : json["identity_verified"],
        status: json["status"] == null ? null : json["status"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        blocked: json["blocked"] == null ? null : json["blocked"],
        expiredDateBlocked: json["expired_date_blocked"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        companyId: json["company_id"],
        firstNameInheritedUser: json["first_name_inherited_user"],
        lastNameInheritedUser: json["last_name_inherited_user"],
        phoneInheritedUser: json["phone_inherited_user"],
        addressInheritedUser: json["address_inherited_user"],
        identityInheritedUser: json["identity_inherited_user"],
        electronicSignature: json["electronic_signature"],
        customFields: json["custom_fields"] == null
            ? null
            : CustomFields.fromJson(json["custom_fields"]),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        media: json["media"] == null
            ? null
            : List<dynamic>.from(json["media"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "role_id": roleId == null ? null : roleId,
        "type": type == null ? null : type,
        "first_name": firstName == null ? null : firstName,
        "last_name": lastName == null ? null : lastName,
        "formattedPhone": formattedPhone == null ? null : formattedPhone,
        "phone": phone == null ? null : phone,
        "google2fa_secret": google2FaSecret,
        "defaultCountry": defaultCountry,
        "carrierCode": carrierCode == null ? null : carrierCode,
        "email": email == null ? null : email,
        "phrase": phrase,
        "address_verified": addressVerified == null ? null : addressVerified,
        "identity_verified": identityVerified == null ? null : identityVerified,
        "status": status == null ? null : status,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "blocked": blocked == null ? null : blocked,
        "expired_date_blocked": expiredDateBlocked,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
        "company_id": companyId,
        "first_name_inherited_user": firstNameInheritedUser,
        "last_name_inherited_user": lastNameInheritedUser,
        "phone_inherited_user": phoneInheritedUser,
        "address_inherited_user": addressInheritedUser,
        "identity_inherited_user": identityInheritedUser,
        "electronic_signature": electronicSignature,
        "custom_fields": customFields == null ? null : customFields.toJson(),
        "has_media": hasMedia == null ? null : hasMedia,
        "media": media == null ? null : List<dynamic>.from(media.map((x) => x)),
      };
}

class CustomFields {
  CustomFields({
    this.phone,
    this.bio,
    this.address,
  });

  Address phone;
  Address bio;
  Address address;

  factory CustomFields.fromRawJson(String str) =>
      CustomFields.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomFields.fromJson(Map<String, dynamic> json) => CustomFields(
        phone: json["phone"] == null ? null : Address.fromJson(json["phone"]),
        bio: json["bio"] == null ? null : Address.fromJson(json["bio"]),
        address:
            json["address"] == null ? null : Address.fromJson(json["address"]),
      );

  Map<String, dynamic> toJson() => {
        "phone": phone == null ? null : phone.toJson(),
        "bio": bio == null ? null : bio.toJson(),
        "address": address == null ? null : address.toJson(),
      };
}

class Address {
  Address({
    this.value,
    this.view,
    this.name,
  });

  String value;
  String view;
  String name;

  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        value: json["value"] == null ? null : json["value"],
        view: json["view"] == null ? null : json["view"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "value": value == null ? null : value,
        "view": view == null ? null : view,
        "name": name == null ? null : name,
      };
}
