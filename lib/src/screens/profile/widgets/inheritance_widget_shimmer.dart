import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vipay/src/common/config.dart';

class InheritanceWidgetShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 300,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(44.0),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 150,
            width: 300,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(44.0),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
      baseColor: colorGrey300,
      highlightColor: colorGrey100,
    );
  }
}
