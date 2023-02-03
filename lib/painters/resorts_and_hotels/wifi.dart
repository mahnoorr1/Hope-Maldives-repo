import 'package:flutter/material.dart';

class WifiPainter extends CustomPainter {
  final Color? color;
  WifiPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3124074, size.height * 0.4823148);
    path_0.cubicTo(
        size.width * 0.3030556,
        size.height * 0.4719444,
        size.width * 0.2938889,
        size.height * 0.4618519,
        size.width * 0.2846296,
        size.height * 0.4516667);
    path_0.cubicTo(
        size.width * 0.3800000,
        size.height * 0.3412037,
        size.width * 0.5962037,
        size.height * 0.3199074,
        size.width * 0.7210185,
        size.height * 0.4509259);
    path_0.cubicTo(
        size.width * 0.7119444,
        size.height * 0.4612963,
        size.width * 0.7028704,
        size.height * 0.4716667,
        size.width * 0.6934259,
        size.height * 0.4824074);
    path_0.cubicTo(
        size.width * 0.6397222,
        size.height * 0.4299074,
        size.width * 0.5762963,
        size.height * 0.4044444,
        size.width * 0.5027778,
        size.height * 0.4049074);
    path_0.cubicTo(
        size.width * 0.4294444,
        size.height * 0.4052778,
        size.width * 0.3658333,
        size.height * 0.4303704,
        size.width * 0.3124074,
        size.height * 0.4823148);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3747222, size.height * 0.5456481);
    path_1.cubicTo(
        size.width * 0.3646296,
        size.height * 0.5351852,
        size.width * 0.3550926,
        size.height * 0.5251852,
        size.width * 0.3455556,
        size.height * 0.5151852);
    path_1.cubicTo(
        size.width * 0.4176852,
        size.height * 0.4316667,
        size.width * 0.5741667,
        size.height * 0.4217593,
        size.width * 0.6593519,
        size.height * 0.5137037);
    path_1.cubicTo(
        size.width * 0.6491667,
        size.height * 0.5235185,
        size.width * 0.6390741,
        size.height * 0.5333333,
        size.width * 0.6286111,
        size.height * 0.5434259);
    path_1.cubicTo(
        size.width * 0.5937963,
        size.height * 0.5107407,
        size.width * 0.5516667,
        size.height * 0.4925000,
        size.width * 0.5023148,
        size.height * 0.4925926);
    path_1.cubicTo(
        size.width * 0.4526852,
        size.height * 0.4927778,
        size.width * 0.4108333,
        size.height * 0.5116667,
        size.width * 0.3747222,
        size.height * 0.5456481);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5965741, size.height * 0.5752778);
    path_2.cubicTo(
        size.width * 0.5875926,
        size.height * 0.5852778,
        size.width * 0.5787037,
        size.height * 0.5951852,
        size.width * 0.5697222,
        size.height * 0.6049074);
    path_2.cubicTo(
        size.width * 0.5690741,
        size.height * 0.6055556,
        size.width * 0.5665741,
        size.height * 0.6051852,
        size.width * 0.5654630,
        size.height * 0.6045370);
    path_2.cubicTo(
        size.width * 0.5620370,
        size.height * 0.6025926,
        size.width * 0.5589815,
        size.height * 0.6000926,
        size.width * 0.5556481,
        size.height * 0.5979630);
    path_2.cubicTo(
        size.width * 0.5190741,
        size.height * 0.5737963,
        size.width * 0.4807407,
        size.height * 0.5746296,
        size.width * 0.4451852,
        size.height * 0.6004630);
    path_2.cubicTo(
        size.width * 0.4423148,
        size.height * 0.6025926,
        size.width * 0.4395370,
        size.height * 0.6047222,
        size.width * 0.4364815,
        size.height * 0.6070370);
    path_2.cubicTo(
        size.width * 0.4263889,
        size.height * 0.5975926,
        size.width * 0.4163889,
        size.height * 0.5883333,
        size.width * 0.4064815,
        size.height * 0.5789815);
    path_2.cubicTo(
        size.width * 0.4467593,
        size.height * 0.5243519,
        size.width * 0.5534259,
        size.height * 0.5230556,
        size.width * 0.5965741,
        size.height * 0.5752778);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4679630, size.height * 0.6730556);
    path_3.cubicTo(
        size.width * 0.4684259,
        size.height * 0.6532407,
        size.width * 0.4842593,
        size.height * 0.6380556,
        size.width * 0.5038889,
        size.height * 0.6385185);
    path_3.cubicTo(
        size.width * 0.5232407,
        size.height * 0.6389815,
        size.width * 0.5386111,
        size.height * 0.6551852,
        size.width * 0.5381481,
        size.height * 0.6749074);
    path_3.cubicTo(
        size.width * 0.5377778,
        size.height * 0.6941667,
        size.width * 0.5210185,
        size.height * 0.7099074,
        size.width * 0.5017593,
        size.height * 0.7092593);
    path_3.cubicTo(
        size.width * 0.4826852,
        size.height * 0.7087037,
        size.width * 0.4675000,
        size.height * 0.6924074,
        size.width * 0.4679630,
        size.height * 0.6730556);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
