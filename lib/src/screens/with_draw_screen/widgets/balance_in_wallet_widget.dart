import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/with_draw_screen/cubit/withdraw_cubit.dart';

class BalanceInWalletWidget extends StatelessWidget {
  final Size size;

  BalanceInWalletWidget({Key key, this.size}) : super(key: key);

  final formatter = NumberFormat('###,###.#', 'en');

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<WithdrawCubit>();

    final state = watch.state;

    final indexWalletUsd = state.availableResponse?.data != null
        ? state.availableResponse.data.wallets.isNotEmpty
            ? state.availableResponse.data.wallets
                .indexWhere((element) => element.currCode == 'USD')
            : -1
        : -1;

    final indexWalletGas = state.availableResponse?.data != null
        ? state.availableResponse.data.wallets.isNotEmpty
            ? state.availableResponse.data.wallets
                .indexWhere((element) => element.currCode == 'GAS')
            : -1
        : -1;

    final walletUsd = indexWalletUsd != -1
        ? state.availableResponse.data.wallets[indexWalletUsd]
        : null;

    final walletGas = indexWalletGas != -1
        ? state.availableResponse.data.wallets[indexWalletGas]
        : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8.0),
          child: Text(
            'balance_in_wallet'.tr,
            style: body1.copyWith(color: activeGreen),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: colorGrey.withOpacity(0.5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      walletUsd != null
                          ? formatter.format(double.parse(walletUsd.balance))
                          : '0',
                      overflow: TextOverflow.ellipsis,
                      style: heading18BlackNor.copyWith(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      walletUsd != null ? walletUsd.currCode : ' ',
                      style: heading18BlackNor.copyWith(
                          color: activeGreen, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 4.0),
            Expanded(
              child: Column(
                children: [
                  Opacity(
                    opacity: 0.25,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 14, right: 14, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: colorGrey.withOpacity(0.5),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            walletGas != null
                                ? formatter
                                    .format(double.parse(walletGas.balance))
                                : 0,
                            overflow: TextOverflow.ellipsis,
                            style: heading18BlackNor.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            walletGas != null ? walletGas.currCode : ' ',
                            style: heading18BlackNor.copyWith(
                                color: activeGreen,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'this_feature_not_availabe_yet'.tr,
                    style: body1.copyWith(
                        color: Colors.grey,
                        fontSize: 11,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
