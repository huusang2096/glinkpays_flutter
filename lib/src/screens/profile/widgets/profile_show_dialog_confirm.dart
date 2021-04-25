import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/config.dart';

class ShowDialogConfirm extends StatelessWidget {
  final String text;
  final Function pressCancel;
  final Function pressOK;

  const ShowDialogConfirm({Key key, this.text, this.pressCancel, this.pressOK})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(kAppName),
      content: Text(text.tr),
      actions: [
        FlatButton(
          onPressed: pressCancel,
          child: Text(
            'cancel'.tr,
            style: TextStyle(
              color: activeGreen,
            ),
          ),
        ),
        FlatButton(
          onPressed: pressOK,
          child: Text(
            'ok'.tr,
            style: TextStyle(
              color: activeGreen,
            ),
          ),
        ),
      ],
    );
  }
}
