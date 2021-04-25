import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/deposit/widgets/baokim_widget.dart';
import 'package:vipay/src/screens/deposit/widgets/card_widget.dart';
import 'package:vipay/src/screens/deposit/widgets/paypal_widget.dart';
import 'package:vipay/src/screens/transfer/widgets/button_transfer_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/custom_textfield_withdraw_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/widgets/empty_account.dart';

import 'cubit/deposit_cubit.dart';

class DepositScreen extends CubitWidget<DepositCubit, DepositState> {
  final TextEditingController _txtController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final String depositType;
  final DialogService dialogService = DialogService();
  DepositScreen({this.depositType});
  static BlocProvider<DepositCubit> provider({String depositType}) {
    return BlocProvider(
      create: (context) => DepositCubit(),
      child: DepositScreen(
        depositType: depositType,
      ),
    );
  }

  @override
  Future<void> afterFirstLayout(BuildContext context) async {
    if (!depositType.isBlank) {
      context.read<DepositCubit>().showDialogDeposit(depositType);
    }
  }

  @override
  Widget builder(BuildContext context, DepositState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.isLoading,
      child: Scaffold(
        backgroundColor: colorWhite,
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarTransferSelectUserWidget(
            titleText: 'deposit'.tr.toUpperCase(),
            onPressIcon: () {
              navigator.pop();
            },
          ),
        ),
        body: _body(context, state, size),
      ),
    );
  }

  Widget _body(BuildContext context, DepositState state, Size size) {
    if (state is DepositNotLogin) {
      return EmptyAccount();
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          SafeArea(
            child: Container(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Form(
                      key: _formKey,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 60.0, left: 20.0, right: 20.0, bottom: 30.0),
                        child: CustomTextFieldWithdrawWidget(
                          controller: _txtController,
                          suffixText: 'USD',
                          enabled: state.isLogin,
                          validator: bloc.validateAmount,
                          hintText: 'enter_the_amount'.tr,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: Text(
                            "select_funds".tr,
                            style: body1.copyWith(color: colorTitle),
                          ),
                        ),

                        SizedBox(
                          height: 10.0,
                        ),
                        BaoKimWidget(
                          size: size,
                          onPress: () {
                            if (!state.isLogin) {
                              bloc.handleBaoKimPayment(_txtController.text);
                            } else if (_formKey.currentState.validate()) {
                              bloc.handleBaoKimPayment(_txtController.text);
                            }
                          },
                        )
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        // ExpansionWidget(
                        //   size: size,
                        // )
                      ],
                    ),
                    // state.isShowShimmer
                    //     ? ShowBankAccountShimmer()
                    //     : ShowBankAccountWidget(
                    //         size: size,
                    //       ),
                  ],
                ),
              ),
            ),
          ),
          if (state is! DepositNotLogin)
            ButtonTransferWidget(
              onPress: () {
                if (!state.isLogin) {
                  bloc.handleBaoKimPayment(_txtController.text);
                } else if (_formKey.currentState.validate()) {
                  bloc.handleBaoKimPayment(_txtController.text);
                }
              },
              size: size,
              titleButton: 'deposit'.tr.toUpperCase(),
            )
        ],
      ),
    );
  }

  @override
  Future<void> listener(BuildContext context, DepositState state) async {
    if (state is ShowComfirmDepositDialog) {
      if (state.depositType == 'success') {
        await dialogService.showDialog(
          title: 'Glinkpay',
          description: 'baokim_payment_has_been_success'.tr,
          buttonTitle: 'confirm'.tr,
          barrierDismissible: false,
        );
      }
      if (state.depositType == 'cancel') {
        await dialogService.showDialog(
          title: 'Glinkpay',
          description: 'baokim_payment_has_been_canceled'.tr,
          buttonTitle: 'confirm'.tr,
          barrierDismissible: false,
        );
      }
    }
  }

  @override
  dynamic dispose() {
    _txtController.dispose();
    return super.dispose();
  }
}
