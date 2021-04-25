import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class AppBarSaleWidget extends StatelessWidget {
  final Function onPressIcon;
  final String titleText;

  const AppBarSaleWidget({Key key, this.onPressIcon, this.titleText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          onPressIcon();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: colorWhite,
        ),
      ),
      backgroundColor: colorBackgroundAppBar,
      title: Text(
        titleText,
        style: title.copyWith(color: colorWhite),
      ),
      centerTitle: true,
    );
  }
}
