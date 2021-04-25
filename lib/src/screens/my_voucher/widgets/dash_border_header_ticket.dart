import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vipay/src/common/config.dart';
import 'dart:math';

class DashBorderHeaderTicket extends StatefulWidget {
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final bool isCornerRounded;

  DashBorderHeaderTicket({
    @required this.width,
    @required this.height,
    @required this.child,
    this.color,
    this.isCornerRounded = false,
  });
  @override
  _DashBorderHeaderTicketState createState() => _DashBorderHeaderTicketState();
}

class _DashBorderHeaderTicketState extends State<DashBorderHeaderTicket> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: AnimatedContainer(
        duration: Duration(seconds: 3),
        width: widget.width,
        height: widget.height,
        child: DottedBorder(
          customPath: (size) => TicketClipper().getClip(size),
          dashPattern: [6, 4], // [8,4]
          strokeWidth: 2,
          color: whiteColor,
          child: widget.child,
          radius: Radius.circular(30.0),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  final _radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0.0, 0.0);
    path.lineTo(size.width - _radius, 0.0);
    path.arcTo(Rect.fromCircle(center: Offset(size.width, 0), radius: _radius),
        pi, -pi / 2, false);
    path.lineTo(size.width, size.height - _radius);
    path.arcTo(
        Rect.fromCircle(
            center: Offset(size.width, size.height), radius: _radius),
        -pi / 2,
        -pi / 2,
        false);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
