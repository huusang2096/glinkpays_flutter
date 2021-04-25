import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/food.dart';

import 'CircularLoadingWidget.dart';

class VoucherCarouselWidget extends StatefulWidget {
  List<Food> foods;
  String heroTag;

  VoucherCarouselWidget({this.foods, this.heroTag});

  @override
  _VoucherCarouselWidgetState createState() => _VoucherCarouselWidgetState();
}

class _VoucherCarouselWidgetState extends State<VoucherCarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return (widget.foods?.isEmpty ?? true)
        ? CircularLoadingWidget(height: 250)
        : Container(
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.foods.length,
                itemBuilder: (BuildContext ctx, int index) {
                  final voucher = widget.foods.elementAt(index);
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: InkWell(
                      onTap: () {
                        // Navigator.of(context).pushNamed('/Food',
                        //     arguments: RouteArgument(
                        //         id: voucher.id.toString(),
                        //         heroTag: widget.heroTag));
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.storeScreen, arguments: {
                          'id': voucher.id,
                          'urlImg': (voucher?.media?.isEmpty ?? true)
                              ? ''
                              : voucher?.media?.first?.url ?? ''
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 300,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Theme.of(context)
                                    .focusColor
                                    .withOpacity(0.1),
                                blurRadius: 15,
                                offset: Offset(0, 5))
                          ]),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 2,
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                  (voucher?.media?.isEmpty ??
                                                          true)
                                                      ? ''
                                                      : voucher?.media?.first
                                                              ?.url ??
                                                          ''),
                                              fit: BoxFit.cover)),
                                    ),
                                    Positioned(
                                      top: -25,
                                      left: -10,
                                      child: Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(50))),
                                    ),
                                    Positioned(
                                        top: 20,
                                        left: 10,
                                        child: Helper.getPrice(
                                          double.parse(voucher?.discountPrice
                                                      ?.toString() ??
                                                  '0') *
                                              -1,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        )),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image:
                                                    CachedNetworkImageProvider(
                                                        (voucher
                                                                    ?.restaurant
                                                                    ?.media
                                                                    ?.isEmpty ??
                                                                true)
                                                            ? ''
                                                            : voucher
                                                                    ?.restaurant
                                                                    ?.media
                                                                    ?.first
                                                                    ?.url ??
                                                                ''),
                                                fit: BoxFit.cover)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 8.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        voucher.name ?? '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1
                                            .copyWith(fontSize: 15),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        voucher?.restaurant?.name ?? '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .display1
                                            .copyWith(fontSize: 15),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        voucher?.restaurant?.address ?? '',
                                        style: TextStyle(fontSize: 15),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      Helper.getPrice(voucher.price.toDouble())
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          );
  }
}
