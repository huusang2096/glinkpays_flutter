import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/cubit/store_voucher_cubit.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simplest/simplest.dart';

class TermsOfUseShimmer
    extends CubitWidget<StoreVoucherCubit, StoreVoucherState> {
  final Size size;

  TermsOfUseShimmer({this.size});

  @override
  Widget builder(BuildContext context, StoreVoucherState state) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.only(left: 12.0, top: 8.0, bottom: 10.0),
      width: size.width,
      color: colorWhite,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.info,
                color: colorTitle,
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'conditions_of_use'.tr,
                  style: title.copyWith(color: colorTitle),
                ),
              )
            ],
          ),
          SizedBox(height: 5.0),
          Shimmer.fromColors(
            baseColor: colorGrey300,
            highlightColor: colorGrey100,
            child: Container(
              color: colorWhite,
              child: Text(
                'do_not_apply_other_promotions'.tr,
                style: body2.copyWith(color: Colors.transparent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
