import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class TitleWidget extends StatelessWidget {
  final String titleKey;

  const TitleWidget({Key key, this.titleKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        titleKey.tr,
        style: title.copyWith(color: colorTitle),
      ),
    );
  }
}
