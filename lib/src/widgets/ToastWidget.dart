import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

import 'ToastMessageAnimation.dart';

class ToastUtils {
  static Timer toastTimer;
  static OverlayEntry _overlayEntry;

  static void showCustomToast(BuildContext context, String message) {
    if (toastTimer == null || !toastTimer.isActive) {
      _overlayEntry = createOverlayEntry(context, message);
      Overlay.of(context).insert(_overlayEntry);
      toastTimer = Timer(Duration(seconds: 2), () {
        if (_overlayEntry != null) {
          _overlayEntry.remove();
        }
      });
    }
  }

  static OverlayEntry createOverlayEntry(BuildContext context, String message) {
    return OverlayEntry(
        builder: (context) => Positioned(
              top: MediaQuery.of(context).size.height * 2 / 5,
              left: MediaQuery.of(context).size.width / 5,
              right: MediaQuery.of(context).size.width / 5,
              child: ToastMessageAnimation(Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      color: Color(0xC1000000),
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Image.asset('img/error.png', height: 28),
                          SizedBox(height: 5),
                          Text(
                            message.tr,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      )),
                ),
              )),
            ));
  }
}
