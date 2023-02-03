import 'package:flutter/material.dart';

class AmenitiesPainter extends CustomPainter {
  final Color? color;
  AmenitiesPainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5098148, size.height * 0.6823148);
    path_0.cubicTo(
        size.width * 0.5238889,
        size.height * 0.6724074,
        size.width * 0.5380556,
        size.height * 0.6625000,
        size.width * 0.5521296,
        size.height * 0.6525926);
    path_0.cubicTo(
        size.width * 0.5475926,
        size.height * 0.6517593,
        size.width * 0.5430556,
        size.height * 0.6510185,
        size.width * 0.5385185,
        size.height * 0.6501852);
    path_0.cubicTo(
        size.width * 0.5323148,
        size.height * 0.6177778,
        size.width * 0.5212963,
        size.height * 0.5854630,
        size.width * 0.5212037,
        size.height * 0.5530556);
    path_0.cubicTo(
        size.width * 0.5210185,
        size.height * 0.5104630,
        size.width * 0.5037037,
        size.height * 0.4954630,
        size.width * 0.4631481,
        size.height * 0.4951852);
    path_0.cubicTo(
        size.width * 0.3877778,
        size.height * 0.4947222,
        size.width * 0.3877778,
        size.height * 0.4936111,
        size.width * 0.3878704,
        size.height * 0.4183333);
    path_0.cubicTo(
        size.width * 0.3879630,
        size.height * 0.3354630,
        size.width * 0.3879630,
        size.height * 0.3354630,
        size.width * 0.4712037,
        size.height * 0.3353704);
    path_0.cubicTo(
        size.width * 0.5005556,
        size.height * 0.3353704,
        size.width * 0.5299074,
        size.height * 0.3342593,
        size.width * 0.5590741,
        size.height * 0.3356481);
    path_0.cubicTo(
        size.width * 0.6022222,
        size.height * 0.3377778,
        size.width * 0.6361111,
        size.height * 0.3550926,
        size.width * 0.6531481,
        size.height * 0.3979630);
    path_0.cubicTo(
        size.width * 0.6696296,
        size.height * 0.4393519,
        size.width * 0.6555556,
        size.height * 0.4719444,
        size.width * 0.6275926,
        size.height * 0.5032407);
    path_0.cubicTo(
        size.width * 0.6175926,
        size.height * 0.5143519,
        size.width * 0.6076852,
        size.height * 0.5333333,
        size.width * 0.6100926,
        size.height * 0.5463889);
    path_0.cubicTo(
        size.width * 0.6204630,
        size.height * 0.6005556,
        size.width * 0.5890741,
        size.height * 0.6362963,
        size.width * 0.5588889,
        size.height * 0.6718519);
    path_0.cubicTo(
        size.width * 0.5488889,
        size.height * 0.6836111,
        size.width * 0.5300926,
        size.height * 0.6877778,
        size.width * 0.5152778,
        size.height * 0.6953704);
    path_0.cubicTo(
        size.width * 0.5135185,
        size.height * 0.6911111,
        size.width * 0.5116667,
        size.height * 0.6867593,
        size.width * 0.5098148,
        size.height * 0.6823148);
    path_0.close();
    path_0.moveTo(size.width * 0.5675926, size.height * 0.3792593);
    path_0.cubicTo(
        size.width * 0.5491667,
        size.height * 0.4030556,
        size.width * 0.5312037,
        size.height * 0.4162037,
        size.width * 0.5318519,
        size.height * 0.4283333);
    path_0.cubicTo(
        size.width * 0.5325926,
        size.height * 0.4418519,
        size.width * 0.5503704,
        size.height * 0.4543519,
        size.width * 0.5606481,
        size.height * 0.4673148);
    path_0.cubicTo(
        size.width * 0.5738889,
        size.height * 0.4556481,
        size.width * 0.5937963,
        size.height * 0.4461111,
        size.width * 0.5982407,
        size.height * 0.4316667);
    path_0.cubicTo(
        size.width * 0.6013889,
        size.height * 0.4216667,
        size.width * 0.5836111,
        size.height * 0.4050000,
        size.width * 0.5675926,
        size.height * 0.3792593);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3741667, size.height * 0.4175926);
    path_1.cubicTo(
        size.width * 0.3741667,
        size.height * 0.4374074,
        size.width * 0.3759259,
        size.height * 0.4575000,
        size.width * 0.3731481,
        size.height * 0.4769444);
    path_1.cubicTo(
        size.width * 0.3722222,
        size.height * 0.4837037,
        size.width * 0.3607407,
        size.height * 0.4913889,
        size.width * 0.3525926,
        size.height * 0.4937037);
    path_1.cubicTo(
        size.width * 0.3490741,
        size.height * 0.4947222,
        size.width * 0.3375000,
        size.height * 0.4831481,
        size.width * 0.3373148,
        size.height * 0.4770370);
    path_1.cubicTo(
        size.width * 0.3359259,
        size.height * 0.4359259,
        size.width * 0.3359259,
        size.height * 0.3947222,
        size.width * 0.3373148,
        size.height * 0.3535185);
    path_1.cubicTo(
        size.width * 0.3375000,
        size.height * 0.3475000,
        size.width * 0.3488889,
        size.height * 0.3362963,
        size.width * 0.3526852,
        size.height * 0.3372222);
    path_1.cubicTo(
        size.width * 0.3606481,
        size.height * 0.3392593,
        size.width * 0.3723148,
        size.height * 0.3470370,
        size.width * 0.3730556,
        size.height * 0.3536111);
    path_1.cubicTo(
        size.width * 0.3757407,
        size.height * 0.3747222,
        size.width * 0.3741667,
        size.height * 0.3962963,
        size.width * 0.3741667,
        size.height * 0.4175926);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
