import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/profile/widgets/profile_custom_row_Item.dart';
import 'package:vipay/src/screens/profile/widgets/profile_custom_row_info.dart';

class ProfileShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    final _size72 = 72.0;
    final _height5 = 5.0;
    return Container(
      color: greyColor300,
      width: _size.width,
      height: _size.height,
      child: Container(
        color: greyColor300,
        width: _size.width,
        height: _size.height,
        child: Shimmer.fromColors(
          baseColor: colorGrey300,
          highlightColor: colorGrey100,
          child: ListView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: whiteColor,
                        ),
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: whiteColor,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(_size72),
                            child: Container(
                              height: 80,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 40,
                      child: Text(''),
                    ),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomRowItemBodyProfile(
                      image: Images.profileIcon,
                      title: ''.tr,
                      isPng: false,
                      press: () {},
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    CustomRowItemBodyProfile(
                      image: Images.voucherIcon,
                      title: '',
                      isPng: false,
                      press: () {},
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    CustomRowItemBodyProfile(
                      image: 'assets/svg/qr_code.svg',
                      title: '',
                      colorImg: Color(0xff28ABAE),
                      isPng: false,
                      press: () {},
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    _buildItemsColumn(
                      context,
                      '',
                      () {},
                      Icon(
                        FontAwesomeIcons.certificate,
                        color: Color(0xff28ABAE),
                      ),
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    _buildItemsColumn(
                      context,
                      '',
                      () {},
                      Icon(
                        Icons.announcement,
                        color: Color(0xff28ABAE),
                      ),
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    CustomRowItemBodyProfile(
                      image: Images.settingIcon,
                      title: '',
                      isPng: true,
                      press: () {},
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    CustomRowItemBodyProfile(
                      image: Images.helpIcon,
                      title: 'help',
                      isPng: false,
                      press: () {},
                    ),
                    SizedBox(
                      height: _height5,
                    ),
                    CustomRowItemBodyProfile(
                      image: Images.logoutIcon,
                      title: 'logout',
                      isPng: false,
                      press: () {},
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemsColumn(
    BuildContext context,
    String title,
    Function press,
    Icon icon,
  ) {
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
              icon,
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
