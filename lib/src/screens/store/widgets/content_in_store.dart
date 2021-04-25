import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';

Widget buildCachedNetworkImage(
    {double width, height, String imgUrl, bool isBorderRadius}) {
  return CachedNetworkImage(
    width: width,
    height: height,
    imageUrl: imgUrl,
    fit: BoxFit.cover,
    memCacheWidth: 700,
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

Widget buildSvgIconAndTitle(
    {String pathSVG, Widget textWidget, Color colorSVG}) {
  return Row(
    children: [
      colorSVG == null
          ? SvgPicture.asset(pathSVG)
          : SvgPicture.asset(
              pathSVG,
              color: colorSVG,
            ),
      SizedBox(
        width: 5.0,
      ),
      textWidget,
    ],
  );
}

Widget buildAppBar({Function onPressIcon, String titleKey}) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        onPressIcon();
      },
      icon: Icon(
        Icons.arrow_back_ios,
        color: colorWhite,
      ),
    ),
    backgroundColor: colorBackgroundAppBar,
    title: Text(
      titleKey.tr.toUpperCase(),
      style: title.copyWith(color: colorWhite),
    ),
    centerTitle: true,
  );
}
