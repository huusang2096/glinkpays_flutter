import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:shimmer/shimmer.dart';

class VouchureShimmer extends StatelessWidget {
  final Size size;

  VouchureShimmer({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      width: size.width,
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.only(left: 12.0, top: 12.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          buildSvgIconAndTitle(
            pathSVG: 'assets/svg/vouchure.svg',
            textWidget:
                Text('VOUCHURE', style: title.copyWith(color: colorTitle)),
          ),
          SizedBox(
            height: 15.0,
          ),
          ListView.separated(
              padding: EdgeInsets.only(bottom: 8.0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final String heroTag = 'heroTag $index';
                return buildItemList(
                    index: index,
                    onPressItem: () {},
                    heroTag: heroTag,
                    urlImg:
                        'https://images.foody.vn/res/g69/689448/prof/s576x330/foody-mobile-t12-jpg-292-636414273493344786.jpg',
                    description: 'Home cooking Experience',
                    title: 'The Coffee house buy 4 get 2',
                    number: '5.0');
              },
              separatorBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                );
              },
              itemCount: 3)
        ],
      ),
    );
  }

  Widget buildItemList(
      {String urlImg,
      title,
      description,
      number,
      Function onPressItem,
      int index,
      String heroTag}) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Hero(
          transitionOnUserGestures: true,
          tag: heroTag,
          child: Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Container(
              width: 90.0,
              height: 90.0,
              color: colorWhite,
            ),
          ),
        ),
        buildRowContent(title: title, description: description, number: number),
      ],
    );
  }

  Widget buildRowContent({String title, description, number}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(right: 8.0, left: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: colorGrey300,
                    highlightColor: colorGrey100,
                    child: Container(
                      color: colorWhite,
                      child: Text(
                        title,
                        style: body2.copyWith(
                            color: Colors.transparent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Shimmer.fromColors(
                    baseColor: colorGrey300,
                    highlightColor: colorGrey100,
                    child: Container(
                      color: colorWhite,
                      child: Text(
                        description,
                        style: body2,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Shimmer.fromColors(
              baseColor: colorGrey300,
              highlightColor: colorGrey100,
              child: Container(
                color: colorWhite,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: number,
                        style: body2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.transparent,
                        ),
                      ),
                      TextSpan(
                        text: ' GAS',
                        style: body2.copyWith(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
