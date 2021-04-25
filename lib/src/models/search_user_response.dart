import 'package:vipay/src/models/base_model.dart';
import 'package:vipay/src/models/user.dart';

class SearchUserResponse extends BaseResponse {
  bool success;
  String message;
  List<User> data;

  SearchUserResponse({
    this.success,
    this.message,
    this.data,
  });

  @override
  bool hasData() {
    return data != null;
  }

  factory SearchUserResponse.fromJson(Map<String, dynamic> json) =>
      SearchUserResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<User>.from(json["data"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
