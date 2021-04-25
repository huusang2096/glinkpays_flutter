import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';

class ContactHelpWidget extends StatelessWidget {
  final String phone;
  final Function onTapPhone;

  const ContactHelpWidget({Key key, this.phone, this.onTapPhone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('contact_help'.tr, style: body1.copyWith(color: colorGrey)),
              SizedBox(height: 4.0),
              Text(phone, style: body1.copyWith(fontWeight: FontWeight.bold))
            ],
          ),
          InkWell(
            onTap: () {
              onTapPhone();
            },
            child: CircleAvatar(
              backgroundColor: colorTitle,
              child: SvgPicture.asset('assets/svg/phone.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
