import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class SupplierShimmer extends StatelessWidget {
  final Size size;

  SupplierShimmer({this.size});

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
            pathSVG: 'assets/svg/home.svg',
            colorSVG: colorTitle,
            textWidget:
                Text('supplier'.tr, style: title.copyWith(color: colorTitle)),
          ),
          SizedBox(
            height: 15.0,
          ),
          ListView.separated(
              padding: EdgeInsets.only(bottom: 8.0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return buildItemList(
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
              itemCount: 2)
        ],
      ),
    );
  }

  Widget buildItemList({String title, description, number}) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Shimmer.fromColors(
          baseColor: colorGrey300,
          highlightColor: colorGrey100,
          child: Container(
            color: colorWhite,
            width: 90.0,
            height: 90.0,
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
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
