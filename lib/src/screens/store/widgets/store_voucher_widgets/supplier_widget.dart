import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/cubit/store_voucher_cubit.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class SupplierWidget extends CubitWidget<StoreVoucherCubit, StoreVoucherState> {
  final Size size;
  final String name;
  final String urlImg;
  final Function onPressItem;
  SupplierWidget({this.size, this.name, this.urlImg, this.onPressItem});

  @override
  Widget builder(BuildContext context, StoreVoucherState state) {
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
                    index: index,
                    onPressItem: () {
                      onPressItem();
                    },
                    heroTag: 'supplier hero tag $index',
                    urlImg: urlImg,
                    title: name);
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
              itemCount: 1)
        ],
      ),
    );
  }

  Widget buildItemList(
      {String urlImg, title, Function onPressItem, int index, String heroTag}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          onPressItem();
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Hero(
              transitionOnUserGestures: true,
              tag: heroTag,
              child: buildCachedNetworkImage(
                  isBorderRadius: true,
                  width: 90.0,
                  height: 90.0,
                  imgUrl: urlImg),
            ),
            buildRowContent(title: title),
          ],
        ),
      ),
    );
  }

  Widget buildRowContent({String title}) {
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
                  Text(
                    title,
                    style: body2.copyWith(fontWeight: FontWeight.bold),
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
