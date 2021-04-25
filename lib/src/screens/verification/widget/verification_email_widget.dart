import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import 'package:simplest/simplest.dart';
import 'package:vipay/locator.dart';
import 'package:vipay/src/common/config.dart';
import 'package:vipay/src/common/storage/app_prefs.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';

class VerificationEmailWidget extends StatefulWidget {
  @override
  _VerificationEmailWidgetState createState() =>
      _VerificationEmailWidgetState();
}

class _VerificationEmailWidgetState extends State<VerificationEmailWidget> {
  CountdownTimerController countdownTimerController;

  @override
  void initState() {
    countdownTimerController = CountdownTimerController(
        endTime: 0,
        onEnd: () {
          locator<AppPref>().timeResendEmail = -1;
          setState(() {});
        });

    final timer = locator<AppPref>().timeResendEmail;
    if (timer != null && timer > DateTime.now().millisecondsSinceEpoch) {
      countdownTimerController.endTime = locator<AppPref>().timeResendEmail;
    } else {
      locator<AppPref>().timeResendEmail = -1;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<InheritanceCubit>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Row(
            children: [
              Icon(
                Icons.verified_user,
                color: (state.data.user.emailVerification)
                    ? Colors.green
                    : Colors.black87,
              ),
              SizedBox(width: 4.0),
              Expanded(
                  child: Text('verify_email'.tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: body1.copyWith(
                          color: (state.data.user.emailVerification)
                              ? colorGrey
                              : Colors.black87))),
              SizedBox(width: 10.0),
              (state.data.user.emailVerification)
                  ? Text('finish'.tr,
                      style: body2.copyWith(
                          fontStyle: FontStyle.italic, color: colorGrey))
                  : locator<AppPref>().timeResendEmail >
                          DateTime.now().millisecondsSinceEpoch
                      ? RaisedButton(
                          color: beginGradientColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: null,
                          child: CountdownTimer(
                            controller: countdownTimerController,
                            onEnd: () =>
                                locator<AppPref>().timeResendEmail = -1,
                            widgetBuilder: (context, time) {
                              return time?.sec == null
                                  ? Container(child: Text(''))
                                  : Center(
                                      child: Text('${time?.sec}',
                                          style: TextStyle(color: colorWhite)));
                            },
                          ),
                        )
                      : RaisedButton(
                          color: beginGradientColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed: () async {
                            final check = await context
                                .read<InheritanceCubit>()
                                .resendEmail();
                            if (!check) {
                              return;
                            }
                            locator<AppPref>().timeResendEmail =
                                DateTime.now().millisecondsSinceEpoch + 60000;
                            countdownTimerController.endTime =
                                locator<AppPref>().timeResendEmail;
                            setState(() {});
                          },
                          child: state.data.isLoadingInheritance
                              ? SizedBox(
                                  child: SpinKitThreeBounce(
                                    color: colorWhite,
                                    size: 15,
                                  ),
                                )
                              : Text(
                                  'verify'.tr,
                                  style: TextStyle(color: colorWhite),
                                ),
                        )
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    countdownTimerController.dispose();
    countdownTimerController.disposeTimer();
    super.dispose();
  }
}
