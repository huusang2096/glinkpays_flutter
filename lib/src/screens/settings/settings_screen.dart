import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/resources.dart';
import 'package:vipay/src/common/style.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/settings/cubit/settings_cubit.dart';

class SettingScreen extends CubitWidget<SettingsCubit, SettingsState> {
  final paddingTL = 20.0;

  static provider() {
    return BlocProvider<SettingsCubit>(
      create: (_) => SettingsCubit(),
      child: SettingScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    super.afterFirstLayout(context);
    bloc.getInfoSetting();
    //bloc.getInfoSettingDarkLight();      //----> DarkMode
  }

  @override
  void listener(BuildContext context, SettingsState state) {
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, SettingsState state) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Container(
          height: _size.height,
          width: _size.width,
          color: greyColor300,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingTL,
                  ),
                  child: Text(
                    'security'.tr,
                    style: TextStyle(color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    navigator.pushNamed(RouteGenerator.changePasswordScreen);
                  },
                  child: Container(
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: paddingTL, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'change_password'.tr,
                            style: TextStyle(
                              color: blackColor,
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
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  color: whiteColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: paddingTL, vertical: 3.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.fingerprint_outlined,
                              color: green1,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'face_id_touch_id'.tr,
                              style: TextStyle(
                                color: blackColor,
                              ),
                            ),
                          ],
                        ),
                        Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                            activeColor: green1,
                            value: state.data?.isTouchFaceID ?? false,
                            onChanged: (bool value) async {
                              value = await bloc.touchFaceID();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: paddingTL,
                  ),
                  child: Text(
                    'setting_app'.tr,
                    style: TextStyle(color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                GestureDetector(
                  onTap: () {
                    navigator.pushNamed(RouteGenerator.languagesScreen);
                  },
                  child: Container(
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: paddingTL, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Images.settingIcon,
                                color: green1,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'languages'.tr,
                                style: TextStyle(
                                  color: blackColor,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_right_sharp,
                            color: greyColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                // Container(
                //   color: whiteColor,
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(
                //         horizontal: paddingTL, vertical: 3.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Row(
                //           children: [
                //             SvgPicture.asset(Images.lightTurnOnOff),
                //             SizedBox(
                //               width: 5.0,
                //             ),
                //             Text(
                //               'light_dark_mode'.tr,
                //               style: TextStyle(
                //                 color: blackColor,
                //               ),
                //             ),
                //           ],
                //         ),
                //         Transform.scale(
                //           scale: 0.7,
                //           child: CupertinoSwitch(
                //             activeColor: green1,
                //             value: isTurnLight,
                //             onChanged: (bool value) async {
                //               value = await bloc.touchToTurnLight();
                //             },
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 5.0,
                // ),
                GestureDetector(
                  onTap: () {
                    navigator.pushNamed(RouteGenerator.informationAppScreen);
                  },
                  child: Container(
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: paddingTL, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'app_info'.tr,
                            style: TextStyle(
                              color: greyColor,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        'settings'.tr,
        style: TextStyle(
          color: whiteColor,
        ),
      ),
      leading: IconButton(
        onPressed: () {
          navigator.pop();
        },
        icon: Icon(
          Icons.arrow_back_ios,
          color: whiteColor,
        ),
      ),
      centerTitle: true,
    );
  }
}
