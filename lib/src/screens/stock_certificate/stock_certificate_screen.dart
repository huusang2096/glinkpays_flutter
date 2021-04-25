import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';

class StockCertificateScreen extends CubitWidget<ProfileCubit, ProfileState> {
  String urlStockCertificate;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  StockCertificateScreen({this.urlStockCertificate});

  static provider({String urlStockCertificate}) {
    return BlocProvider(
      create: (_) => ProfileCubit(),
      child: StockCertificateScreen(
        urlStockCertificate: urlStockCertificate,
      ),
    );
  }

  @override
  Widget builder(BuildContext context, ProfileState state) {
    Random random = Random();
    return Scaffold(
      appBar: AppBar(
        title: Text('stock_certificate'.tr),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RepaintBoundary(
                key: _scaffoldKey,
                child: PinchZoomImage(
                    zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
/*
                    hideStatusBarWhileZooming: true,
*/
                    image: CachedNetworkImage(
                      maxWidthDiskCache: 400,
                      maxHeightDiskCache: 400,
                      memCacheHeight: 500,
                      memCacheWidth: 500,
                      imageUrl:
                          urlStockCertificate + '?dummy=${random.nextInt(100)}',
                      key: ValueKey(urlStockCertificate),
                      placeholder: (context, url) =>
                          _buildShimmerStockCertificate(),
                      errorWidget: (context, url, error) =>
                          _buildShimmerStockCertificate(),
                    ))),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              onPressed: () {
                bloc.captureAndShareStockPng(_scaffoldKey);
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
                    'share_img_stock'.tr,
                    style: body1.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerStockCertificate() {
    return Shimmer.fromColors(
      baseColor: colorGrey300,
      highlightColor: colorGrey100,
      child: Container(
        height: 200.0,
        width: 200.0,
        color: colorWhite,
      ),
    );
  }
}
