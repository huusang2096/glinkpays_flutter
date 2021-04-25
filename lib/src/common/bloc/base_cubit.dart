import 'package:flutter/cupertino.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/models/base_response.dart';
import 'package:vipay/src/repository/data_repository.dart';
import 'package:simplest/simplest.dart';

class BaseCubit<State> extends GenericBaseCubit<State> {
  BaseCubit(State state) : super(state);
  DataRepository get dataRepository => locator<DataRepository>();
  AppPref get appPref => locator<AppPref>();

  @override
  IAppConfig get appConfig => locator<IAppConfig>();

  @override
  handleAppError(error) async {
    logger.e(error);
    await hideLoading();

    if (error is String) {
      return showErrorMessage(error);
    }

    if (error is DioError) {
      return parseDioError(error);
    }

    return showErrorMessage('unknow_error'.tr);
  }

  void parseDioError(DioError error) async {
    logger.e(error);
    final _hasNetwork = await networkActivity.hasNetwork;
    if (!_hasNetwork) {
      return networkActivity.showRequireNetwork();
    }

    // Check status code
    final token = appPref.token;
    if (error.response?.statusCode == 401) {
      final _currentRoute = Get.currentRoute;
      if (token.isNotEmpty &&
          !_currentRoute.contains('login') &&
          !_currentRoute.contains('Tab')) {
        await navigator.pushNamedAndRemoveUntil(RouteGenerator.loginScreen,
            ModalRoute.withName(RouteGenerator.tabScreen));
        return;
      }

      if (!_currentRoute.contains('register')) {
        return;
      }
    }

    var errorMessage = 'server_error';
    final response = error.response?.data ?? {'message': 'server_error'};
    try {
      if (response is Map) {
        final errResponse = BaseResponse.fromJson(response);
        errorMessage = errResponse.message;
      } else if (response is String) {
        final errResponse = BaseResponse.fromRawJson(response);
        errorMessage = errResponse.message;
      } else if (error.error is TypeError) {
        final err = error.error as TypeError;
        errorMessage = err.toString();
      }
    } catch (e) {
      print(e);
    }
    return showErrorMessage(errorMessage.tr);
  }
}
