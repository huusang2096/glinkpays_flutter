import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

class EmptyNotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Text(
      'you_dont_have_notifications'.tr,
      style: context.textTheme.headline6,
    )));
  }
}
