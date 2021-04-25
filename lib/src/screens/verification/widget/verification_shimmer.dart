import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';

class VerificationShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildItemShimmer(),
        buildItemShimmer(),
        buildItemShimmer(),
      ],
    );
  }

  Container buildItemShimmer() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Container(
          color: colorWhite,
          height: 30.0,
        ),
      ),
    );
  }
}
