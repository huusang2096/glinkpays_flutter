import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class PayPalWidget extends StatelessWidget {
  final Size size;
  final Function onPress;

  const PayPalWidget({Key key, this.size, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(width: 0.5, color: colorGrey),
            top: BorderSide(width: 0.5, color: colorGrey),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              height: 25.0,
              child: Image.asset('assets/img/paypal.png'),
            ),
            SizedBox(width: 5.0),
          ],
        ),
      ),
    );
  }
}
