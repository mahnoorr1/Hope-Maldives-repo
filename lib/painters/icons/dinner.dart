import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class DinnerIconPainter extends CustomPainter {
  final Color? color;
  DinnerIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3500000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.3000000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.3000000, size.height * 0.1325000);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.1265000);
    path_0.close();
    path_0.moveTo(size.width * 0.3500000, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.3000000, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.3000000, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.2500000);
    path_0.close();
    path_0.moveTo(size.width * 0.2000000, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.2500000);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.2000000, size.height * 0.5000000);
    path_0.close();
    path_0.moveTo(size.width * 0.2000000, size.height * 0.1440000);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.1380000);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.2000000, size.height * 0.2000000);
    path_0.close();
    path_0.moveTo(size.width, size.height * 0.05000000);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.1500000, size.height * 0.1000000);
    path_0.lineTo(size.width * 0.1500000, size.height * 0.5000000);
    path_0.lineTo(0, size.height * 0.5000000);
    path_0.arcToPoint(Offset(size.width * 0.3000000, size.height * 0.9125000),
        radius:
            Radius.elliptical(size.width * 0.4515455, size.height * 0.4515455),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.3000000, size.height);
    path_0.lineTo(size.width * 0.7000000, size.height);
    path_0.lineTo(size.width * 0.7000000, size.height * 0.9125000);
    path_0.arcToPoint(Offset(size.width, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.4515455, size.height * 0.4515455),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.4000000, size.height * 0.5000000);
    path_0.lineTo(size.width * 0.4000000, size.height * 0.2500000);
    path_0.lineTo(size.width, size.height * 0.2500000);
    path_0.lineTo(size.width, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.4000000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.4000000, size.height * 0.1205000);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? Colors.black.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
