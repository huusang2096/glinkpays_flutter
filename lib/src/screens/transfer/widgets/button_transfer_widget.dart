import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class ButtonTransferWidget extends StatelessWidget {
  final Size size;
  final Function onPress;
  final String titleButton;
  const ButtonTransferWidget(
      {Key key, this.size, this.onPress, this.titleButton})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 12,
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        width: size.width,
        child: Container(
          alignment: Alignment.center,
          width: size.width * 0.9,
          height: 45.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              gradient: LinearGradient(
                colors: <Color>[colorGradientStart, colorGradientEnd],
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
                borderRadius: BorderRadius.all(Radius.circular(56.0 / 3)),
                onTap: () {
                  onPress();
                },
                child: Center(child: Text(titleButton, style: button))),
          ),
        ),
      ),
    );
  }
}
