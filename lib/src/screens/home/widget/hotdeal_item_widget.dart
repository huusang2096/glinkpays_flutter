import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/models/restaurant.dart' as RestaurantModel;

// ignore: must_be_immutable
class HotDealItemWidget extends StatelessWidget {
  double marginLeft;
  FoodData food;
  final String heroTag;
  HotDealItemWidget({Key key, this.marginLeft, this.food, this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Theme.of(context).accentColor.withOpacity(0.08),
        highlightColor: Colors.transparent,
        onTap: () {
          navigator.pushNamed(RouteGenerator.storeScreen,
              arguments: {'restaurant': food.restaurant, 'heroTag': heroTag});
        },
        child: Card(
            margin: EdgeInsets.only(left: marginLeft, bottom: 2),
            child: Container(
              height: 165,
              width: 140,
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: <Widget>[
                      Hero(
                        tag: heroTag,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              ),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                      (food?.media?.isEmpty ?? true)
                                          ? ''
                                          : food.media.first.thumb))),
                        ),
                      ),
                      Positioned.fill(
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF29B0B4),
                                      border: Border.all(
                                          color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(
                                    child: Helper.getPrice(
                                        food?.price?.toDouble() ?? 0,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xFFFFFFFF),
                                            fontWeight: FontWeight.w400)),
                                  )))),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(4),
                        bottomRight: const Radius.circular(4),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(food?.restaurant?.name ?? ' ',
                            textAlign: TextAlign.left,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF3E3E3E),
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 2),
                        Text(food?.restaurant?.description ?? ' ',
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF4F4F4F),
                                fontWeight: FontWeight.w400)),
                        SizedBox(height: 2),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: Helper.getStarsList(double.parse(
                                    food?.restaurant?.rate ?? '0')),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
