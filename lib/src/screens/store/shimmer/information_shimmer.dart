import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:shimmer/shimmer.dart';

class InformationShimmer extends StatelessWidget {
  final Size size;

  InformationShimmer({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.only(left: 12.0, top: 8.0, bottom: 10.0),
      width: size.width,
      color: colorWhite,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info,
                color: colorTitle,
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'information'.tr,
                  style: title.copyWith(color: colorTitle),
                ),
              )
            ],
          ),
          Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Container(
              color: colorWhite,
              child: Text(
                'Monday - Thursday 10:00 AM - 11:00 PM',
                style: body2.copyWith(color: Colors.transparent),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Container(
                color: colorWhite,
                child: Text('Friday - Sunday 12:00 PM - 5:00 AM',
                    style: body2.copyWith(color: Colors.transparent))),
          ),
        ],
      ),
    );
  }
}
