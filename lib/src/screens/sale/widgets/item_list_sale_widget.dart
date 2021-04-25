import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/widgets/box_discount_widget.dart';

class ItemListSaleWidget extends StatelessWidget {
  final Size size;
  final String titleText, information, description, urlImg;
  final Function onPress;
  final String heroTag;
  final int discount;
  const ItemListSaleWidget(
      {Key key,
      this.size,
      this.titleText,
      this.information,
      this.description,
      this.urlImg,
      this.onPress,
      this.heroTag,
      this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [
            BoxShadow(
              color: colorGrey.withOpacity(0.5),
              blurRadius: 15,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: heroTag,
                child: Stack(
                  children: [
                    buildCachedNetworkImageSaleWidget(
                        height: size.height * 0.3,
                        width: size.width,
                        imgUrl: urlImg,
                        isBorderRadius: true),
                    !(discount == null) ? BoxDicountWidget(
                      discount: discount,
                      iconDiscount: Icons.arrow_downward,
                      sizeIcon: 22,
                      horizontalPadding: 4.0,
                      verticalPadding: 4.0,
                      positionedTop: 0,
                      positionedRight: 0,
                    ):SizedBox.shrink(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(titleText,
                          style: title.copyWith(color: colorBackgroundAppBar)),
                      SizedBox(height: 4.0),
                      Text(information, style: body1),
                      SizedBox(height: 4.0),
                      Row(
                        children: [
                          Icon(
                            Icons.info,
                            color: colorTitle,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'information'.tr,
                              style: title.copyWith(color: colorTitle),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCachedNetworkImageSaleWidget(
    {double width, height, String imgUrl, bool isBorderRadius}) {
  return CachedNetworkImage(
    width: width,
    height: height,
    imageUrl: imgUrl,
    fit: BoxFit.cover,
    memCacheWidth: 500,
    imageBuilder: (context, img) {
      return Container(
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(isBorderRadius ? 8.0 : 0.0)),
            image: DecorationImage(
              image: img,
              fit: BoxFit.cover,
            )),
      );
    },
    errorWidget: (context, url, error) {
      return Container(child: Center(child: Text('image_error'.tr)));
    },
    placeholder: (context, url) {
      return Shimmer.fromColors(
        baseColor: colorGrey300,
        highlightColor: colorGrey100,
        child: Container(
          width: width,
          height: height,
          color: colorWhite,
        ),
      );
    },
  );
}
