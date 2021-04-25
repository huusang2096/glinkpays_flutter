import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class AddressShimmer extends StatelessWidget {
  final Size size;

  AddressShimmer({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      width: size.width,
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.only(left: 12.0, top: 8.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Container(
              color: colorWhite,
              child: _buildRowContent(
                  text: '06 Tôn Đức Thắng, District 1 , Ho Chi Minh City',
                  isBold: false,
                  pathSvg: 'assets/svg/direction.svg'),
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
              child: _buildRowContent(
                  text: '+02963.234.543',
                  isBold: true,
                  pathSvg: 'assets/svg/phone.svg'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowContent({String text, pathSvg, bool isBold}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            text,
            maxLines: 2,
            style: body2.copyWith(
                color: Colors.transparent,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ),
        CircleAvatar(
          backgroundColor: colorTitle,
          child: SvgPicture.asset(pathSvg),
        ),
        SizedBox(
          width: 5.0,
        )
      ],
    );
  }
}
