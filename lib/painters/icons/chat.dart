import 'package:flutter/material.dart';

class ChatIconPainter extends CustomPainter {
  final Color? color;
  ChatIconPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4876367, size.height * 0.9738589);
    path_0.lineTo(size.width * 0.03748399, size.height * 0.9738589);
    path_0.arcToPoint(Offset(0, size.height * 0.9363727),
        radius: Radius.elliptical(
            size.width * 0.03649887, size.height * 0.03874105),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.006551079, size.height * 0.9154598),
        radius: Radius.elliptical(
            size.width * 0.03364201, size.height * 0.03570868),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.02714018,
        size.height * 0.8846657,
        size.width * 0.04034085,
        size.height * 0.8647462,
        size.width * 0.04984731,
        size.height * 0.8485387);
    path_0.arcToPoint(Offset(size.width * 0.06575707, size.height * 0.8137711),
        radius:
            Radius.elliptical(size.width * 0.1196434, size.height * 0.1269933),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.06693922,
        size.height * 0.8085429,
        size.width * 0.06743178,
        size.height * 0.8060856,
        size.width * 0.06772732,
        size.height * 0.8039944);
    path_0.cubicTo(
        size.width * 0.06802285,
        size.height * 0.8019031,
        size.width * 0.06821988,
        size.height * 0.7997072,
        size.width * 0.06851542,
        size.height * 0.7941130);
    path_0.arcToPoint(Offset(size.width * 0.05945227, size.height * 0.7459089),
        radius:
            Radius.elliptical(size.width * 0.1678160, size.height * 0.1781252),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.cubicTo(
        size.width * 0.05235937,
        size.height * 0.7197679,
        size.width * 0.04186780,
        size.height * 0.6870915,
        size.width * 0.02536696,
        size.height * 0.6355937);
    path_0.arcToPoint(Offset(0, size.height * 0.4869033),
        radius:
            Radius.elliptical(size.width * 0.4376416, size.height * 0.4645266),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(0, size.height * 0.2184347, size.width * 0.2187469, 0,
        size.width * 0.4876367, 0);
    path_0.cubicTo(
        size.width * 0.7565265,
        0,
        size.width * 0.9752734,
        size.height * 0.2184347,
        size.width * 0.9752734,
        size.height * 0.4869033);
    path_0.cubicTo(
        size.width * 0.9752734,
        size.height * 0.7553720,
        size.width * 0.7565757,
        size.height * 0.9738589,
        size.width * 0.4876367,
        size.height * 0.9738589);
    path_0.close();
    path_0.moveTo(size.width * 0.4876367, size.height * 0.07492027);
    path_0.arcToPoint(Offset(size.width * 0.07501724, size.height * 0.4869033),
        radius:
            Radius.elliptical(size.width * 0.4013890, size.height * 0.4260469),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.09678849, size.height * 0.6123804),
        radius:
            Radius.elliptical(size.width * 0.3715890, size.height * 0.3944163),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.09708403, size.height * 0.6132692);
    path_0.cubicTo(
        size.width * 0.1121072,
        size.height * 0.6603231,
        size.width * 0.1240272,
        size.height * 0.6974434,
        size.width * 0.1315634,
        size.height * 0.7256757);
    path_0.arcToPoint(Offset(size.width * 0.1432371, size.height * 0.7974068),
        radius:
            Radius.elliptical(size.width * 0.2194365, size.height * 0.2329168),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1386563, size.height * 0.8302400),
        radius:
            Radius.elliptical(size.width * 0.1358487, size.height * 0.1441941),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1143730, size.height * 0.8859204),
        radius:
            Radius.elliptical(size.width * 0.1808689, size.height * 0.1919799),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.1115161,
        size.height * 0.8907304,
        size.width * 0.1090533,
        size.height * 0.8948084,
        size.width * 0.1066397,
        size.height * 0.8986773);
    path_0.lineTo(size.width * 0.4876367, size.height * 0.8986773);
    path_0.arcToPoint(Offset(size.width * 0.9003054, size.height * 0.4866419),
        radius:
            Radius.elliptical(size.width * 0.4014383, size.height * 0.4260992),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4876367, size.height * 0.07492027),
        radius:
            Radius.elliptical(size.width * 0.4014383, size.height * 0.4260992),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.6877155, size.height * 0.5368327);
    path_0.arcToPoint(Offset(size.width * 0.7377106, size.height * 0.4869033),
        radius: Radius.elliptical(
            size.width * 0.04713821, size.height * 0.05003398),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6877648, size.height * 0.5368327),
        radius: Radius.elliptical(
            size.width * 0.04866516, size.height * 0.05165473),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.4876367, size.height * 0.5368327);
    path_0.arcToPoint(Offset(size.width * 0.5376318, size.height * 0.4869033),
        radius: Radius.elliptical(
            size.width * 0.04713821, size.height * 0.05003398),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4876367, size.height * 0.5368327),
        radius: Radius.elliptical(
            size.width * 0.04866516, size.height * 0.05165473),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.2875579, size.height * 0.5368327);
    path_0.arcToPoint(Offset(size.width * 0.3375530, size.height * 0.4869033),
        radius: Radius.elliptical(
            size.width * 0.04713821, size.height * 0.05003398),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2876071, size.height * 0.5368327),
        radius: Radius.elliptical(
            size.width * 0.04866516, size.height * 0.05165473),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01;
    paint0Stroke.color = color ?? Colors.grey.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? Colors.grey.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
