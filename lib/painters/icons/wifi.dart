import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class WifiIconPainter extends CustomPainter {
  final Color? color;
  WifiIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.49, size.height * 0.6525);
    path_0.arcToPoint(
      Offset(
        size.width * 0.47,
        size.height * 0.65,
      ),
      radius: Radius.elliptical(size.width * 0.15, size.height * 0.12),
      rotation: 0,
      largeArc: true,
      clockwise: true,
    );
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.085;
    paint0Stroke.color = color ?? Colors.black.withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7787692, size.height * 0.4556491);
    path_1.lineTo(size.width * 0.1441923, size.height * 0.4556491);
    path_1.arcToPoint(Offset(size.width * 0.7786154, size.height * 0.4556491),
        radius:
            Radius.elliptical(size.width * 0.5143462, size.height * 0.5925122),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.close();
    path_1.moveTo(size.width * 0.9230769, size.height * 0.1898095);
    path_1.lineTo(0, size.height * 0.1898095);
    path_1.arcToPoint(Offset(size.width * 0.4488077, 0),
        radius:
            Radius.elliptical(size.width * 0.7223077, size.height * 0.8320780),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.arcToPoint(Offset(size.width * 0.9230769, size.height * 0.1897209),
        radius:
            Radius.elliptical(size.width * 0.8368846, size.height * 0.9640673),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.078;
    paint1Stroke.color = color ?? Colors.black.withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
