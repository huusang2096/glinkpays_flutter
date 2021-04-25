import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vipay/src/common/config.dart';

import 'package:simplest/simplest.dart';

import 'cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();

  static BlocProvider<SplashCubit> provider() {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: SplashScreen(),
    );
  }
}

class _SplashScreenState
    extends CubitState<SplashScreen, SplashCubit, SplashState>
    with SingleTickerProviderStateMixin {
  Animation animation,
      delayedAnimation,
      muchDelayAnimation,
      transfor,
      fadeAnimation;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    animation = Tween(begin: 0.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    transfor = BorderRadiusTween(
            begin: BorderRadius.circular(125.0),
            end: BorderRadius.circular(0.0))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.ease));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    bloc.loadData();
  }

  @override
  Widget builder(BuildContext context, SplashState state) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: FadeTransition(
                  opacity: fadeAnimation,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child:
                            Center(child: Images.logo.loadImage(height: 200)),
                      ),
                      SizedBox(
                        height: 80,
                        child: Center(
                          child: Text(
                            'Version ${state.data.version}',
                            style: body1,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
