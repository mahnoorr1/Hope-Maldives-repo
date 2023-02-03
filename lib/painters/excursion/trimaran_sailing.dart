import 'package:flutter/material.dart';

class TrimaranSailingPainter extends CustomPainter {
  final Color? color;
  TrimaranSailingPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5127778, size.height * 0.5638889);
    path_0.cubicTo(
        size.width * 0.5157407,
        size.height * 0.4874074,
        size.width * 0.5186111,
        size.height * 0.4122222,
        size.width * 0.5215741,
        size.height * 0.3374074);
    path_0.cubicTo(
        size.width * 0.5291667,
        size.height * 0.3344444,
        size.width * 0.5301852,
        size.height * 0.3379630,
        size.width * 0.5300000,
        size.height * 0.3437963);
    path_0.cubicTo(
        size.width * 0.5282407,
        size.height * 0.3873148,
        size.width * 0.5265741,
        size.height * 0.4308333,
        size.width * 0.5250000,
        size.height * 0.4743519);
    path_0.cubicTo(
        size.width * 0.5238889,
        size.height * 0.5041667,
        size.width * 0.5228704,
        size.height * 0.5339815,
        size.width * 0.5218519,
        size.height * 0.5646296);
    path_0.cubicTo(
        size.width * 0.5330556,
        size.height * 0.5656481,
        size.width * 0.5433333,
        size.height * 0.5667593,
        size.width * 0.5537037,
        size.height * 0.5675926);
    path_0.cubicTo(
        size.width * 0.5868519,
        size.height * 0.5701852,
        size.width * 0.6200926,
        size.height * 0.5728704,
        size.width * 0.6532407,
        size.height * 0.5752778);
    path_0.cubicTo(
        size.width * 0.6597222,
        size.height * 0.5757407,
        size.width * 0.6617593,
        size.height * 0.5776852,
        size.width * 0.6601852,
        size.height * 0.5846296);
    path_0.cubicTo(
        size.width * 0.6540741,
        size.height * 0.6127778,
        size.width * 0.6542593,
        size.height * 0.6127778,
        size.width * 0.6262037,
        size.height * 0.6127778);
    path_0.cubicTo(
        size.width * 0.5490741,
        size.height * 0.6127778,
        size.width * 0.4720370,
        size.height * 0.6125926,
        size.width * 0.3949074,
        size.height * 0.6129630);
    path_0.cubicTo(
        size.width * 0.3865741,
        size.height * 0.6129630,
        size.width * 0.3822222,
        size.height * 0.6101852,
        size.width * 0.3784259,
        size.height * 0.6029630);
    path_0.cubicTo(
        size.width * 0.3714815,
        size.height * 0.5894444,
        size.width * 0.3547222,
        size.height * 0.5569444,
        size.width * 0.3540741,
        size.height * 0.5537963);
    path_0.cubicTo(
        size.width * 0.3569444,
        size.height * 0.5533333,
        size.width * 0.4585185,
        size.height * 0.5600000,
        size.width * 0.5063889,
        size.height * 0.5637963);
    path_0.cubicTo(
        size.width * 0.5082407,
        size.height * 0.5639815,
        size.width * 0.5100000,
        size.height * 0.5638889,
        size.width * 0.5127778,
        size.height * 0.5638889);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5073148, size.height * 0.3887037);
    path_1.cubicTo(
        size.width * 0.5050926,
        size.height * 0.4421296,
        size.width * 0.5028704,
        size.height * 0.4955556,
        size.width * 0.5004630,
        size.height * 0.5512037);
    path_1.cubicTo(
        size.width * 0.4633333,
        size.height * 0.5480556,
        size.width * 0.4264815,
        size.height * 0.5448148,
        size.width * 0.3875000,
        size.height * 0.5414815);
    path_1.cubicTo(
        size.width * 0.4277778,
        size.height * 0.4891667,
        size.width * 0.4667593,
        size.height * 0.4385185,
        size.width * 0.5056481,
        size.height * 0.3878704);
    path_1.cubicTo(
        size.width * 0.5062037,
        size.height * 0.3881481,
        size.width * 0.5067593,
        size.height * 0.3884259,
        size.width * 0.5073148,
        size.height * 0.3887037);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4976852, size.height * 0.5982407);
    path_2.lineTo(size.width * 0.4977778, size.height * 0.5637963);
    path_2.lineTo(size.width * 0.4860185, size.height * 0.5637963);
    path_2.cubicTo(
        size.width * 0.4860185,
        size.height * 0.5777778,
        size.width * 0.4860185,
        size.height * 0.5732407,
        size.width * 0.4859259,
        size.height * 0.5872222);
    path_2.cubicTo(
        size.width * 0.4859259,
        size.height * 0.5907407,
        size.width * 0.4855556,
        size.height * 0.5941667,
        size.width * 0.4852778,
        size.height * 0.5978704);
    path_2.cubicTo(
        size.width * 0.4325926,
        size.height * 0.5960185,
        size.width * 0.3883333,
        size.height * 0.5902778,
        size.width * 0.3368519,
        size.height * 0.5885185);
    path_2.cubicTo(
        size.width * 0.3442593,
        size.height * 0.6118519,
        size.width * 0.3611111,
        size.height * 0.6375926,
        size.width * 0.3878704,
        size.height * 0.6380556);
    path_2.cubicTo(
        size.width * 0.4637037,
        size.height * 0.6392593,
        size.width * 0.6166667,
        size.height * 0.6488889,
        size.width * 0.6170370,
        size.height * 0.6483333);
    path_2.cubicTo(
        size.width * 0.6204630,
        size.height * 0.6434259,
        size.width * 0.6189815,
        size.height * 0.6224074,
        size.width * 0.6229630,
        size.height * 0.6167593);
    path_2.cubicTo(
        size.width * 0.6265741,
        size.height * 0.6117593,
        size.width * 0.5462963,
        size.height * 0.6000926,
        size.width * 0.4976852,
        size.height * 0.5982407);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6069444, size.height * 0.5484259);
    path_3.cubicTo(
        size.width * 0.5826852,
        size.height * 0.5465741,
        size.width * 0.5600000,
        size.height * 0.5448148,
        size.width * 0.5360185,
        size.height * 0.5430556);
    path_3.cubicTo(
        size.width * 0.5380556,
        size.height * 0.4962963,
        size.width * 0.5400000,
        size.height * 0.4497222,
        size.width * 0.5419444,
        size.height * 0.4032407);
    path_3.cubicTo(
        size.width * 0.5425000,
        size.height * 0.4031481,
        size.width * 0.5431481,
        size.height * 0.4029630,
        size.width * 0.5437037,
        size.height * 0.4028704);
    path_3.cubicTo(
        size.width * 0.5646296,
        size.height * 0.4507407,
        size.width * 0.5854630,
        size.height * 0.4987963,
        size.width * 0.6069444,
        size.height * 0.5484259);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5374074, size.height * 0.3485185);
    path_4.cubicTo(
        size.width * 0.5649074,
        size.height * 0.3440741,
        size.width * 0.5824074,
        size.height * 0.3675926,
        size.width * 0.6068519,
        size.height * 0.3695370);
    path_4.cubicTo(
        size.width * 0.5950000,
        size.height * 0.3745370,
        size.width * 0.5829630,
        size.height * 0.3746296,
        size.width * 0.5710185,
        size.height * 0.3707407);
    path_4.cubicTo(
        size.width * 0.5596296,
        size.height * 0.3670370,
        size.width * 0.5485185,
        size.height * 0.3634259,
        size.width * 0.5362963,
        size.height * 0.3725000);
    path_4.cubicTo(
        size.width * 0.5366667,
        size.height * 0.3630556,
        size.width * 0.5370370,
        size.height * 0.3558333,
        size.width * 0.5374074,
        size.height * 0.3485185);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.5772222, size.height * 0.5722222);
    path_5.cubicTo(
        size.width * 0.5766667,
        size.height * 0.5724074,
        size.width * 0.5761111,
        size.height * 0.5725926,
        size.width * 0.5755556,
        size.height * 0.5727778);
    path_5.cubicTo(
        size.width * 0.5757407,
        size.height * 0.5724074,
        size.width * 0.5759259,
        size.height * 0.5719444,
        size.width * 0.5762037,
        size.height * 0.5715741);
    path_5.cubicTo(
        size.width * 0.5765741,
        size.height * 0.5718519,
        size.width * 0.5769444,
        size.height * 0.5722222,
        size.width * 0.5773148,
        size.height * 0.5725000);
    path_5.cubicTo(
        size.width * 0.5773148,
        size.height * 0.5725000,
        size.width * 0.5772222,
        size.height * 0.5722222,
        size.width * 0.5772222,
        size.height * 0.5722222);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.5012963, size.height * 0.5836111);
    path_6.cubicTo(
        size.width * 0.5012963,
        size.height * 0.5836111,
        size.width * 0.4905556,
        size.height * 0.5658333,
        size.width * 0.4905556,
        size.height * 0.5758333);
    path_6.cubicTo(
        size.width * 0.4905556,
        size.height * 0.5783333,
        size.width * 0.4901852,
        size.height * 0.5808333,
        size.width * 0.4900000,
        size.height * 0.5834259);
    path_6.cubicTo(
        size.width * 0.4417593,
        size.height * 0.5821296,
        size.width * 0.4012037,
        size.height * 0.5780556,
        size.width * 0.3540741,
        size.height * 0.5767593);
    path_6.cubicTo(
        size.width * 0.3608333,
        size.height * 0.5934259,
        size.width * 0.3762963,
        size.height * 0.6116667,
        size.width * 0.4008333,
        size.height * 0.6120370);
    path_6.cubicTo(
        size.width * 0.4702778,
        size.height * 0.6128704,
        size.width * 0.6103704,
        size.height * 0.6197222,
        size.width * 0.6107407,
        size.height * 0.6193519);
    path_6.cubicTo(
        size.width * 0.6138889,
        size.height * 0.6159259,
        size.width * 0.6125926,
        size.height * 0.6008333,
        size.width * 0.6162037,
        size.height * 0.5968519);
    path_6.cubicTo(
        size.width * 0.6193519,
        size.height * 0.5932407,
        size.width * 0.5458333,
        size.height * 0.5849074,
        size.width * 0.5012963,
        size.height * 0.5836111);

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
