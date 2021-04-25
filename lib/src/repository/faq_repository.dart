import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/faq_category.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/repository/user_repository.dart';

Future<Stream<FaqCategory>> getFaqCategories() async {
  User _user = await getCurrentUser();
  final String _apiToken = 'api_token=${_user.apiToken}&';
  final String url = '${apiBaseUrl}faq_categories?${_apiToken}with=faqs';

  final client = new http.Client();
  final streamedRest = await client.send(http.Request('get', Uri.parse(url)));

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .map((data) => Helper.getData(data))
      .expand((data) => (data as List))
      .map((data) {
    return FaqCategory.fromJSON(data);
  });
}
