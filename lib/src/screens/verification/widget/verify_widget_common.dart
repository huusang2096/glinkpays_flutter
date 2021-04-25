import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';

Widget buildRow(
    {String leftText,
    Function onPressVerify,
    bool enable,
    double paddingBottom,
    bool showPrefix}) {
  return Padding(
    padding: EdgeInsets.only(bottom: paddingBottom),
    child: Row(
      children: [
        Icon(
          Icons.verified_user,
          color: !enable ? Colors.green : Colors.black87,
        ),
        SizedBox(width: 4.0),
        Expanded(
            child: Text(leftText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: body1.copyWith(
                    color: !enable ? colorGrey : Colors.black87))),
        SizedBox(width: 10.0),
        if (showPrefix)
          !enable
              ? Text('finish'.tr,
                  style: body2.copyWith(
                      fontStyle: FontStyle.italic, color: colorGrey))
              : InkWell(
                  onTap: () => onPressVerify(),
                  child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[colorGradientStart, colorGradientEnd],
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      child: Text('verify'.tr,
                          style: TextStyle(color: colorWhite))),
                ),
      ],
    ),
  );
}


