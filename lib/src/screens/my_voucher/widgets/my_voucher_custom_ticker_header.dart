import 'package:flutter/material.dart';

class FlutterTicketHeaderWidget extends StatefulWidget {
  final double width;
  final double height;
  final Widget child;
  final Color color;
  final bool isCornerRounded;

  FlutterTicketHeaderWidget({
    @required this.width,
    @required this.height,
    @required this.child,
    this.color,
    this.isCornerRounded = true,
  });

  @override
  _FlutterTicketHeaderWidgetState createState() =>
      _FlutterTicketHeaderWidgetState();
}

class _FlutterTicketHeaderWidgetState extends State<FlutterTicketHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(),
      child: AnimatedContainer(
        duration: Duration(seconds: 3),
        width: widget.width,
        height: widget.height,
        child: widget.child,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.addOval(
      Rect.fromCircle(
        center: Offset(
          size.width,
          0.0,
        ),
        radius: 10.0,
      ),
    );
    path.addOval(
      Rect.fromCircle(
        center: Offset(
          size.width,
          size.height,
        ),
        radius: 10.0,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
