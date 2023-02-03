import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class TourIconPainter extends CustomPainter {
  final Color? color;

  TourIconPainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7493328, size.height * 0.9124152);
    path_0.lineTo(size.width * 0.1498565, size.height * 0.9124152);
    path_0.arcToPoint(Offset(0, size.height * 0.7820013),
        radius:
            Radius.elliptical(size.width * 0.1500579, size.height * 0.1305014),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(0, size.height * 0.1303263);
    path_0.arcToPoint(Offset(size.width * 0.1498565, 0),
        radius:
            Radius.elliptical(size.width * 0.1500076, size.height * 0.1304576),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.7493328, 0);
    path_0.arcToPoint(Offset(size.width * 0.8992396, size.height * 0.1303263),
        radius:
            Radius.elliptical(size.width * 0.1500579, size.height * 0.1305014),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8992396, size.height * 0.7820013);
    path_0.arcToPoint(Offset(size.width * 0.7493328, size.height * 0.9124152),
        radius:
            Radius.elliptical(size.width * 0.1501083, size.height * 0.1305452),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.75, size.height * 0.6517189);
    path_0.lineTo(size.width * 0.6, size.height * 0.6517189);
    path_0.close();
    path_0.moveTo(size.width * 0.75, size.height * 0.4561857);
    path_0.lineTo(size.width * 0.3747923, size.height * 0.4561857);
    path_0.close();
    path_0.moveTo(size.width * 0.75, size.height * 0.2606525);
    path_0.lineTo(size.width * 0.2249358, size.height * 0.2606525);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1;
    paint0Stroke.color = color ?? Colors.grey.withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
