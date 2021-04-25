import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';

class BoxDicountWidget extends StatelessWidget {
  final int discount;
  final double horizontalPadding, verticalPadding;
  final IconData iconDiscount;
  final double sizeIcon;
  final double positionedTop, positionedRight, positionedLeft, positionedBottom;
  final double fontSize;
  const BoxDicountWidget(
      {Key key,
      this.discount,
      this.horizontalPadding,
      this.verticalPadding,
      this.iconDiscount,
      this.sizeIcon,
      this.positionedTop,
      this.positionedRight,
      this.positionedLeft,
      this.positionedBottom,
      this.fontSize = 17.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: positionedRight,
      top: positionedTop,
      bottom: positionedBottom,
      left: positionedLeft,
      child: Container(
        margin: EdgeInsets.all(5),
        // width: 60.0,
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        decoration: BoxDecoration(
            color: redColor2,
            border: Border.all(color: colorWhite, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Icon(
              iconDiscount,
              color: colorWhite,
              size: sizeIcon,
            ),
            Text(
              ' ${discount ?? ''}%',
              style: TextStyle(color: colorWhite, fontSize: fontSize),
            ),
          ],
        ),
      ),
    );
  }
}
