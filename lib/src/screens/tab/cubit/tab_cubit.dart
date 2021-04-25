import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/bloc/base_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:get/get.dart';
import 'package:vipay/src/models/home/notification_response.dart';

part 'tab_state.dart';

class TabCubit extends BaseCubit<TabState> {
  TabCubit() : super(TabInitial());

  final _notificationService = locator<NotificationService>();

  void loadData() async {
    await _fetchPolicies();
    await _setupNotification();
  }

  void _fetchPolicies() async {
    try {
      if (appPref.token.isNullOrBlank || Get.currentRoute.contains('policy')) {
        return;
      }

      final response = await dataRepository.getPolicies();
      if (response.data.isNotEmpty) {
        await dialogService.showDialog(
            title: 'policy_update'.tr,
            description: 'policy_and_privacy_update'.tr,
            buttonTitle: 'ok'.tr);
        // ignore: unawaited_futures
        navigator.pushNamed(RouteGenerator.policyScreen);
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void changeTab(int currentTab) async {
    emit(ChangeTabState(currentTab));
  }

  void _setupNotification() {
    // Settings up fcmtoken
    _notificationService.requestPermission();
    final fcmToken = _notificationService.fcmToken;
    _submitFcmToken(fcmToken);
    _notificationService.tokenStream.listen((token) {
      _submitFcmToken(token);
    });
    log('fcmToken $fcmToken');

    // Handle recevied notification data
    _notificationService.isShowLocalNotification = true;
    _notificationService.dataStream.listen((event) async {
      if (event.keys.contains('onSelectLocalNotification')) {
        var notificationData = event.values.first
            .toString()
            .replaceAll('{', '')
            .toString()
            .replaceAll('}', '');
        List<String> splitNotificationData = notificationData.split(',');
        String idNotification = splitNotificationData
            .where((element) => element.contains('notification_id'))
            .toString()
            .split(':')
            .last
            .replaceAll('"', '')
            .replaceAll(')', '');
        if (int.tryParse(idNotification) != null) {
          final response = await dataRepository
              .getNotificationDetail(int.tryParse(idNotification));
          await navigator.pushNamedAndRemoveUntil(
              RouteGenerator.notificationDetail,
              ModalRoute.withName(RouteGenerator.tabScreen),
              arguments: {'notification': response.data});
        }

        logger.d(event);
      }
    });
  }

  void _submitFcmToken(String token) async {
    try {
      if (appPref.token.isNullOrBlank) {
        return;
      }
      await dataRepository.updateFcmToken(
          deviceId: await DeviceHelper.deviceId,
          platform: DeviceHelper.deviceType,
          fcmToken: token);
    } catch (e) {
      handleAppError(e);
    }
  }
}
