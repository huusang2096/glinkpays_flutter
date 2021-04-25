import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';

class CustomRowItemBodyProfile extends StatelessWidget {
  final String image;
  final String title;

  //0: .svg  or 1: .png
  final bool isPng;
  final Function press;
  final Color colorImg;

  const CustomRowItemBodyProfile(
      {Key key, this.image, this.title, this.isPng, this.press, this.colorImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        color: whiteColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 10.0,
          ),
          child: Row(
            children: [
              isPng
                  ? Image.asset(image)
                  : colorImg != null
                      ? SvgPicture.asset(
                          image,
                          color: colorImg,
                        )
                      : SvgPicture.asset(
                          image,
                        ),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: Text(
                  title.tr,
                ),
              ),
              Icon(
                Icons.arrow_right_sharp,
                color: greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
