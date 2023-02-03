import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class BeachIconPainter extends CustomPainter {
  final Color? color;
  BeachIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2617857, size.height * 0.1958915);
    path_0.lineTo(size.width * 0.1800000, size.height * 0.1141860);
    path_0.lineTo(size.width * 0.1157143, size.height * 0.1786047);
    path_0.lineTo(size.width * 0.1972857, size.height * 0.2603101);
    path_0.close();
    path_0.moveTo(size.width * 0.1363571, size.height * 0.4543411);
    path_0.lineTo(0, size.height * 0.4543411);
    path_0.lineTo(0, size.height * 0.5456589);
    path_0.lineTo(size.width * 0.1363571, size.height * 0.5456589);
    path_0.close();
    path_0.moveTo(size.width * 0.5454286, 0);
    path_0.lineTo(size.width * 0.4545714, 0);
    path_0.lineTo(size.width * 0.4545714, size.height * 0.1347287);
    path_0.lineTo(size.width * 0.5454286, size.height * 0.1347287);
    path_0.close();
    path_0.moveTo(size.width * 0.8840714, size.height * 0.1782946);
    path_0.lineTo(size.width * 0.8197857, size.height * 0.1138760);
    path_0.lineTo(size.width * 0.7386429, size.height * 0.1958915);
    path_0.lineTo(size.width * 0.8029286, size.height * 0.2603101);
    path_0.close();
    path_0.moveTo(size.width * 0.7381429, size.height * 0.8038760);
    path_0.lineTo(size.width * 0.8195000, size.height * 0.8860465);
    path_0.lineTo(size.width * 0.8837857, size.height * 0.8216279);
    path_0.lineTo(size.width * 0.8017857, size.height * 0.7401550);
    path_0.close();
    path_0.moveTo(size.width * 0.8635714, size.height * 0.4541085);
    path_0.lineTo(size.width * 0.8635714, size.height * 0.5456589);
    path_0.lineTo(size.width, size.height * 0.5456589);
    path_0.lineTo(size.width, size.height * 0.4543411);
    path_0.close();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.2260465);
    path_0.arcToPoint(Offset(size.width * 0.2272857, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.2633571, size.height * 0.2858140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.7739535),
        radius:
            Radius.elliptical(size.width * 0.2633571, size.height * 0.2858140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7727143, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.2633571, size.height * 0.2858140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.2260465),
        radius:
            Radius.elliptical(size.width * 0.2633571, size.height * 0.2858140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.4545714, size.height);
    path_0.lineTo(size.width * 0.5454286, size.height);
    path_0.lineTo(size.width * 0.5454286, size.height * 0.8652713);
    path_0.lineTo(size.width * 0.4545714, size.height * 0.8652713);
    path_0.close();
    path_0.moveTo(size.width * 0.1159286, size.height * 0.8217054);
    path_0.lineTo(size.width * 0.1802143, size.height * 0.8861240);
    path_0.lineTo(size.width * 0.2615714, size.height * 0.8039535);
    path_0.lineTo(size.width * 0.1972857, size.height * 0.7395349);
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
