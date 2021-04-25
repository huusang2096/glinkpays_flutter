import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';

class TrendingVoucherWidget extends StatelessWidget {
  FoodDatasResponse trendingVoucher;

  TrendingVoucherWidget(this.trendingVoucher);

  @override
  Widget build(BuildContext context) {
    return _buildCategories(context: context);
  }

  Widget _buildCategories({context}) {
    return Container(
      height: 220,
      padding: EdgeInsets.all(16),
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                SvgPicture.asset("assets/images/hotdeal.svg"),
                SizedBox(width: 10),
                Text(
                  allTranslations.text('hot_in_week').toUpperCase(),
                  style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF87D65A),
                      fontWeight: FontWeight.w700),
                ),
              ]),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(RouteGenerator.storeShowAll,
                      arguments: {'topWeekResponse': trendingVoucher});
                },
                child: Row(children: [
                  Text(
                    'show_more'.tr,
                    style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF87D65A),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset("assets/images/readmore_icon.svg"),
                ]),
              ),
            ],
          ),
          SizedBox(height: 10),
          (trendingVoucher.isNullOrBlank
                  ? false
                  : trendingVoucher.data.isNullOrBlank
                      ? false
                      : true)
              ? Expanded(
                  child: ListView.builder(
                  itemCount: trendingVoucher.data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    double _marginLeft = 0;
                    (index == 0) ? _marginLeft = 0 : _marginLeft = 10;
                    return TrendingVoucherItemWidget(
                      index: index,
                      marginLeft: _marginLeft,
                      food: trendingVoucher.data.elementAt(index),
                    );
                  },
                ))
              : SizedBox.shrink()
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TrendingVoucherItemWidget extends StatelessWidget {
  double marginLeft;
  FoodData food;
  int index;

  TrendingVoucherItemWidget({Key key, this.marginLeft, this.food, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Theme.of(context).accentColor.withOpacity(0.08),
        highlightColor: Colors.transparent,
        onTap: () {
          navigator.pushNamed(RouteGenerator.storeScreen, arguments: {
            'restaurant': food.restaurant,
            'heroTag': 'trendingVoucher${food.hashCode.toString()}'
          });
        },
        child: Card(
            margin: EdgeInsets.only(left: marginLeft, bottom: 2),
            child: Container(
              height: 160,
              width: 140,
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: <Widget>[
                      Hero(
                        tag: 'trendingVoucher${food.hashCode.toString()}',
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(4),
                                topRight: const Radius.circular(4),
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
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
