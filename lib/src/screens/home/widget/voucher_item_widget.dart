import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/home/foods_response.dart';
import 'package:vipay/src/widgets/box_discount_widget.dart';

// ignore: must_be_immutable
class VoucherItemWidget extends StatelessWidget {
  double marginLeft;
  final heroTag;
  FoodData voucher;

  VoucherItemWidget({Key key, this.marginLeft, this.voucher, this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Theme.of(context).accentColor.withOpacity(0.08),
        highlightColor: Colors.transparent,
        onTap: () {
          navigator.pushNamed(RouteGenerator.saleDetailScreen, arguments: {
            'heroTag': heroTag,
            'voucher': voucher,
            'listFunctionNavigationBar': [
              () {
                navigator.pop();
              },
              () {}
            ],
            'listTitleNavigationBar': ['vouchers'.tr, voucher.name ?? ' ']
          });
        },
        child: Stack(
          children: [
            Hero(
              tag: heroTag,
              child: Container(
                  margin: EdgeInsets.only(left: marginLeft),
                  width: 161,
                  height: 95,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(
                            (voucher?.media?.isEmpty ?? true)
                                ? ''
                                : voucher.media.first.thumb),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  )),
            ),
            BoxDicountWidget(
              discount: voucher?.discountPrice,
              iconDiscount: Icons.arrow_downward,
              sizeIcon: 20,
              horizontalPadding: 2.0,
              verticalPadding: 2.0,
              positionedTop: 0,
              positionedRight: 0,
            ),
          ],
        ));
  }
}
