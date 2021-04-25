import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/helpers/helper.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/screens/my_voucher/cubit/use_my_voucher_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/widgets/image_error_widget.dart';

class UseMyVoucherScreen
    extends CubitWidget<UseMyVoucherCubit, UseMyVoucherState> {
  final MyVoucherOrder item;

  UseMyVoucherScreen({this.item});

  static provider({MyVoucherOrder item}) {
    return BlocProvider<UseMyVoucherCubit>(
      create: (_) => UseMyVoucherCubit(),
      child: UseMyVoucherScreen(
        item: item,
      ),
    );
  }

  @override
  Widget builder(BuildContext context, UseMyVoucherState state) {
    return Scaffold(
      appBar: AppBar(
        title: Text('voucher'.tr),
      ),
      body: _buildBodyUseMyVoucher(context, state),
    );
  }

  Widget _buildBodyUseMyVoucher(BuildContext context, UseMyVoucherState state) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: QrImage(
                    data: item.couponCode,
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${item.couponCode}',
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: item.food.media.first.thumb ?? '',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Shimmer.fromColors(
                        baseColor: colorGrey300,
                        highlightColor: colorGrey100,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          color: colorWhite,
                        ),
                      ),
                      errorWidget: (context, a, _) => ImageErrorWidget(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${item.food?.name ?? ''}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Images.iconRestaurant
                        .loadImage(size: 30.0, color: Colors.blue),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        '${item.food.restaurant?.name ?? ''}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Images.iconAddress
                        .loadImage(size: 30.0, color: Colors.blue),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Text(
                        '${item.food.restaurant?.address ?? ''}',
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Text(
                  'amount'.tr,
                  style: TextStyle(fontSize: 25.0),
                ),
                Text(
                  '${item?.price ?? 0} GAS',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('buy_on'.tr),
                        Text('${item?.createdAt ?? ''}'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('valid_untill'.tr),
                        Text('${item?.expiryDate ?? ''}'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                //_buildButtonUseVoucher(context, state),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildButtonUseVoucher(BuildContext context, UseMyVoucherState state) {
  //   return Container(
  //     width: double.infinity,
  //     height: 44,
  //     margin: const EdgeInsets.symmetric(vertical: 8),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.all(Radius.circular(44)),
  //       gradient: LinearGradient(
  //           begin: Alignment.centerLeft,
  //           end: Alignment.centerRight,
  //           colors: [beginGradientColor, endGradientColor]),
  //     ),
  //     child: FlatButton(
  //       onPressed: () {
  //         print('itemCouponCode' + item.couponCode);
  //         bloc.useVoucher(code: item.couponCode);
  //       },
  //       child: Text(
  //         'use_voucher'.tr,
  //         style: TextStyle(
  //           fontSize: 18.0,
  //           color: Theme.of(context).primaryColor,
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
