import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:simplest/simplest.dart';

class BottomDepositButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const BottomDepositButtonWidget({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 40,
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.lightGreen[300], Colors.green])),
        child: Text(
          "deposit".tr.toUpperCase(),
          style: body1.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
