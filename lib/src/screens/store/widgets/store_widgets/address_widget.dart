import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class AddressWidget extends StatelessWidget {
  final String address;
  final String phone;
  final Size size;
  AddressWidget({this.size, this.address, this.phone});

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
          _buildRowContent(
              text: address,
              isBold: false,
              pathSvg: 'assets/svg/direction.svg'),
          SizedBox(
            height: 5.0,
          ),
          _buildRowContent(
              text: phone, isBold: true, pathSvg: 'assets/svg/phone.svg'),
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
