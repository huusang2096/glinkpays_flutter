import 'package:flutter/material.dart';
import 'package:vipay/src/elements/GridItemWidget.dart';
import 'package:vipay/src/models/restaurant.dart';

class GridWidget extends StatelessWidget {
  List<Restaurant> restaurantsList = [];
  String heroTag;

  GridWidget({Key key, this.restaurantsList, this.heroTag});

  @override
  Widget build(BuildContext context) {
//    return GridView.builder(
//        itemCount: restaurantsList.length,
//        scrollDirection: Axis.vertical,
//        shrinkWrap: true,
//        primary: false,
//        padding: EdgeInsets.symmetric(vertical: 10),
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 4
//        ),
//        itemBuilder: (context, index) {
//          return GridItemWidget(
//              restaurant: restaurantsList.elementAt(index), heroTag: heroTag);
//        });
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.symmetric(vertical: 10),
      crossAxisCount:
          MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 4,
      children: List.generate(restaurantsList.length, (index) {
        return GridItemWidget(
            restaurant: restaurantsList.elementAt(index), heroTag: heroTag);
      }),
    );
  }
}
