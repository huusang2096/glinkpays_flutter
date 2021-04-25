import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';
import 'package:vipay/route_generator.dart';

class EmptyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: AlignmentDirectional.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Theme.of(context).focusColor,
                          Theme.of(context).focusColor.withOpacity(0.1),
                        ])),
                child: Icon(
                  Icons.verified_user,
                  color: Theme.of(context).primaryColor,
                  size: 70,
                ),
              ),
              Positioned(
                right: -30,
                bottom: -50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              Positioned(
                left: -20,
                top: -50,
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Opacity(
            opacity: 0.4,
            child: Text(
              'signin_to_use_feature'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .merge(TextStyle(fontWeight: FontWeight.w300)),
            ),
          ),
          SizedBox(height: 50),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteGenerator.loginScreen);
            },
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            color: Theme.of(context).focusColor.withOpacity(0.15),
            shape: StadiumBorder(),
            child: Text(
              'sign_in'.tr,
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ],
      ),
    );
  }
}
