import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_logger/log_level.dart';
import 'package:http_logger/logging_middleware.dart';
import 'package:http_middleware/http_with_middleware.dart';
import 'package:location/location.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/restaurant.dart';
import 'package:vipay/src/models/review.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/repository/user_repository.dart';

HttpWithMiddleware client = HttpWithMiddleware.build(middlewares: [
  HttpLogger(logLevel: LogLevel.BODY),
]);

Future<Stream<Restaurant>> getTopRestaurants() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}restaurants?$_apiToken';

  final client = new http.Client();

  final _response = await client.get(url);

  print("getTopRestaurants ${_response.body}");

  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Restaurant.fromJson(data);
  });
}

Future<Stream<Restaurant>> getNearRestaurants(
    LocationData myLocation, LocationData areaLocation) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  String _nearParams = '';
  String _orderLimitParam = '';
  if (myLocation != null && areaLocation != null) {
    _orderLimitParam = 'orderBy=area&limit=5';
    _nearParams =
        '&myLon=${myLocation.longitude}&myLat=${myLocation.latitude}&areaLon=${areaLocation.longitude}&areaLat=${areaLocation.latitude}';
  }
  final String url =
      '${apiBaseUrl}restaurants?$_apiToken$_nearParams&$_orderLimitParam';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Restaurant.fromJson(data);
  });
}

Future<Stream<Restaurant>> searchRestaurants(
    String search, LocationData location) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String _searchParam =
      'search=name:$search;description:$search&searchFields=name:like;description:like';
  final String _locationParam =
      'myLon=${location.longitude}&myLat=${location.latitude}&areaLon=${location.longitude}&areaLat=${location.latitude}';
  final String _orderLimitParam = 'orderBy=area&limit=5';
  final String url =
      '${apiBaseUrl}restaurants?$_apiToken&$_searchParam&$_locationParam&$_orderLimitParam';
  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Restaurant.fromJson(data);
  });
}

Future<Stream<Restaurant>> getRestaurant(String id) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}';
  final String url = '${apiBaseUrl}restaurants/$id?$_apiToken';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .map((data) => Restaurant.fromJson(data));
}

Future<Stream<Review>> getRestaurantReviews(String id) async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}restaurant_reviews?${_apiToken}with=user&search=restaurant_id:$id';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Review.fromJSON(data);
  });
}

Future<Stream<Review>> getRecentReviews() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url =
      '${apiBaseUrl}restaurant_reviews?${_apiToken}orderBy=updated_at&sortedBy=desc&limit=3&with=user';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return Review.fromJSON(data);
  });
}
