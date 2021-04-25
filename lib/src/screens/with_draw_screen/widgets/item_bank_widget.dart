import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/deposit/models/bank_account_response_model.dart';
import 'package:vipay/src/screens/with_draw_screen/cubit/withdraw_cubit.dart';

class ItemBankWidget extends StatelessWidget {
  final Bank item;
  final Function onPress;
  final Function(int id) onLongPress;
  final Color colorBackground;

  ItemBankWidget(
      {this.item, this.onPress, this.colorBackground, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      onLongPress: () => onLongPress(item.id),
      splashColor: colorBackgroundAppBar.withOpacity(0.2),
      highlightColor: colorBackgroundAppBar.withOpacity(0.1),
      child: Container(
        padding: EdgeInsets.only(left: 20.0, right: 35, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: colorBackground,
          border: Border(
            bottom: BorderSide(
              width: 0.5,
              color: Colors.grey,
            ),
            top: BorderSide(width: 0.5, color: Colors.grey),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    // Container(
                    //   height: 35,
                    //   width: 35,
                    //   decoration: BoxDecoration(
                    //       border:
                    //           Border.all(color: Colors.grey.withOpacity(0.5)),
                    //       borderRadius: BorderRadius.circular(18)),
                    //   child: FittedBox(
                    //     fit: BoxFit.contain,
                    //     child: Image.asset(
                    //       Images.vietcomBank,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    Expanded(
                      child: Text(
                        context
                            .watch<WithdrawCubit>()
                            .handleAccountNumber(item?.accountNumber ?? ''),
                        overflow: TextOverflow.ellipsis,
                        style: body1.copyWith(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Icon(Icons.arrow_right, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
