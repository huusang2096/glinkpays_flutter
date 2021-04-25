import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class USDTWidget extends StatelessWidget {
  final TextEditingController controller;

  const USDTWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 40, right: 35, top: 10.0, bottom: 10.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5, color: colorGrey),
            top: BorderSide(width: 0.5, color: colorGrey),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'USDT',
              style: body1.copyWith(color: colorGrey),
            ),
            Icon(Icons.arrow_right, color: colorGrey)
          ],
        ),
      ),
    );
  }
}
