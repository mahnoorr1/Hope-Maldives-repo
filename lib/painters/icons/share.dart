import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class ShareIconPainer extends CustomPainter {
  final Color? color;
  ShareIconPainer({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8170625, size.height);
    path_0.arcToPoint(Offset(size.width * 0.6378125, size.height * 0.8604706),
        radius:
            Radius.elliptical(size.width * 0.1840000, size.height * 0.1731765),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3780625, size.height * 0.8604706);
    path_0.arcToPoint(Offset(size.width * 0.2256875, size.height * 0.8058824),
        radius:
            Radius.elliptical(size.width * 0.2298125, size.height * 0.2162941),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1487500, size.height * 0.6714118),
        radius:
            Radius.elliptical(size.width * 0.2355000, size.height * 0.2216471),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1487500, size.height * 0.3286471),
        radius:
            Radius.elliptical(size.width * 0.1858750, size.height * 0.1749412),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2256875, size.height * 0.1941176),
        radius:
            Radius.elliptical(size.width * 0.2355625, size.height * 0.2217059),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3780000, size.height * 0.1396471),
        radius:
            Radius.elliptical(size.width * 0.2298125, size.height * 0.2162941),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.6377500, size.height * 0.1396471);
    path_0.arcToPoint(Offset(size.width * 1.000250, size.height * 0.1745294),
        radius:
            Radius.elliptical(size.width * 0.1827500, size.height * 0.1720000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6377500, size.height * 0.2093529),
        radius:
            Radius.elliptical(size.width * 0.1827500, size.height * 0.1720000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3780625, size.height * 0.2093529);
    path_0.arcToPoint(Offset(size.width * 0.2228125, size.height * 0.3297059),
        radius:
            Radius.elliptical(size.width * 0.1595000, size.height * 0.1501176),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.2228125, size.height * 0.6702941),
        radius:
            Radius.elliptical(size.width * 0.1859375, size.height * 0.1750000),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3780625, size.height * 0.7907059),
        radius:
            Radius.elliptical(size.width * 0.1595000, size.height * 0.1501176),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.6378125, size.height * 0.7907059);
    path_0.arcToPoint(Offset(size.width * 0.8170625, size.height),
        radius:
            Radius.elliptical(size.width * 0.1832500, size.height * 0.1724706),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.8170625, size.height * 0.7209412);
    path_0.arcToPoint(Offset(size.width * 0.9268125, size.height * 0.8255294),
        radius:
            Radius.elliptical(size.width * 0.1111875, size.height * 0.1046471),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8170625, size.height * 0.7209412),
        radius:
            Radius.elliptical(size.width * 0.1105625, size.height * 0.1040588),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.1829375, size.height * 0.3953529);
    path_0.arcToPoint(Offset(size.width * 0.2926875, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.1111875, size.height * 0.1046471),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1829375, size.height * 0.3953529),
        radius:
            Radius.elliptical(size.width * 0.1105625, size.height * 0.1040588),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.8170625, size.height * 0.06976471);
    path_0.arcToPoint(Offset(size.width * 0.9268125, size.height * 0.1744118),
        radius:
            Radius.elliptical(size.width * 0.1111875, size.height * 0.1046471),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8170625, size.height * 0.06976471),
        radius:
            Radius.elliptical(size.width * 0.1106250, size.height * 0.1041176),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xff22282f).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
