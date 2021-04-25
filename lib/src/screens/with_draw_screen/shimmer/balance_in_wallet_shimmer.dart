import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class BalanceInWalletShimmer extends StatelessWidget {
  final Size size;

  BalanceInWalletShimmer({this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'balance_in_wallet'.tr,
            style: body1.copyWith(color: activeGreen),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.grey,
                          blurRadius: 1.5,
                          spreadRadius: 1.5)
                    ]),
                child: Shimmer.fromColors(
                  baseColor: colorGrey300,
                  highlightColor: colorGrey100,
                  child: Container(color: colorWhite),
                ),
              ),
            ),
            SizedBox(width: 4.0),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.grey,
                              blurRadius: 1.5,
                              spreadRadius: 1.5)
                        ]),
                    alignment: Alignment.center,
                    child: Shimmer.fromColors(
                      baseColor: colorGrey300,
                      highlightColor: colorGrey100,
                      child: Container(color: colorWhite),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'this_feature_not_availabe_yet'.tr,
                    style: body1.copyWith(
                        color: Colors.grey,
                        fontSize: 11,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
