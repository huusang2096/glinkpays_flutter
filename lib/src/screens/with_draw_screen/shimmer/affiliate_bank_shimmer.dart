import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/with_draw_screen/shimmer/item_bank_shimmer.dart';

class AffiliateBankShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
    );
  }
}
