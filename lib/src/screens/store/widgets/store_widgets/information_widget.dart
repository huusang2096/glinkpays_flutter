import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/store/cubit/store_cubit.dart';
import 'package:vipay/src/screens/store/widgets/content_in_store.dart';
import 'package:simplest/simplest.dart';

class InformationWidget extends CubitWidget<StoreCubit, StoreState> {
  final Size size;
  final String information;
  InformationWidget({this.size, this.information});

  @override
  Widget builder(BuildContext context, StoreState state) {
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
                  'information'.tr,
                  style: title.copyWith(color: colorTitle),
                ),
              )
            ],
          ),
          SizedBox(height: 5.0),
          Text(
            bloc.handleInformation(information),
            style: body2,
          ),
          // Text('Friday - Sunday 12:00 PM - 5:00 AM', style: body2),
        ],
      ),
    );
  }
}
