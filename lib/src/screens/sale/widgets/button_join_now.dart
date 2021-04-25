import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class ButtonJoinNow extends StatelessWidget {
  const ButtonJoinNow({
    Key key,
    @required this.size,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.0),
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
              child: Center(child: Text('join_now'.tr, style: button))),
        ),
      ),
    );
  }
}
