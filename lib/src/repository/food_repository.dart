import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http_logger/http_logger.dart';
import 'package:http_middleware/http_middleware.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/SettingResponse.dart';
import 'package:vipay/src/models/favorite.dart';
import 'package:vipay/src/models/food.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/repository/user_repository.dart';

HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

Future<Stream<Food>> getTrendingFoods() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}api/coupon/foods?${_apiToken}with=restaurant&limit=10&is_trending=1';

  final client = new http.Client();

  // LOG
//  final response = await client.get(url);

  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> getFood(String foodId) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}api/coupon/foods/$foodId?${_apiToken}with=nutrition;restaurant;category;extras;foodReviews;foodReviews.user';
  log(url);
  final client = new http.Client();

  // LOG
  final response = await client.get(url);
  log(response.body);

  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .map((data) => Food.fromJson(data));
}

Future<Stream<Food>> getFoodsByCategory(categoryId) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}api/coupon/foods?${_apiToken}with=restaurant&search=category_id:$categoryId&searchFields=category_id:=';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Favorite>> isFavoriteFood(String foodId) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}favorites/exist?${_apiToken}food_id=$foodId&user_id=${_user.id}';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getObjectData(data))
      .map((data) => Favorite.fromJSON(data));
}

Future<Stream<Favorite>> getFavorites() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}favorites?${_apiToken}with=food;user;extras&search=user_id:${_user.id}&searchFields=user_id:=';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) => Favorite.fromJSON(data));
}

Future<Favorite> addFavorite(Favorite favorite) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
//  favorite.userId = _user.userId;
  final String url = '${apiBaseUrl}favorites?$_apiToken';
  final client = new http.Client();
  final response = await client.post(
    url,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    body: json.encode(favorite.toMap()),
  );
  return Favorite.fromJSON(json.decode(response.body)['data']);
}

Future<Favorite> removeFavorite(Favorite favorite) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}favorites/${favorite.id}?$_apiToken';
  final client = new http.Client();
  final response = await client.delete(
    url,
    headers: {HttpHeaders.contentTypeHeader: 'application/json'},
  );
  return Favorite.fromJSON(json.decode(response.body)['data']);
}

Future<Stream<Food>> getFoodsOfRestaurant(String restaurantId) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}api/coupon/foods?${_apiToken}with=restaurant&search=restaurant.id:$restaurantId&searchFields=restaurant.id:=';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> getTrendingFoodsOfRestaurant(String restaurantId) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  // TODO Trending foods only
  final String url =
      '${apiBaseUrl}api/coupon/foods?${_apiToken}with=restaurant&search=restaurant.id:$restaurantId&searchFields=restaurant.id:=';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> getFeaturedFoodsOfRestaurant(String restaurantId) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  // TODO Featured foods only
  final String url =
      '${apiBaseUrl}api/coupon/foods?${_apiToken}with=restaurant&search=restaurant_id:$restaurantId&searchFields=restaurant_id:=';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> getVouchers() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url = '${apiBaseUrl}api/coupon/foods?$_apiToken';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> getVouchersByRestaurant({String idRestaurant}) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}api/coupon/foods?$_apiToken&restaurant_ids[]=$idRestaurant';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> getVouchersTrendingByRestaurant(
    {String idRestaurant}) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}api/coupon/foods?$_apiToken&restaurant_ids[]=$idRestaurant&is_trending=1';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<Food>> searchVouchers(
    {String keyword,
    bool isTrending,
    List<String> categories,
    List<String> vouchersType,
    double distance}) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  String url = '${apiBaseUrl}api/coupon/foods?$_apiToken';
  categories.forEach((category) {
    url += '&category_ids[]=$category';
  });
  url += '&is_trending=${isTrending ? 1 : 0}';
  if (keyword.isNotEmpty) {
    url += '&keyword=$keyword';
  }
  vouchersType.forEach((voucherType) {
    url += '&food_type_ids[]=$voucherType';
  });
  if (distance != 0) {
    url += '&distance=$distance';
  }
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Food.fromJson(data);
  });
}

Future<Stream<SettingFood>> getSetting() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url = '${apiBaseUrl}api/coupon/settings?$_apiToken';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .map((data) {
    return SettingFood.fromJson(data);
  });
}
