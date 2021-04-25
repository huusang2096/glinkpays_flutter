import 'package:flutter/material.dart';
import 'package:vipay/src/screens/with_draw_screen/shimmer/item_bank_shimmer.dart';

class ShowBankAccountShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 80.0),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.0);
        },
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        //  itemCount: 10,
        itemCount: 1,
        itemBuilder: (context, index) {
          return ItemBankShimmer();
        },
      ),
    );
  }
}
