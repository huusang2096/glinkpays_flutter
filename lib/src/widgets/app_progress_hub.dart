import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

class AppProgressHUB extends StatelessWidget {
  final bool inAsyncCall;
  final Widget child;

  const AppProgressHUB({Key key, this.inAsyncCall, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: inAsyncCall,
      child: child,
      color: Colors.black,
      progressIndicator: SpinKitCircle(
        color: Colors.white,
      ),
    );
  }
}
