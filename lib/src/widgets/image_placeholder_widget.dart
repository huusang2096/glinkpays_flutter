import 'package:flutter/material.dart';
import 'package:simplest/simplest.dart';

class ImagePlacholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SpinKitFadingCircle(
        color: Colors.grey,
      ),
    );
  }
}
