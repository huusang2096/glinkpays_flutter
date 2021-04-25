import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/voucher/cubit/search_voucher_cubit.dart';

class BuildRangeDistance extends StatefulWidget {
  final Function(double) onChangeDistance;

  const BuildRangeDistance({Key key, this.onChangeDistance}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _BuildRangeDistance();
}

class _BuildRangeDistance extends State<BuildRangeDistance> {
  double valueDistance = 0;
  double maxValueDistance = 100.0;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
        title: Text('distance'.tr),
      ),
      Slider(
        value: valueDistance,
        min: 0,
        max: maxValueDistance,
        divisions: maxValueDistance.round(),
        label: '${valueDistance.round()}',
        activeColor: titleColor,
        inactiveColor: titleColor.withOpacity(0.5),
        onChanged: (value) {
          setState(() {
            valueDistance = value;
          });
        },
        onChangeEnd: (double value) {
          widget.onChangeDistance(value);
        },
      )
    ]);
  }
}
