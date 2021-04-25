import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

class EmptyWidget extends StatelessWidget {
  final String localImagePath;
  final String message;

  EmptyWidget({@required this.localImagePath, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 80, left: 80),
              child: Image.asset(
                localImagePath,
                height: 200,
                width: 200,
              ),
            ),
            Opacity(
              opacity: 0.4,
              child: Text(
                message.tr,
                style: Theme.of(context)
                    .textTheme
                    .display2
                    .merge(TextStyle(fontWeight: FontWeight.w300)),
                maxLines: null,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
