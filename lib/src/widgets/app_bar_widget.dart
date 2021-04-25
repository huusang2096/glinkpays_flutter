import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';

class AppbarWidget extends StatelessWidget {
  final String title;

  const AppbarWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: body1.copyWith(color: Colors.white),
      ),
      backgroundColor: Color(0XFF239EA1),
      leading: IconButton(
        color: Colors.white,
        icon: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {
          navigator.pop();
        },
      ),
    );
  }
}
