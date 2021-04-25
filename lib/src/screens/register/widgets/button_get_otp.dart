import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class ButtonGetOTP extends StatelessWidget {
  final Size size;
  final Color gradientStart, gradientEnd;
  final double height;
  final Function onPress;
  final String title;
  ButtonGetOTP(
      {this.size,
      this.gradientStart,
      this.gradientEnd,
      this.height = 50.0,
      this.onPress,
      this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.6,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(height / 2 + 5.0)),
            gradient: LinearGradient(
              colors: <Color>[gradientStart, gradientEnd],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500],
                offset: Offset(0.0, 1.5),
                blurRadius: 1.5,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              onPress();
            },
            child: Center(
              child: Text(title, style: button),
            ),
          ),
        ),
      ),
    );
  }
}
