import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class ButtonDeleteBankWidget extends StatelessWidget {
  final Size size;
  final Function onPress;
  final String titleButton;
  final Color buttonColor;
  const ButtonDeleteBankWidget(
      {Key key, this.size, this.onPress, this.titleButton, this.buttonColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8),
        width: size.width * 0.9,
        height: 45.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            gradient: buttonColor == null
                ? LinearGradient(
                    colors: <Color>[colorGradientStart, colorGradientEnd],
                  )
                : null,
            color: buttonColor,
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
              borderRadius: BorderRadius.all(Radius.circular(56.0 / 3)),
              onTap: () {
                onPress();
              },
              child: Center(
                  child: Text(
                titleButton,
                textAlign: TextAlign.center,
                style: button.copyWith(fontSize: 14),
              ))),
        ),
      ),
    );
  }
}
