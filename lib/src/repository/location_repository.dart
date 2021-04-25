import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/user.dart';
import 'package:vipay/src/network/network.dart';
import 'package:vipay/src/repository/user_repository.dart';

final network = Network();

User currentUser = new User();

_buildHeader() async {
  return {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ' + await getUserToken()
  };
}

Future<BaseModel> updateLocation({String lat, String lng}) async {
  final String url = '${apiBaseUrl}update-current-location';
  final params = {'latitude': lat, 'longitude': lng};
  final headers = await _buildHeader();
  return network.post<BaseModel, Null>(url, params, headers: headers);
}
