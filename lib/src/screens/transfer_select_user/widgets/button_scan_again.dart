import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class ButtonScanAgain extends StatelessWidget {
  final Size size;
  final Function onPress;
  const ButtonScanAgain({Key key, this.size, this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Text('re_scan_the_qr_code'.tr, style: button),
            )),
      ),
    );
  }
}
