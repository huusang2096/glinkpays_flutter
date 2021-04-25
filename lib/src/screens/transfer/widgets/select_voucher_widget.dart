import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/transfer/cubit/transfer/transfer_cubit.dart';

class SelectVoucherWidget extends StatelessWidget {
  final Function handleSelectVoucher;

  const SelectVoucherWidget({Key key, this.handleSelectVoucher})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final state = context.watch<TransferCubit>().state;
    return Container(
        color: colorWhite,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => handleSelectVoucher(),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: SvgPicture.asset(
                            'assets/svg/voucher.svg',
                            color: colorBackgroundAppBar,
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Expanded(
                          child: Text('vipay_voucher'.tr,
                              overflow: TextOverflow.ellipsis, style: body2),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: Text(
                            state.data.myVoucherOrder != null
                                ? (state.data.myVoucherOrder?.couponCode ?? '')
                                : 'select_or_enter_a_code'.tr,
                            textAlign: TextAlign.right,
                            // overflow: TextOverflow.e,
                            style: body2.copyWith(
                                color: state.data.myVoucherOrder != null
                                    ? Colors.black
                                    : colorGrey)),
                      ),
                      SizedBox(
                        width: 4.0,
                      ),

                      GestureDetector(
                        onTap: () => context
                            .read<TransferCubit>()
                            .handleTapIconDeleteSelectVoucher(),
                        child: Icon(
                          state.data.myVoucherOrder != null
                              ? Icons.highlight_remove_outlined
                              : Icons.arrow_forward_ios,
                          size: 20.0,
                          color: state.data.myVoucherOrder != null
                              ? Colors.black
                              : colorGrey,
                        ),
                      )
                      // IconButton(
                      //   icon: Icon(
                      //     state.myVoucherOrder != null
                      //         ? Icons.remove
                      //         : Icons.arrow_forward_ios,
                      //     size: 17.0,
                      //   ),
                      //   padding: EdgeInsets.all(0.0),
                      //   color: colorGrey,
                      //   onPressed: () => context
                      //       .read<TransferCubit>()
                      //       .handleTapIconVoucher(),
                      // ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
