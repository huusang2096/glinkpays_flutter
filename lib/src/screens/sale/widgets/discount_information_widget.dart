import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';

class DiscountInformationWidget extends StatelessWidget {
  final int discount;
  final int maxDiscount;
  final double paddingHorizontal;
  final TextStyle textStyle;
  const DiscountInformationWidget(
      {Key key,
      this.discount,
      this.maxDiscount,
      this.paddingHorizontal,
      this.textStyle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(text: 'discount'.tr, style: textStyle),
            TextSpan(
                text: '${discount ?? ''}%',
                style: textStyle.copyWith(fontWeight: FontWeight.bold))
          ])),
          SizedBox(height: 5),
          Text.rich(TextSpan(children: [
            TextSpan(
                text:
                    'the_maximum_amount_of_gas_is_reduced_when_using_the_voucher'
                        .tr,
                style: textStyle),
            TextSpan(
                text: '${maxDiscount ?? ''}',
                style: textStyle.copyWith(fontWeight: FontWeight.bold))
          ])),
        ],
      ),
    );
  }
}
