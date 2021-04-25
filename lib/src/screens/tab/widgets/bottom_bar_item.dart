import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'package:simplest/simplest.dart';

class BottomBarItem extends StatelessWidget {
  final String title;
  final Function onPress;
  final Color color;
  final icon;
  const BottomBarItem({
    Key key,
    this.title,
    this.onPress,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            onPress();
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: icon,
              ),
              Text(title,
                  overflow: TextOverflow.ellipsis,
                  style: body1.copyWith(fontSize: 12, color: color))
            ],
          ),
        ),
      ),
    );
  }
}
