import 'package:flutter/widgets.dart';

class CustomImageVoucherClipPath extends CustomClipper<Path> {
  final double radius;
  CustomImageVoucherClipPath({this.radius = 10.0});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(radius, 0.0);
    path.arcToPoint(Offset(0.0, radius),
        clockwise: false, radius: Radius.circular(radius));
    path.lineTo(0.0, size.height - radius);
    path.arcToPoint(Offset(radius, size.height),
        clockwise: false, radius: Radius.circular(radius));
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(Offset(size.width, size.height - radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width, radius);
    path.arcToPoint(Offset(size.width - radius, 0.0),
        clockwise: true, radius: Radius.circular(radius));
    return path;
  }  
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomContentVoucherClipPath extends CustomClipper<Path> {
  final double radius;
  CustomContentVoucherClipPath({this.radius = 10.0});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(radius, 0.0);
    path.arcToPoint(Offset(0.0, radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(0.0, size.height - radius);
    path.arcToPoint(Offset(radius, size.height),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(Offset(size.width, size.height - radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width, radius);
    path.arcToPoint(Offset(size.width - radius, 0.0),
        clockwise: true, radius: Radius.circular(radius));
    return path;
  }  
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}