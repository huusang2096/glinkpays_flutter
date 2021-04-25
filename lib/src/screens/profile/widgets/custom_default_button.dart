import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';

class CustomDefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  final bool isLoading;
  final bool enable;
  final double height;
  const CustomDefaultButton({
    Key key,
    this.text,
    this.press,
    this.isLoading,
    this.enable = true,
    this.height = 44.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = this.isLoading ?? false;
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(44.0),
          gradient: LinearGradient(
              colors: !enable
                  ? [colorGrey, colorGrey]
                  : [beginGradientColor, endGradientColor]),
        ),
        child: isLoading
            ? SpinKitCircle(
                color: Colors.white,
                size: 28.0,
              )
            : FlatButton(
                onPressed: enable ? press : null,
                child: Text(
                  text.tr,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ),
      ),
    );
  }
}
