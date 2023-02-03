import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class ACIconPainter extends CustomPainter {
  final Color? color;
  ACIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.5333200);
    path_0.lineTo(size.width * 0.1041500, size.height * 0.5333200);
    path_0.lineTo(size.width * 0.1041500, size.height * 0.2666800);
    path_0.lineTo(0, size.height * 0.2666800);
    path_0.close();
    path_0.moveTo(size.width * 0.1562500, size.height * 0.6222000);
    path_0.lineTo(size.width * 0.2604000, size.height * 0.6222000);
    path_0.lineTo(size.width * 0.2604000, size.height * 0.1777600);
    path_0.lineTo(size.width * 0.1562500, size.height * 0.1777600);
    path_0.close();
    path_0.moveTo(size.width * 1.145850, size.height * 0.2666800);
    path_0.lineTo(size.width * 1.145850, size.height * 0.5333600);
    path_0.lineTo(size.width * 1.250000, size.height * 0.5333600);
    path_0.lineTo(size.width * 1.250000, size.height * 0.2666800);
    path_0.close();
    path_0.moveTo(size.width * 0.9896000, size.height * 0.6222400);
    path_0.lineTo(size.width * 1.093750, size.height * 0.6222400);
    path_0.lineTo(size.width * 1.093750, size.height * 0.1777600);
    path_0.lineTo(size.width * 0.9896000, size.height * 0.1777600);
    path_0.close();
    path_0.moveTo(size.width * 0.8594000, 0);
    path_0.lineTo(size.width * 0.3906000, 0);
    path_0.arcToPoint(Offset(size.width * 0.3125000, size.height * 0.06668000),
        radius: Radius.elliptical(
            size.width * 0.08075000, size.height * 0.06460000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.3125000, size.height * 0.7333200);
    path_0.arcToPoint(Offset(size.width * 0.3906000, size.height * 0.8000000),
        radius: Radius.elliptical(
            size.width * 0.08075000, size.height * 0.06460000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8593500, size.height * 0.8000000);
    path_0.arcToPoint(Offset(size.width * 0.9375000, size.height * 0.7333200),
        radius: Radius.elliptical(
            size.width * 0.08075000, size.height * 0.06460000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.9375000, size.height * 0.06668000);
    path_0.arcToPoint(Offset(size.width * 0.8594000, 0),
        radius: Radius.elliptical(
            size.width * 0.08075000, size.height * 0.06460000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.8333500, size.height * 0.7111200);
    path_0.lineTo(size.width * 0.4166500, size.height * 0.7111200);
    path_0.lineTo(size.width * 0.4166500, size.height * 0.08888000);
    path_0.lineTo(size.width * 0.8333000, size.height * 0.08888000);
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
