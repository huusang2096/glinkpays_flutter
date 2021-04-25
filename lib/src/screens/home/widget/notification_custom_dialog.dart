import 'dart:math';

import 'package:flutter/material.dart';

class NotificationCustomDialog extends StatefulWidget {
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final bool isCornerRounded;

  const NotificationCustomDialog({
    Key key,
    @required this.width,
    @required this.height,
    @required this.child,
    this.color = Colors.white,
    this.isCornerRounded = false,
  }) : super(key: key);

  @override
  _NotificationCustomDialogState createState() =>
      _NotificationCustomDialogState();
}

class _NotificationCustomDialogState extends State<NotificationCustomDialog> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DialogClipper(),
      child: Center(
        child: Container(
          width: widget.width,
          height: widget.height,
          child: widget.child,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }
}

class DialogClipper extends CustomClipper<Path> {
  double radius = 10, tw = 20, th = 10;
  @override
  Path getClip(Size size) {
    final double startMargin = size.height * 0.125;
    Path path = Path();

    path.moveTo(0.0, startMargin);
    path.lineTo(size.width * 0.8, startMargin);
    path.lineTo(size.width * 33 / 40, size.height * 0.1);
    path.lineTo(size.width * 34 / 40, startMargin);
    path.lineTo(size.width, startMargin);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
