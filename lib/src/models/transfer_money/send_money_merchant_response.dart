// To parse this JSON data, do
//
//     final sendMoneyMerchantResponse = sendMoneyMerchantResponseFromJson(jsonString);

import 'dart:convert';

class SendMoneyMerchantResponse {
    SendMoneyMerchantResponse({
        this.success,
        this.data,
        this.message,
    });

    bool success;
    Data data;
    String message;

    factory SendMoneyMerchantResponse.fromRawJson(String str) => SendMoneyMerchantResponse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SendMoneyMerchantResponse.fromJson(Map<String, dynamic> json) => SendMoneyMerchantResponse(
        success: json["success"] == null ? null : json["success"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        message: json["message"] == null ? null : json["message"],
    );

    Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "data": data == null ? null : data.toJson(),
        "message": message == null ? null : message,
    };
}

class Data {
    Data({
        this.voucherOrder,
        this.paymentAmount,
        this.currentBalance,
    });

    VoucherOrder voucherOrder;
    int paymentAmount;
    CurrentBalance currentBalance;

    factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        voucherOrder: json["voucher_order"] == null ? null : VoucherOrder.fromJson(json["voucher_order"]),
        paymentAmount: json["payment_amount"] == null ? null : json["payment_amount"],
        currentBalance: json["current_balance"] == null ? null : CurrentBalance.fromJson(json["current_balance"]),
    );

    Map<String, dynamic> toJson() => {
        "voucher_order": voucherOrder == null ? null : voucherOrder.toJson(),
        "payment_amount": paymentAmount == null ? null : paymentAmount,
        "current_balance": currentBalance == null ? null : currentBalance.toJson(),
    };
}

class CurrentBalance {
    CurrentBalance({
        this.currId,
        this.balance,
        this.balanceVailable,
        this.balancePending,
        this.isDefault,
        this.currName,
        this.currCode,
    });

    int currId;
    String balance;
    String balanceVailable;
    String balancePending;
    String isDefault;
    String currName;
    String currCode;

    factory CurrentBalance.fromRawJson(String str) => CurrentBalance.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CurrentBalance.fromJson(Map<String, dynamic> json) => CurrentBalance(
        currId: json["curr_id"] == null ? null : json["curr_id"],
        balance: json["balance"] == null ? null : json["balance"],
        balanceVailable: json["balance_vailable"] == null ? null : json["balance_vailable"],
        balancePending: json["balance_pending"] == null ? null : json["balance_pending"],
        isDefault: json["is_default"] == null ? null : json["is_default"],
        currName: json["curr_name"] == null ? null : json["curr_name"],
        currCode: json["curr_code"] == null ? null : json["curr_code"],
    );

    Map<String, dynamic> toJson() => {
        "curr_id": currId == null ? null : currId,
        "balance": balance == null ? null : balance,
        "balance_vailable": balanceVailable == null ? null : balanceVailable,
        "balance_pending": balancePending == null ? null : balancePending,
        "is_default": isDefault == null ? null : isDefault,
        "curr_name": currName == null ? null : currName,
        "curr_code": currCode == null ? null : currCode,
    };
}

class VoucherOrder {
    VoucherOrder({
        this.id,
        this.price,
        this.quantity,
        this.foodId,
        this.orderId,
        this.createdAt,
        this.updatedAt,
        this.couponCode,
        this.expiryDate,
        this.usedAt,
        this.discountPercent,
        this.maxApply,
        this.customFields,
        this.extras,
        this.food,
    });

    int id;
    int price;
    int quantity;
    int foodId;
    int orderId;
    String createdAt;
    String updatedAt;
    String couponCode;
    String expiryDate;
    dynamic usedAt;
    int discountPercent;
    int maxApply;
    List<dynamic> customFields;
    List<dynamic> extras;
    Food food;

    factory VoucherOrder.fromRawJson(String str) => VoucherOrder.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory VoucherOrder.fromJson(Map<String, dynamic> json) => VoucherOrder(
        id: json["id"] == null ? null : json["id"],
        price: json["price"] == null ? null : json["price"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        foodId: json["food_id"] == null ? null : json["food_id"],
        orderId: json["order_id"] == null ? null : json["order_id"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        couponCode: json["coupon_code"] == null ? null : json["coupon_code"],
        expiryDate: json["expiry_date"] == null ? null : json["expiry_date"],
        usedAt: json["used_at"],
        discountPercent: json["discount_percent"] == null ? null : json["discount_percent"],
        maxApply: json["max_apply"] == null ? null : json["max_apply"],
        customFields: json["custom_fields"] == null ? null : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        extras: json["extras"] == null ? null : List<dynamic>.from(json["extras"].map((x) => x)),
        food: json["food"] == null ? null : Food.fromJson(json["food"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "price": price == null ? null : price,
        "quantity": quantity == null ? null : quantity,
        "food_id": foodId == null ? null : foodId,
        "order_id": orderId == null ? null : orderId,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
        "coupon_code": couponCode == null ? null : couponCode,
        "expiry_date": expiryDate == null ? null : expiryDate,
        "used_at": usedAt,
        "discount_percent": discountPercent == null ? null : discountPercent,
        "max_apply": maxApply == null ? null : maxApply,
        "custom_fields": customFields == null ? null : List<dynamic>.from(customFields.map((x) => x)),
        "extras": extras == null ? null : List<dynamic>.from(extras.map((x) => x)),
        "food": food == null ? null : food.toJson(),
    };
}

class Food {
    Food({
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
    int maxApply;
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
    String createdAt;
    String updatedAt;
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
        discountPrice: json["discount_price"] == null ? null : json["discount_price"],
        maxApply: json["max_apply"] == null ? null : json["max_apply"],
        description: json["description"] == null ? null : json["description"],
        ingredients: json["ingredients"] == null ? null : json["ingredients"],
        quantity: json["quantity"] == null ? null : json["quantity"],
        featured: json["featured"] == null ? null : json["featured"],
        restaurantId: json["restaurant_id"] == null ? null : json["restaurant_id"],
        categoryId: json["category_id"] == null ? null : json["category_id"],
        saleStartTime: json["sale_start_time"],
        saleEndTime: json["sale_end_time"],
        isCoupon: json["is_coupon"] == null ? null : json["is_coupon"],
        couponDuration: json["coupon_duration"] == null ? null : json["coupon_duration"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        customFields: json["custom_fields"] == null ? null : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        restaurant: json["restaurant"] == null ? null : Restaurant.fromJson(json["restaurant"]),
        foodType: json["food_type"] == null ? null : FoodType.fromJson(json["food_type"]),
        media: json["media"] == null ? null : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
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
        "sale_start_time": saleStartTime,
        "sale_end_time": saleEndTime,
        "is_coupon": isCoupon == null ? null : isCoupon,
        "coupon_duration": couponDuration == null ? null : couponDuration,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
        "custom_fields": customFields == null ? null : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "restaurant": restaurant == null ? null : restaurant.toJson(),
        "food_type": foodType == null ? null : foodType.toJson(),
        "media": media == null ? null : List<dynamic>.from(media.map((x) => x.toJson())),
    };
}

class FoodType {
    FoodType({
        this.id,
        this.name,
    });

    int id;
    String name;

    factory FoodType.fromRawJson(String str) => FoodType.fromJson(json.decode(str));

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
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
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

    factory Restaurant.fromRawJson(String str) => Restaurant.fromJson(json.decode(str));

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
        customFields: json["custom_fields"] == null ? null : List<dynamic>.from(json["custom_fields"].map((x) => x)),
        hasMedia: json["has_media"] == null ? null : json["has_media"],
        rate: json["rate"] == null ? null : json["rate"],
        media: json["media"] == null ? null : List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
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
        "custom_fields": customFields == null ? null : List<dynamic>.from(customFields.map((x) => x)),
        "has_media": hasMedia == null ? null : hasMedia,
        "rate": rate == null ? null : rate,
        "media": media == null ? null : List<dynamic>.from(media.map((x) => x.toJson())),
    };
}
