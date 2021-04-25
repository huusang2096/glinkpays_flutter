import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'package:vipay/src/screens/profile/cubit/profile_cubit.dart';

class IdentifyNotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfileCubit>().state;
    return state.profileResponse?.data?.isBlank ?? true
        ? SizedBox.shrink()
        : Container(
            color: Color(0xffedefee),
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 200,
                        height: 50,
                        child: Text(
                          'your_account_is_not_verification'.tr,
                          style: title.copyWith(
                            color: Colors.black,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 5.0,
                        percent: state.verifyProcessPercent,
                        center: Text(
                            '${(state.verifyProcessPercent * 100).toPrecision(0)}%'),
                        progressColor: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _handleIdentifyStatus(state)
                              ? Row(
                                  children: [
                                    Icon(
                                      Icons.verified_user,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('verify_identity'.tr,
                                        style:
                                            body1.copyWith(color: Colors.green))
                                  ],
                                )
                              : Row(
                                  children: [
                                    Icon(Icons.verified_user),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('verify_identity'.tr, style: body1)
                                  ],
                                ),
                          SizedBox(
                            height: 5,
                          ),
                          state.profileResponse.data.emailVerification
                              ? Row(
                                  children: [
                                    Icon(
                                      Icons.verified_user,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('verify_email'.tr,
                                        style:
                                            body1.copyWith(color: Colors.green))
                                  ],
                                )
                              : Row(
                                  children: [
                                    Icon(Icons.verified_user),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('verify_email'.tr, style: body1)
                                  ],
                                ),
                          SizedBox(
                            height: 5,
                          ),
                          state.profileResponse.data.phoneVerificationCode
                              ? Row(
                                  children: [
                                    Icon(
                                      Icons.verified_user,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('verify_phone'.tr,
                                        style:
                                            body1.copyWith(color: Colors.green))
                                  ],
                                )
                              : Row(
                                  children: [
                                    Icon(Icons.verified_user),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('verify_phone'.tr, style: body1)
                                  ],
                                ),
                        ],
                      ),
                      RaisedButton(
                        color: beginGradientColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        onPressed: () async {
                          //navigator.pushNamed(RouteGenerator.inheritanceScreen);
                          if (state.profileResponse?.data != null) {
                            await navigator
                                .pushNamed(RouteGenerator.verificationScreen);
                            context.read<ProfileCubit>().getProfile();
                          }
                        },
                        child: Text(
                          'verify_now'.tr,
                          style:
                              body1.copyWith(color: Colors.white, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
  }

  bool _handleIdentifyStatus(ProfileState state) {
    if (!state.profileResponse.data?.identityVerificationWarring) {
      if (state.profileResponse.data.documentVerification.first.status ==
          VerifyDocumentationStatus.APPROVED) {
        return true;
      }
    } else {
      return false;
    }
    return false;
  }
}
