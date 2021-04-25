import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/search_user_response.dart';
import 'package:vipay/src/network/network.dart';
import 'package:vipay/src/repository/user_repository.dart';

final network = Network();

_buildHeader() async {
  return {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + await getUserToken()
  };
}

Future<String> getUserToken() {
  return getCurrentUser().then((user) => user.apiToken ??= '');
}

Future<SearchUserResponse> searchUser({searchContent}) async {
  String url = '${apiBaseUrl}search-user?search_content=$searchContent';
  final headers = await _buildHeader();
  return network.get<SearchUserResponse, Null>(url, headers: headers);
}
