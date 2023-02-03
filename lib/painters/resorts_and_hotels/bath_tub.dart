import 'package:flutter/material.dart';

class BathTubPainter extends CustomPainter {
  final Color? color;
  BathTubPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2987037, size.height * 0.6954630);
    path_0.cubicTo(
        size.width * 0.3616667,
        size.height * 0.6460185,
        size.width * 0.3075000,
        size.height * 0.5901852,
        size.width * 0.3188889,
        size.height * 0.5349074);
    path_0.cubicTo(
        size.width * 0.4430556,
        size.height * 0.5349074,
        size.width * 0.5656481,
        size.height * 0.5349074,
        size.width * 0.6996296,
        size.height * 0.5349074);
    path_0.cubicTo(
        size.width * 0.6923148,
        size.height * 0.5666667,
        size.width * 0.6798148,
        size.height * 0.5952778,
        size.width * 0.6811111,
        size.height * 0.6232407);
    path_0.cubicTo(
        size.width * 0.6822222,
        size.height * 0.6475926,
        size.width * 0.6987963,
        size.height * 0.6712037,
        size.width * 0.7040741,
        size.height * 0.7028704);
    path_0.cubicTo(
        size.width * 0.6570370,
        size.height * 0.6387037,
        size.width * 0.5985185,
        size.height * 0.6828704,
        size.width * 0.5467593,
        size.height * 0.6775000);
    path_0.cubicTo(
        size.width * 0.4903704,
        size.height * 0.6716667,
        size.width * 0.4336111,
        size.height * 0.6664815,
        size.width * 0.3771296,
        size.height * 0.6678704);
    path_0.cubicTo(
        size.width * 0.3566667,
        size.height * 0.6683333,
        size.width * 0.3365741,
        size.height * 0.6885185,
        size.width * 0.3162963,
        size.height * 0.6997222);
    path_0.cubicTo(
        size.width * 0.3104630,
        size.height * 0.6983333,
        size.width * 0.3046296,
        size.height * 0.6969444,
        size.width * 0.2987037,
        size.height * 0.6954630);
    path_0.close();
    path_0.moveTo(size.width * 0.4394444, size.height * 0.6406481);
    path_0.cubicTo(
        size.width * 0.3887037,
        size.height * 0.6342593,
        size.width * 0.3626852,
        size.height * 0.6022222,
        size.width * 0.3503704,
        size.height * 0.5557407);
    path_0.cubicTo(
        size.width * 0.3352778,
        size.height * 0.6187963,
        size.width * 0.3812963,
        size.height * 0.6630556,
        size.width * 0.4394444,
        size.height * 0.6406481);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5065741, size.height * 0.5087963),
            width: size.width * 0.5801852,
            height: size.height * 0.01314815),
        paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4376852, size.height * 0.3975000);
    path_2.cubicTo(
        size.width * 0.4089815,
        size.height * 0.3995370,
        size.width * 0.3850000,
        size.height * 0.4012963,
        size.width * 0.3586111,
        size.height * 0.4031481);
    path_2.cubicTo(
        size.width * 0.3562963,
        size.height * 0.4273148,
        size.width * 0.3542593,
        size.height * 0.4490741,
        size.width * 0.3515741,
        size.height * 0.4767593);
    path_2.cubicTo(
        size.width * 0.3261111,
        size.height * 0.4235185,
        size.width * 0.3337963,
        size.height * 0.3668519,
        size.width * 0.3665741,
        size.height * 0.3540741);
    path_2.cubicTo(
        size.width * 0.4021296,
        size.height * 0.3400926,
        size.width * 0.4257407,
        size.height * 0.3539815,
        size.width * 0.4376852,
        size.height * 0.3975000);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
