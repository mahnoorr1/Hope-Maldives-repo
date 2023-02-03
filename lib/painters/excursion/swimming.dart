import 'package:flutter/material.dart';

class SwimmingPainter extends CustomPainter {
  final Color? color;
  SwimmingPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5252778, size.height * 0.4942593);
    path_0.cubicTo(
        size.width * 0.5279630,
        size.height * 0.5125000,
        size.width * 0.5384259,
        size.height * 0.5251852,
        size.width * 0.5511111,
        size.height * 0.5370370);
    path_0.cubicTo(
        size.width * 0.5101852,
        size.height * 0.5316667,
        size.width * 0.4715741,
        size.height * 0.5174074,
        size.width * 0.4265741,
        size.height * 0.5184259);
    path_0.cubicTo(
        size.width * 0.4427778,
        size.height * 0.5025000,
        size.width * 0.4571296,
        size.height * 0.4898148,
        size.width * 0.4737963,
        size.height * 0.4804630);
    path_0.cubicTo(
        size.width * 0.4844444,
        size.height * 0.4745370,
        size.width * 0.4894444,
        size.height * 0.4662037,
        size.width * 0.4924074,
        size.height * 0.4554630);
    path_0.cubicTo(
        size.width * 0.4942593,
        size.height * 0.4488889,
        size.width * 0.4964815,
        size.height * 0.4423148,
        size.width * 0.4987037,
        size.height * 0.4358333);
    path_0.cubicTo(
        size.width * 0.5107407,
        size.height * 0.4000926,
        size.width * 0.5379630,
        size.height * 0.3836111,
        size.width * 0.5750926,
        size.height * 0.3901852);
    path_0.cubicTo(
        size.width * 0.5902778,
        size.height * 0.3928704,
        size.width * 0.6046296,
        size.height * 0.3985185,
        size.width * 0.6178704,
        size.height * 0.4066667);
    path_0.cubicTo(
        size.width * 0.6221296,
        size.height * 0.4092593,
        size.width * 0.6259259,
        size.height * 0.4123148,
        size.width * 0.6282407,
        size.height * 0.4167593);
    path_0.cubicTo(
        size.width * 0.6315741,
        size.height * 0.4230556,
        size.width * 0.6339815,
        size.height * 0.4300926,
        size.width * 0.6287963,
        size.height * 0.4362037);
    path_0.cubicTo(
        size.width * 0.6235185,
        size.height * 0.4424074,
        size.width * 0.6175926,
        size.height * 0.4375926,
        size.width * 0.6123148,
        size.height * 0.4351852);
    path_0.cubicTo(
        size.width * 0.6024074,
        size.height * 0.4305556,
        size.width * 0.5925926,
        size.height * 0.4256481,
        size.width * 0.5816667,
        size.height * 0.4239815);
    path_0.cubicTo(
        size.width * 0.5603704,
        size.height * 0.4207407,
        size.width * 0.5501852,
        size.height * 0.4267593,
        size.width * 0.5423148,
        size.height * 0.4474074);
    path_0.cubicTo(
        size.width * 0.5435185,
        size.height * 0.4475000,
        size.width * 0.5449074,
        size.height * 0.4481481,
        size.width * 0.5456481,
        size.height * 0.4476852);
    path_0.cubicTo(
        size.width * 0.5685185,
        size.height * 0.4342593,
        size.width * 0.5994444,
        size.height * 0.4486111,
        size.width * 0.6001852,
        size.height * 0.4841667);
    path_0.cubicTo(
        size.width * 0.6001852,
        size.height * 0.4845370,
        size.width * 0.6001852,
        size.height * 0.4850000,
        size.width * 0.6001852,
        size.height * 0.4853704);
    path_0.cubicTo(
        size.width * 0.6001852,
        size.height * 0.5075000,
        size.width * 0.5877778,
        size.height * 0.5272222,
        size.width * 0.5720370,
        size.height * 0.5304630);
    path_0.cubicTo(
        size.width * 0.5574074,
        size.height * 0.5335185,
        size.width * 0.5401852,
        size.height * 0.5208333,
        size.width * 0.5309259,
        size.height * 0.5005556);
    path_0.cubicTo(
        size.width * 0.5298148,
        size.height * 0.4985185,
        size.width * 0.5300926,
        size.height * 0.4954630,
        size.width * 0.5252778,
        size.height * 0.4942593);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7291667, size.height * 0.5584259);
    path_1.cubicTo(
        size.width * 0.6914815,
        size.height * 0.5992593,
        size.width * 0.6435185,
        size.height * 0.6137037,
        size.width * 0.5896296,
        size.height * 0.6132407);
    path_1.cubicTo(
        size.width * 0.5486111,
        size.height * 0.6128704,
        size.width * 0.5095370,
        size.height * 0.6012963,
        size.width * 0.4697222,
        size.height * 0.5933333);
    path_1.cubicTo(
        size.width * 0.4233333,
        size.height * 0.5840741,
        size.width * 0.3768519,
        size.height * 0.5757407,
        size.width * 0.3293519,
        size.height * 0.5861111);
    path_1.cubicTo(
        size.width * 0.3161111,
        size.height * 0.5889815,
        size.width * 0.3037963,
        size.height * 0.5946296,
        size.width * 0.2910185,
        size.height * 0.5990741);
    path_1.cubicTo(
        size.width * 0.3204630,
        size.height * 0.5670370,
        size.width * 0.3574074,
        size.height * 0.5509259,
        size.width * 0.4000000,
        size.height * 0.5464815);
    path_1.cubicTo(
        size.width * 0.4492593,
        size.height * 0.5412963,
        size.width * 0.4963889,
        size.height * 0.5533333,
        size.width * 0.5437963,
        size.height * 0.5637037);
    path_1.cubicTo(
        size.width * 0.5896296,
        size.height * 0.5737037,
        size.width * 0.6357407,
        size.height * 0.5814815,
        size.width * 0.6829630,
        size.height * 0.5735185);
    path_1.cubicTo(
        size.width * 0.6991667,
        size.height * 0.5708333,
        size.width * 0.7140741,
        size.height * 0.5648148,
        size.width * 0.7291667,
        size.height * 0.5584259);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
