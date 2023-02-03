import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class NotificationIconPainter extends CustomPainter {
  final Color? color;
  NotificationIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4573333, size.height * 0.9182339);
    path_0.lineTo(size.width * 0.4518182, size.height * 0.9182339);
    path_0.arcToPoint(Offset(size.width * 0.2447879, size.height * 0.7345871),
        radius:
            Radius.elliptical(size.width * 0.2078182, size.height * 0.1869174),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.6643030, size.height * 0.7345871);
    path_0.arcToPoint(Offset(size.width * 0.4573333, size.height * 0.9182339),
        radius:
            Radius.elliptical(size.width * 0.2078182, size.height * 0.1869174),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.2447273, size.height * 0.7345871);
    path_0.lineTo(size.width * 0.1515152, size.height * 0.7345871);
    path_0.arcToPoint(Offset(0, size.height * 0.5962388),
        radius:
            Radius.elliptical(size.width * 0.1530303, size.height * 0.1376397),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.03133333, size.height * 0.4926683),
        radius:
            Radius.elliptical(size.width * 0.3030303, size.height * 0.2725538),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.06109091, size.height * 0.4109022),
        radius:
            Radius.elliptical(size.width * 0.3956364, size.height * 0.3558463),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.06430303,
        size.height * 0.3920414,
        size.width * 0.06715152,
        size.height * 0.3727446,
        size.width * 0.06969697,
        size.height * 0.3558463);
    path_0.cubicTo(
        size.width * 0.07260606,
        size.height * 0.3360589,
        size.width * 0.07515152,
        size.height * 0.3190515,
        size.width * 0.07763636,
        size.height * 0.3067866);
    path_0.arcToPoint(Offset(size.width * 0.4545455, 0),
        radius:
            Radius.elliptical(size.width * 0.3964848, size.height * 0.3566094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8315152, size.height * 0.3066776),
        radius:
            Radius.elliptical(size.width * 0.3965455, size.height * 0.3566639),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.8338788,
        size.height * 0.3186699,
        size.width * 0.8363030,
        size.height * 0.3351867,
        size.width * 0.8391515,
        size.height * 0.3542655);
    path_0.cubicTo(
        size.width * 0.8417576,
        size.height * 0.3717634,
        size.width * 0.8446667,
        size.height * 0.3914418,
        size.width * 0.8480000,
        size.height * 0.4107386);
    path_0.arcToPoint(Offset(size.width * 0.8777576, size.height * 0.4925048),
        radius:
            Radius.elliptical(size.width * 0.3952121, size.height * 0.3554647),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.9090909, size.height * 0.5960752),
        radius:
            Radius.elliptical(size.width * 0.3025455, size.height * 0.2721177),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7575758, size.height * 0.7344781),
        radius:
            Radius.elliptical(size.width * 0.1528485, size.height * 0.1374762),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.6642424, size.height * 0.7344781);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05;
    paint0Stroke.color = color ?? Colors.black.withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
