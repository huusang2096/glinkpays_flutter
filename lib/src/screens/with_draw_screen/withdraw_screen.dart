import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/transfer/widgets/button_transfer_widget.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';
import 'package:vipay/src/screens/with_draw_screen/cubit/withdraw_cubit.dart';
import 'package:vipay/src/screens/with_draw_screen/shimmer/affiliate_bank_shimmer.dart';
import 'package:vipay/src/screens/with_draw_screen/shimmer/balance_in_wallet_shimmer.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/affiliate_bank_widget.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/balance_in_wallet_widget.dart';
import 'package:vipay/src/screens/with_draw_screen/widgets/custom_textfield_withdraw_widget.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/widgets/empty_account.dart';

class WithDrawScreen extends CubitWidget<WithdrawCubit, WithdrawState> {
  final TextEditingController _txtController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  static BlocProvider<WithdrawCubit> provider() {
    return BlocProvider(
      create: (context) => WithdrawCubit(),
      child: WithDrawScreen(),
    );
  }

  @override
  Widget builder(BuildContext context, WithdrawState state) {
    final Size size = MediaQuery.of(context).size;
    return AppProgressHUB(
      inAsyncCall: state.isLoading,
      child: Scaffold(
        backgroundColor: colorWhite,
        appBar: PreferredSize(
          preferredSize: AppBar().preferredSize,
          child: AppBarTransferSelectUserWidget(
            titleText: 'with_draw'.tr.toUpperCase(),
            onPressIcon: () {
              navigator.pop();
            },
          ),
        ),
        body: _buildBody(context, state, size),
      ),
    );
  }

  Widget _buildBody(BuildContext context, WithdrawState state, Size size) {
    if (state is WithdrawShowNotLogin) {
      return EmptyAccount();
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
          SizedBox.expand(
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      state.isShowShimmer
                          ? BalanceInWalletShimmer(size: size)
                          : BalanceInWalletWidget(size: size),
                      Form(
                        key: _formKey,
                        child: CustomTextFieldWithdrawWidget(
                          controller: _txtController,
                          suffixText: 'USD',
                          enabled: !state.isShowShimmer,
                          validator: bloc.validateAmount,
                          hintText: 'enter_the_amount'.tr,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 20.0, bottom: 8.0),
                  child: Text(
                    'associated_bank'.tr,
                    style: body1.copyWith(color: activeGreen),
                  ),
                ),
                state.isShowShimmer
                    ? AffiliateBankShimmer()
                    : AffiliateBankWidget(size: size),
                SizedBox(height: 75.0)
              ],
            ),
          ),
          if (state is! WithdrawShowNotLogin)
            ButtonTransferWidget(
              onPress: () {
                if (!state.isLogin) {
                  bloc.handleButtonWithDraw(_txtController);
                } else if (_formKey.currentState.validate()) {
                  bloc.handleButtonWithDraw(_txtController);
                }
              },
              size: size,
              titleButton: 'with_draw'.tr.toUpperCase(),
            )
        ],
      ),
    );
  }

  @override
  dynamic dispose() {
    _txtController.dispose();
    return super.dispose();
  }
}
