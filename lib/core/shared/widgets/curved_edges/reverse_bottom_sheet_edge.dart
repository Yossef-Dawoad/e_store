import 'package:flutter/material.dart';

class ReserseBottomSheetEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    // first curve (the left one)
    final lcurve1 = Offset(0, size.height - 20);
    final lcurve2 = Offset(30, size.height - 20);
    path.quadraticBezierTo(lcurve1.dx, lcurve1.dy, lcurve2.dx, lcurve2.dy);
    // straight line to the second curve
    path.lineTo(size.width - 20, size.height - 20);
    // second curve (the right one)
    final rcurve1 = Offset(size.width, size.height - 20);
    final rcurve2 = Offset(size.width, size.height);
    path.quadraticBezierTo(rcurve1.dx, rcurve1.dy, rcurve2.dx, rcurve2.dy);
    // straight line to the top
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
