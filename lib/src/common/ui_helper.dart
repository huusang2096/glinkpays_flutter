import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:vipay/src/widgets/ToastWidget.dart';
import 'package:simplest/simplest.dart';

class UIHelper {
  void showToast(BuildContext context, String message) {
    ToastUtils.showCustomToast(context, message);
  }

  void showPopUp(BuildContext context, String message) {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('GlinkShop'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('ok'.tr),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  ProgressDialog pr;
  Completer<void> refreshCompleter;

  void intUI() {
    refreshCompleter = Completer<void>();
  }

  ProgressDialog createProgressDialog({@required BuildContext context}) {
    ProgressDialog pr = ProgressDialog(context);
    pr.style(
        message: 'loading'.tr,
        progressWidget: Container(
            padding: EdgeInsets.all(10), child: CircularProgressIndicator()));
    return pr;
  }

  void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void showAlertDialog(
      {context, title, content, titleCancel, titleOk, callBack}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              titleCancel != ''
                  ? FlatButton(
                      child: Text(titleCancel),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  : SizedBox.shrink(),
              titleOk != ''
                  ? FlatButton(
                      child: Text(titleOk),
                      onPressed: () {
                        callBack();
                      },
                    )
                  : SizedBox.shrink()
            ],
          );
        });
  }
}
