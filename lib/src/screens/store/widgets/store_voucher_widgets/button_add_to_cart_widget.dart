import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class ButtonAddToCartWidget extends StatelessWidget {
  const ButtonAddToCartWidget(
      {Key key,
      @required this.size,
      this.onPress,
      this.titleButton,
      this.showButton = false})
      : super(key: key);

  final Size size;
  final Function onPress;
  final String titleButton;
  final bool showButton;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 12.0,
      child: Offstage(
        offstage: showButton,
        child: Container(
          width: size.width,
          alignment: Alignment.center,
          child: Container(
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
      ),
    );
  }
}
