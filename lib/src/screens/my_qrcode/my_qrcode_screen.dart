import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/my_qrcode/cubit/my_qr_code_cubit.dart';

class MyQrCodeScreen extends CubitWidget<MyQrCodeCubit, MyQrCodeState> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  static provider({String myId}) {
    return BlocProvider(
      create: (context) => MyQrCodeCubit(myId),
      child: MyQrCodeScreen(),
    );
  }

  @override
  Widget builder(BuildContext context, MyQrCodeState state) {
    return Scaffold(
      appBar: buildAppBar(
          titleText: 'my_qrcode'.tr,
          onPressIcon: () {
            navigator.pop();
          }),
      body: SizedBox.expand(
        child: state.myId.isNotEmpty ? buildQrCode(state.myId) : shimmerQR(),
      ),
    );
  }

  Widget buildQrCode(String phone) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RepaintBoundary(
          key: _scaffoldKey,
          child: QrImage(
            gapless: false,
            data: phone.trim(),
            version: QrVersions.auto,
            size: 220.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        FlatButton(
          onPressed: () {
            bloc.captureAndSharePng(_scaffoldKey);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0XFF87D65A), Color(0XFFAEDE48)]),
                  borderRadius: BorderRadius.circular(60)),
              width: double.infinity,
              height: 44,
              child: Text(
                'share_qr_code'.tr,
                style: body1.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget shimmerQR() {
    return Center(
      child: Shimmer.fromColors(
        baseColor: colorGrey300,
        highlightColor: colorGrey100,
        child: Container(height: 200.0, width: 200.0, color: colorWhite),
      ),
    );
  }

  Widget buildAppBar({Function onPressIcon, String titleText}) {
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
        titleText,
        style: title.copyWith(color: colorWhite),
      ),
      centerTitle: true,
    );
  }
}
