import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/sale/widgets/discount_information_widget.dart';

class VoucherDiscountInformationWidget extends StatelessWidget {
  final int discount;
  final int maxDiscount;

  const VoucherDiscountInformationWidget(
      {Key key, this.discount, this.maxDiscount})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
      color: colorWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_downward,
                  color: colorTitle,
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'discount_information'.tr,
                    style: title.copyWith(color: colorTitle),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.0),
          DiscountInformationWidget(
            discount: discount,
            maxDiscount: maxDiscount,
            paddingHorizontal: 12.0,
            textStyle: body2,
          ),
        ],
      ),
    );
  }
}
