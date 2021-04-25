import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/models/check_transaction_fee_response.dart';
import 'package:vipay/src/models/my_voucher/my_voucher_order_response.dart';
import 'package:vipay/src/models/search/search_response.dart';
import 'package:vipay/src/models/transfer_money/check_voucher_response.dart';
import 'package:vipay/src/models/transfer_money/get_balance_available_response.dart';
import 'package:vipay/src/models/transfer_money/send_money_request.dart';

import 'package:vipay/src/screens/transfer/widgets/button_transfer_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/screens/transfer/cubit/transfer_confirm/transfer_confirm_cubit.dart';

class TransferConfirmScreen
    extends CubitWidget<TransferConfirmCubit, TransferConfirmState> {
  static BlocProvider<TransferConfirmCubit> provider(
      {UserSearchItem user,
      Wallet selectedCurrency,
      MyVoucherOrder myVoucherOrder,
      CheckVoucherResponse checkVoucherResponse,
      SendMoneyRequest sendMoneyRequest,
      CheckTransactionFeeResponse feeResponse}) {
    return BlocProvider(
        create: (context) => TransferConfirmCubit(
            user: user,
            selectedCurrency: selectedCurrency,
            myVoucherOrder: myVoucherOrder,
            checkVoucherResponse: checkVoucherResponse,
            sendMoneyRequest: sendMoneyRequest,
            feeResponse: feeResponse),
        child: TransferConfirmScreen());
  }

  @override
  Widget builder(BuildContext context, TransferConfirmState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.data.isLoadingScaffold,
      child: Stack(
        children: [
          Scaffold(
            appBar: PreferredSize(
              preferredSize: AppBar().preferredSize,
              child: AppBarTransferSelectUserWidget(
                titleText: 'confirm'.tr,
                onPressIcon: () {
                  navigator.pop();
                },
              ),
            ),
            body: SizedBox.expand(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, bottom: 10.0),
                      child: Text(
                        'transaction_details'.tr,
                        style: body1,
                      ),
                    ),
                    Container(
                      color: colorWhite,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildRow(
                              leftText: 'transfer_to'.tr,
                              rightText: state.data.user?.name ?? '',
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          state.data.user.phone == null
                              ? SizedBox.shrink()
                              : buildRow(
                                  leftText: 'phone_number'.tr,
                                  rightText: state.data.user?.phone ?? '',
                                  paddingBottom: 10.0,
                                  textStyleRightText: body2),
                          state.data.user.email == null
                              ? SizedBox.shrink()
                              : buildRow(
                                  leftText: 'email'.tr,
                                  rightText: state.data.user?.email ?? '',
                                  paddingBottom: 10.0,
                                  textStyleRightText: body2),
                          state.data.sendMoneyRequest.note != null
                              ? buildRow(
                                  leftText: 'description_transaction'.tr,
                                  rightText: state.data.sendMoneyRequest.note,
                                  paddingBottom: 10.0,
                                  textStyleRightText: body2)
                              : SizedBox.shrink(),
                          buildRow(
                              leftText: 'amount_of_money'.tr,
                              rightText: state.data.sendMoneyRequest.amount +
                                  ' ' +
                                  (state.data.selectedCurrency?.currCode ?? ''),
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          buildRow(
                              leftText: 'fee_percent'.tr,
                              rightText: (double.parse(state
                                              .data
                                              .feeResponse
                                              ?.data
                                              ?.feeDetails
                                              ?.chargePercentage ??
                                          '0.0'))
                                      .toPrecision(2)
                                      .toString() +
                                  '%',
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          buildRow(
                              leftText: 'fee_fixed'.tr,
                              rightText: double.parse(state.data.feeResponse
                                          ?.data?.feeDetails?.chargeFixed ??
                                      '0.0')
                                  .toPrecision(2)
                                  .toString(),
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          buildRow(
                              leftText: 'fee_currency'.tr,
                              rightText:
                                  (state.data.feeResponse?.data?.currencyFee ??
                                      ' '),
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          buildRow(
                              leftText: 'total_fee'.tr,
                              rightText:
                                  (state.data.feeResponse?.data?.totalFee ?? 0)
                                      .toString(),
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          buildRow(
                              leftText: 'total_with_fee'.tr,
                              rightText: (state.data.feeResponse?.data
                                          ?.totalAmountWithFee ??
                                      0)
                                  .toString(),
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          buildRow(
                              leftText: 'total_with_fee'.tr,
                              rightText: (state.data.feeResponse?.data
                                          ?.totalAmountWithFee ??
                                      0)
                                  .toString(),
                              paddingBottom: 10.0,
                              textStyleRightText: body2),
                          if (state.data.myVoucherOrder != null) ...[
                            buildRow(
                                leftText: 'voucher_code'.tr,
                                rightText:
                                    state.data.myVoucherOrder?.couponCode ?? '',
                                paddingBottom: 10.0,
                                textStyleRightText: body2),
                            buildRow(
                                leftText: 'reduced_amount'.tr,
                                rightText: '${bloc.handleReduceMoney()} ' +
                                    (state.data.selectedCurrency?.currCode ??
                                        ''),
                                paddingBottom: 10.0,
                                textStyleRightText: body2),
                          ],
                          SizedBox(height: 4.0),
                          Divider(
                            indent: 15.0,
                            endIndent: 15.0,
                            color: colorBackgroundAppBar,
                            height: 1,
                          ),
                          buildRow(
                              leftText: 'total_money'.tr,
                              rightText: '${bloc.handleTotalMoney()} ' +
                                  (state.data.selectedCurrency?.currCode ?? ''),
                              paddingBottom: 0.0,
                              paddingTop: 14.0,
                              textStyleRightText:
                                  body2.copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ButtonTransferWidget(
            titleButton: 'confirm'.tr,
            size: size,
            onPress: () => bloc.sendMoney(),
          )
        ],
      ),
    );
  }

  Widget buildRow(
      {String leftText,
      String rightText,
      double paddingBottom,
      double paddingTop = 0,
      TextStyle textStyleRightText}) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom, top: paddingTop),
      child: Row(
        children: [
          Expanded(
            child: Text(leftText, style: body2.copyWith(color: colorGrey)),
          ),
          Expanded(
            child: Text(rightText,
                textAlign: TextAlign.right, style: textStyleRightText),
          ),
        ],
      ),
    );
  }
}
