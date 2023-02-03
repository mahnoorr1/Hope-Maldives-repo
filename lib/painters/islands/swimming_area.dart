import 'package:flutter/material.dart';

class SwimmingAreaPainter extends CustomPainter {
  final Color? color;
  SwimmingAreaPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5191667, size.height * 0.4496296);
    path_0.cubicTo(
        size.width * 0.5220370,
        size.height * 0.4695370,
        size.width * 0.5335185,
        size.height * 0.4833333,
        size.width * 0.5474074,
        size.height * 0.4962963);
    path_0.cubicTo(
        size.width * 0.5027778,
        size.height * 0.4904630,
        size.width * 0.4605556,
        size.height * 0.4749074,
        size.width * 0.4114815,
        size.height * 0.4759259);
    path_0.cubicTo(
        size.width * 0.4291667,
        size.height * 0.4585185,
        size.width * 0.4448148,
        size.height * 0.4446296,
        size.width * 0.4629630,
        size.height * 0.4344444);
    path_0.cubicTo(
        size.width * 0.4745370,
        size.height * 0.4279630,
        size.width * 0.4800000,
        size.height * 0.4188889,
        size.width * 0.4832407,
        size.height * 0.4071296);
    path_0.cubicTo(
        size.width * 0.4852778,
        size.height * 0.3999074,
        size.width * 0.4876852,
        size.height * 0.3927778,
        size.width * 0.4900926,
        size.height * 0.3856481);
    path_0.cubicTo(
        size.width * 0.5032407,
        size.height * 0.3466667,
        size.width * 0.5329630,
        size.height * 0.3286111,
        size.width * 0.5735185,
        size.height * 0.3357407);
    path_0.cubicTo(
        size.width * 0.5901852,
        size.height * 0.3387037,
        size.width * 0.6057407,
        size.height * 0.3449074,
        size.width * 0.6202778,
        size.height * 0.3537963);
    path_0.cubicTo(
        size.width * 0.6249074,
        size.height * 0.3565741,
        size.width * 0.6290741,
        size.height * 0.3600000,
        size.width * 0.6315741,
        size.height * 0.3648148);
    path_0.cubicTo(
        size.width * 0.6351852,
        size.height * 0.3716667,
        size.width * 0.6377778,
        size.height * 0.3793519,
        size.width * 0.6321296,
        size.height * 0.3860185);
    path_0.cubicTo(
        size.width * 0.6263889,
        size.height * 0.3927778,
        size.width * 0.6199074,
        size.height * 0.3875926,
        size.width * 0.6141667,
        size.height * 0.3849074);
    path_0.cubicTo(
        size.width * 0.6033333,
        size.height * 0.3798148,
        size.width * 0.5926852,
        size.height * 0.3745370,
        size.width * 0.5807407,
        size.height * 0.3726852);
    path_0.cubicTo(
        size.width * 0.5575000,
        size.height * 0.3691667,
        size.width * 0.5463889,
        size.height * 0.3757407,
        size.width * 0.5377778,
        size.height * 0.3983333);
    path_0.cubicTo(
        size.width * 0.5390741,
        size.height * 0.3984259,
        size.width * 0.5405556,
        size.height * 0.3991667,
        size.width * 0.5413889,
        size.height * 0.3987037);
    path_0.cubicTo(
        size.width * 0.5663889,
        size.height * 0.3840741,
        size.width * 0.6000926,
        size.height * 0.3997222,
        size.width * 0.6009259,
        size.height * 0.4386111);
    path_0.cubicTo(
        size.width * 0.6009259,
        size.height * 0.4390741,
        size.width * 0.6009259,
        size.height * 0.4395370,
        size.width * 0.6009259,
        size.height * 0.4399074);
    path_0.cubicTo(
        size.width * 0.6008333,
        size.height * 0.4640741,
        size.width * 0.5874074,
        size.height * 0.4855556,
        size.width * 0.5701852,
        size.height * 0.4891667);
    path_0.cubicTo(
        size.width * 0.5541667,
        size.height * 0.4925000,
        size.width * 0.5354630,
        size.height * 0.4787037,
        size.width * 0.5252778,
        size.height * 0.4564815);
    path_0.cubicTo(
        size.width * 0.5241667,
        size.height * 0.4542593,
        size.width * 0.5243519,
        size.height * 0.4509259,
        size.width * 0.5191667,
        size.height * 0.4496296);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6737963, size.height * 0.5137037);
    path_1.cubicTo(
        size.width * 0.6397222,
        size.height * 0.5506481,
        size.width * 0.5963889,
        size.height * 0.5637037,
        size.width * 0.5475926,
        size.height * 0.5632407);
    path_1.cubicTo(
        size.width * 0.5104630,
        size.height * 0.5628704,
        size.width * 0.4751852,
        size.height * 0.5524074,
        size.width * 0.4391667,
        size.height * 0.5452778);
    path_1.cubicTo(
        size.width * 0.3972222,
        size.height * 0.5369444,
        size.width * 0.3551852,
        size.height * 0.5293519,
        size.width * 0.3122222,
        size.height * 0.5387963);
    path_1.cubicTo(
        size.width * 0.3001852,
        size.height * 0.5413889,
        size.width * 0.2891667,
        size.height * 0.5464815,
        size.width * 0.2775926,
        size.height * 0.5504630);
    path_1.cubicTo(
        size.width * 0.3041667,
        size.height * 0.5214815,
        size.width * 0.3375926,
        size.height * 0.5069444,
        size.width * 0.3761111,
        size.height * 0.5028704);
    path_1.cubicTo(
        size.width * 0.4206481,
        size.height * 0.4982407,
        size.width * 0.4632407,
        size.height * 0.5090741,
        size.width * 0.5062037,
        size.height * 0.5184259);
    path_1.cubicTo(
        size.width * 0.5475926,
        size.height * 0.5275000,
        size.width * 0.5893519,
        size.height * 0.5345370,
        size.width * 0.6320370,
        size.height * 0.5273148);
    path_1.cubicTo(
        size.width * 0.6466667,
        size.height * 0.5250000,
        size.width * 0.6601852,
        size.height * 0.5195370,
        size.width * 0.6737963,
        size.height * 0.5137037);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6104630, size.height * 0.5967593);
    path_2.cubicTo(
        size.width * 0.5873148,
        size.height * 0.6218519,
        size.width * 0.5577778,
        size.height * 0.6307407,
        size.width * 0.5246296,
        size.height * 0.6304630);
    path_2.cubicTo(
        size.width * 0.4993519,
        size.height * 0.6301852,
        size.width * 0.4753704,
        size.height * 0.6231481,
        size.width * 0.4509259,
        size.height * 0.6182407);
    path_2.cubicTo(
        size.width * 0.4224074,
        size.height * 0.6125000,
        size.width * 0.3937963,
        size.height * 0.6074074,
        size.width * 0.3645370,
        size.height * 0.6137963);
    path_2.cubicTo(
        size.width * 0.3563889,
        size.height * 0.6155556,
        size.width * 0.3487963,
        size.height * 0.6190741,
        size.width * 0.3410185,
        size.height * 0.6217593);
    path_2.cubicTo(
        size.width * 0.3590741,
        size.height * 0.6020370,
        size.width * 0.3818519,
        size.height * 0.5921296,
        size.width * 0.4080556,
        size.height * 0.5894444);
    path_2.cubicTo(
        size.width * 0.4384259,
        size.height * 0.5862963,
        size.width * 0.4673148,
        size.height * 0.5937037,
        size.width * 0.4965741,
        size.height * 0.6000926);
    path_2.cubicTo(
        size.width * 0.5247222,
        size.height * 0.6062963,
        size.width * 0.5531481,
        size.height * 0.6110185,
        size.width * 0.5821296,
        size.height * 0.6061111);
    path_2.cubicTo(
        size.width * 0.5919444,
        size.height * 0.6043519,
        size.width * 0.6012037,
        size.height * 0.6006481,
        size.width * 0.6104630,
        size.height * 0.5967593);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
