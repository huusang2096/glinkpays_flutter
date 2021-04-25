import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/cubit/store_voucher_cubit.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';

class TermsOfUseWidget
    extends CubitWidget<StoreVoucherCubit, StoreVoucherState> {
  final Size size;
  final String ingredients;
  TermsOfUseWidget({this.size, this.ingredients});

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
          Text(
            bloc.skipHtml(ingredients),
            style: body2,
          ),
          // Text(
          //   'do_not_apply_other_promotions'.tr,
          //   style: body2,
          // ),
        ],
      ),
    );
  }
}
