import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class HomeIconPainter extends CustomPainter {
  final Color? color;

  HomeIconPainter({this.color});
  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.325, size.height * 0.5);
    path_0.arcToPoint(Offset(size.width * 0.5, size.height * 0.6),
        radius:
            Radius.elliptical(size.width * 0.1301820, size.height * 0.1297902),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.325, size.height * 0.5),
        radius:
            Radius.elliptical(size.width * 0.1301820, size.height * 0.1297902),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.08877053;
    paint0Stroke.color = color ?? Colors.grey;
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1384376, size.height * 0.1345252);
    path_1.lineTo(size.width * 0.3162450, size.height * 0.03593238);
    path_1.arcToPoint(Offset(size.width * 0.5950289, size.height * 0.03593238),
        radius:
            Radius.elliptical(size.width * 0.2877053, size.height * 0.2868395),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(size.width * 0.7728362, size.height * 0.1345252);
    path_1.arcToPoint(Offset(size.width * 0.9112295, size.height * 0.3657403),
        radius:
            Radius.elliptical(size.width * 0.2659565, size.height * 0.2651562),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(size.width * 0.9112295, size.height * 0.6372245);
    path_1.arcToPoint(Offset(size.width * 0.6308478, size.height * 0.9086202),
        radius:
            Radius.elliptical(size.width * 0.2763427, size.height * 0.2755111),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(size.width * 0.2802042, size.height * 0.9086202);
    path_1.arcToPoint(Offset(0, size.height * 0.6372245),
        radius:
            Radius.elliptical(size.width * 0.2763427, size.height * 0.2755111),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(0, size.height * 0.3657403);
    path_1.arcToPoint(Offset(size.width * 0.1384376, size.height * 0.1345252),
        radius:
            Radius.elliptical(size.width * 0.2659565, size.height * 0.2651562),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.08877053;
    paint1Stroke.color = color ?? Colors.grey;
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
