import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/style.dart';

class PolicyTermsWidget extends StatelessWidget {
  final Function onTapPolicy, onTapTermsOfUse;

  const PolicyTermsWidget({Key key, this.onTapPolicy, this.onTapTermsOfUse})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Center(
              child: Text('vipay_app'.tr,
                  style: body1.copyWith(color: colorGrey))),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  onTapPolicy();
                },
                child: Text('privacy_policy'.tr,
                    style: body1.copyWith(color: colorGrey)),
              ),
              GestureDetector(
                onTap: () {
                  onTapTermsOfUse();
                },
                child: Text('conditions_of_use'.tr,
                    style: body1.copyWith(color: colorGrey)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
