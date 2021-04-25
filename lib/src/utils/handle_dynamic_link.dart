import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vipay/route_generator.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';

class DynamicLinkService {
  Future handleDynamicLinks() async {
    final PendingDynamicLinkData data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    _handleDeepLink(data);
    final Uri deepLink = data?.link;
    if (deepLink != null) {
      print('init app');
    }

    FirebaseDynamicLinks.instance.onLink(
        onSuccess: (PendingDynamicLinkData dynamicLink) async {
      print('get link success ${dynamicLink.link}');
      accessDynamicLink(dynamicLink);
    }, onError: (OnLinkErrorException e) async {
      print('Link Failed: ${e.message}');
    });
  }

  void accessDynamicLink(PendingDynamicLinkData dynamicLink) {
    String depositType = dynamicLink?.link?.queryParameters['type'];
    if (depositType != null) {
      navigator.pushNamedAndRemoveUntil(
        RouteGenerator.depositScreen,
        ModalRoute.withName(RouteGenerator.tabScreen),
        arguments: {'depositType': depositType ?? null},
      );
    }
  }

  void _handleDeepLink(PendingDynamicLinkData data) {
    final Uri deepLink = data?.link;
    if (deepLink != null) {
      print('_handleDeepLinks | deeplink: $deepLink');
    }
  }

  DynamicLinkService._privateConstructor();

  static final DynamicLinkService instance =
      DynamicLinkService._privateConstructor();
}
