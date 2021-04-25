import 'package:flutter/material.dart';
import 'package:vipay/src/common/style.dart';
import 'package:vipay/src/screens/inheritance/cubit/inheritance_cubit.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/src/screens/inheritance/widgets/verify_status_model.dart';
import 'custom_linear_percent_widget.dart';

class DotVerifyWidget extends StatelessWidget {
  final double marginLeft, marginRight;
  final Color colorIcon;
  DotVerifyWidget(
      {Key key, this.marginLeft = 0.0, this.marginRight = 0.0, this.colorIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: marginLeft, right: marginRight),
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(Icons.verified_user, color: colorIcon),
    );
  }
}

class ProcessVerifyWidget extends StatefulWidget {
  @override
  _ProcessVerifyWidgetState createState() => _ProcessVerifyWidgetState();
}

class _ProcessVerifyWidgetState extends State<ProcessVerifyWidget> {
  double currentPercent = 0.0;

  bool checkSetstateSecond = false;

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<InheritanceCubit>().state.data;
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          LinearPercentIndicator(
              checkIndicator: (value) {
                currentPercent = value;

                if (currentPercent >= 0.5 && !checkSetstateSecond) {
                  setState(() {
                    checkSetstateSecond = true;
                  });
                }
              },
              leading: DotVerifyWidget(
                colorIcon: watch.user == null
                    ? colorGrey
                    : watch.user.emailVerification
                        ? Colors.green
                        : colorGrey,
              ),
              trailing: DotVerifyWidget(
                colorIcon: currentPercent >= 1 ? Colors.green : colorGrey,
              ),
              lineHeight: 6.0,
              padding: EdgeInsets.all(0.0),
              animation: true,
              animateFromLastPercent: true,
              onAnimationEnd: () {
                setState(() {});
              },
              animationDuration: 1000,
              //  percent: 1,
              percent: context.watch<InheritanceCubit>().calculatePercent(),
              backgroundColor: colorGrey100,
              progressColor: watch.user == null
                  ? Colors.transparent
                  : (watch.user.emailVerification
                      ? Colors.green.withOpacity(0.8)
                      : Colors.transparent)),
          buildIconVerification(
              color: currentPercent >= 0.5 ? Colors.green : colorGrey,
              width: 24,
              height: 24)
        ],
      ),
    );
  }

  Stack buildIconVerification({Color color, double height, double width}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          //color: colorWhite,
          width: width / 2,
          height: height / 2,
          decoration: BoxDecoration(shape: BoxShape.circle, color: colorWhite),
        ),
        Icon(Icons.verified_user, color: color)
        // SvgPicture.asset('assets/svg/shield.svg',
        //     width: width, height: height, color: color),
      ],
    );
  }
}
