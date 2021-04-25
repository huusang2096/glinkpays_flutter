import 'package:vipay/src/models/user.dart';

class Review {
  String id;
  String review;
  String rate;
  User user;

  Review();

  Review.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'].toString();
    review = jsonMap['review'];
    rate = jsonMap['rate'].toString() ?? '0';
    user = jsonMap['user'] != null ? User.fromJson(jsonMap['user']) : null;
  }
}
