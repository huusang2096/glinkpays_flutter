import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:vipay/src/screens/transfer_select_user/widgets/app_bar_transfer_select_user_widget.dart';

import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/verification/widget/verification_email_widget.dart';
import 'package:vipay/src/screens/verification/widget/verify_widget_common.dart';
import 'package:vipay/src/widgets/app_progress_hub.dart';
import 'package:vipay/src/screens/verification/widget/verify_phone_widget.dart';
import 'package:vipay/src/screens/verification/widget/verify_kyc_widget.dart';
import 'package:vipay/src/screens/verification/widget/verification_shimmer.dart';
import 'package:vipay/src/screens/verification/widget/process_verify_widget.dart';

class VerificationScreen
    extends CubitWidget<InheritanceCubit, InheritanceState> {
  static BlocProvider<InheritanceCubit> provider() {
    return BlocProvider(
        create: (context) => InheritanceCubit(), child: VerificationScreen());
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.loadData();
    super.afterFirstLayout(context);
  }

  @override
  Widget builder(BuildContext context, InheritanceState state) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: AppBarTransferSelectUserWidget(
          titleText: 'verification'.tr,
          onPressIcon: () {
            navigator.pop();
          },
        ),
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                    width: double.infinity,
                    color: colorWhite,
                    margin: EdgeInsets.symmetric(
                      vertical: 15.0,
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        state.data.isLoadingShimmer
                            ? Container(
                                padding: EdgeInsets.symmetric(vertical: 5.0),
                                child: Shimmer.fromColors(
                                  baseColor: Colors.grey[300],
                                  highlightColor: Colors.grey[100],
                                  child: Container(
                                    color: colorWhite,
                                    width: double.infinity,
                                    height: 30.0,
                                  ),
                                ))
                            : Text(
                                (state.data.user.emailVerification &&
                                        state.data.user.phoneVerificationCode &&
                                        !state.data.user
                                            .identityVerificationWarring)
                                    ? 'your_account_is_verify_complete'.tr
                                    : 'your_account_is_not_verify_complete'.tr,
                                style: body1,
                                textAlign: TextAlign.center,
                              ),
                        SizedBox(height: 8.0),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [Expanded(child: ProcessVerifyWidget())],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: colorWhite,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.data.isLoadingShimmer) ...[
                        VerificationShimmer()
                      ] else ...[
                        VerificationEmailWidget(),
                        VerifyPhoneWidget(),
                        VerifyKycWiget(),
                        SizedBox(height: 10.0)
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
