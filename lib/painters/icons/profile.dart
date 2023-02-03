import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class ProfileIconPainter extends CustomPainter {
  final Color? color;
  ProfileIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4, size.height * 0.1944534);
    path_0.arcToPoint(Offset(size.width * 0.7, size.height * 0.05694708),
        radius:
            Radius.elliptical(size.width * 0.2623524, size.height * 0.1944534),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4, size.height * 0.1944534),
        radius:
            Radius.elliptical(size.width * 0.2623524, size.height * 0.1944534),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.09;
    paint0Stroke.color = color ?? Colors.grey.withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6617528, size.height * 0.35);
    path_1.lineTo(size.width * 0.2128178, size.height * 0.35);
    path_1.arcToPoint(Offset(size.width * 0.1298645, size.height * 0.35),
        radius:
            Radius.elliptical(size.width * 0.2529827, size.height * 0.1875087),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.cubicTo(
        size.width * -0.1770254,
        size.height * 0.34,
        size.width * 0.1149353,
        size.height * 0.85,
        size.width * 0.4372540,
        size.height * 0.85);
    path_1.cubicTo(
      size.width * 0.8,
      size.height * 0.85,
      size.width * 1.0,
      size.height * 0.45,
      size.width * 0.85,
      size.height * 0.36,
    );
    path_1.arcToPoint(Offset(size.width * 0.7, size.height * 0.35),
        rotation: 0, largeArc: false, clockwise: false);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.09;
    paint1Stroke.color = color ?? Colors.grey.withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
