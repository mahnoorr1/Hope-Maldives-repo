import 'package:flutter/material.dart';

class HotelsPainter extends CustomPainter {
  final Color? color;
  HotelsPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6803704, size.height * 0.6420370);
    path_0.cubicTo(
        size.width * 0.6803704,
        size.height * 0.6145370,
        size.width * 0.6803704,
        size.height * 0.5875926,
        size.width * 0.6803704,
        size.height * 0.5599074);
    path_0.cubicTo(
        size.width * 0.5661111,
        size.height * 0.5599074,
        size.width * 0.4526852,
        size.height * 0.5599074,
        size.width * 0.3383333,
        size.height * 0.5599074);
    path_0.cubicTo(
        size.width * 0.3383333,
        size.height * 0.5876852,
        size.width * 0.3383333,
        size.height * 0.6146296,
        size.width * 0.3383333,
        size.height * 0.6412963);
    path_0.cubicTo(
        size.width * 0.3177778,
        size.height * 0.6464815,
        size.width * 0.3098148,
        size.height * 0.6405556,
        size.width * 0.3098148,
        size.height * 0.6208333);
    path_0.cubicTo(
        size.width * 0.3098148,
        size.height * 0.6189815,
        size.width * 0.3100000,
        size.height * 0.6171296,
        size.width * 0.3098148,
        size.height * 0.6153704);
    path_0.cubicTo(
        size.width * 0.3040741,
        size.height * 0.5741667,
        size.width * 0.3189815,
        size.height * 0.5379630,
        size.width * 0.3371296,
        size.height * 0.5025000);
    path_0.cubicTo(
        size.width * 0.3450926,
        size.height * 0.4871296,
        size.width * 0.3579630,
        size.height * 0.4785185,
        size.width * 0.3746296,
        size.height * 0.4750926);
    path_0.cubicTo(
        size.width * 0.4641667,
        size.height * 0.4565741,
        size.width * 0.5537037,
        size.height * 0.4564815,
        size.width * 0.6432407,
        size.height * 0.4749074);
    path_0.cubicTo(
        size.width * 0.6625926,
        size.height * 0.4788889,
        size.width * 0.6763889,
        size.height * 0.4892593,
        size.width * 0.6840741,
        size.height * 0.5075926);
    path_0.cubicTo(
        size.width * 0.6859259,
        size.height * 0.5119444,
        size.width * 0.6873148,
        size.height * 0.5166667,
        size.width * 0.6898148,
        size.height * 0.5205556);
    path_0.cubicTo(
        size.width * 0.7112037,
        size.height * 0.5536111,
        size.width * 0.7101852,
        size.height * 0.5905556,
        size.width * 0.7087963,
        size.height * 0.6275926);
    path_0.cubicTo(
        size.width * 0.7083333,
        size.height * 0.6407407,
        size.width * 0.7005556,
        size.height * 0.6447222,
        size.width * 0.6803704,
        size.height * 0.6420370);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3503704, size.height * 0.6792593);
    path_1.cubicTo(
        size.width * 0.3503704,
        size.height * 0.6440741,
        size.width * 0.3503704,
        size.height * 0.6100926,
        size.width * 0.3503704,
        size.height * 0.5754630);
    path_1.cubicTo(
        size.width * 0.4564815,
        size.height * 0.5754630,
        size.width * 0.5620370,
        size.height * 0.5754630,
        size.width * 0.6683333,
        size.height * 0.5754630);
    path_1.cubicTo(
        size.width * 0.6683333,
        size.height * 0.6100000,
        size.width * 0.6683333,
        size.height * 0.6442593,
        size.width * 0.6683333,
        size.height * 0.6798148);
    path_1.cubicTo(
        size.width * 0.6585185,
        size.height * 0.6798148,
        size.width * 0.6489815,
        size.height * 0.6803704,
        size.width * 0.6396296,
        size.height * 0.6794444);
    path_1.cubicTo(
        size.width * 0.6368519,
        size.height * 0.6791667,
        size.width * 0.6329630,
        size.height * 0.6751852,
        size.width * 0.6321296,
        size.height * 0.6721296);
    path_1.cubicTo(
        size.width * 0.6271296,
        size.height * 0.6548148,
        size.width * 0.6161111,
        size.height * 0.6512963,
        size.width * 0.5987963,
        size.height * 0.6515741);
    path_1.cubicTo(
        size.width * 0.5348148,
        size.height * 0.6527778,
        size.width * 0.4707407,
        size.height * 0.6521296,
        size.width * 0.4066667,
        size.height * 0.6519444);
    path_1.cubicTo(
        size.width * 0.4004630,
        size.height * 0.6519444,
        size.width * 0.3953704,
        size.height * 0.6522222,
        size.width * 0.3935185,
        size.height * 0.6593519);
    path_1.cubicTo(
        size.width * 0.3886111,
        size.height * 0.6776852,
        size.width * 0.3761111,
        size.height * 0.6831481,
        size.width * 0.3585185,
        size.height * 0.6798148);
    path_1.cubicTo(
        size.width * 0.3561111,
        size.height * 0.6794444,
        size.width * 0.3536111,
        size.height * 0.6795370,
        size.width * 0.3503704,
        size.height * 0.6792593);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4948148, size.height * 0.4507407);
    path_2.cubicTo(
        size.width * 0.4912963,
        size.height * 0.4255556,
        size.width * 0.4889815,
        size.height * 0.4220370,
        size.width * 0.4625000,
        size.height * 0.4201852);
    path_2.cubicTo(
        size.width * 0.4423148,
        size.height * 0.4187963,
        size.width * 0.4217593,
        size.height * 0.4200926,
        size.width * 0.4016667,
        size.height * 0.4222222);
    path_2.cubicTo(
        size.width * 0.3868519,
        size.height * 0.4237963,
        size.width * 0.3828704,
        size.height * 0.4305556,
        size.width * 0.3827778,
        size.height * 0.4454630);
    path_2.cubicTo(
        size.width * 0.3827778,
        size.height * 0.4490741,
        size.width * 0.3836111,
        size.height * 0.4530556,
        size.width * 0.3825000,
        size.height * 0.4563889);
    path_2.cubicTo(
        size.width * 0.3812963,
        size.height * 0.4598148,
        size.width * 0.3788889,
        size.height * 0.4637963,
        size.width * 0.3758333,
        size.height * 0.4653704);
    path_2.cubicTo(
        size.width * 0.3711111,
        size.height * 0.4677778,
        size.width * 0.3652778,
        size.height * 0.4680556,
        size.width * 0.3601852,
        size.height * 0.4700000);
    path_2.cubicTo(
        size.width * 0.3551852,
        size.height * 0.4719444,
        size.width * 0.3506481,
        size.height * 0.4749074,
        size.width * 0.3450000,
        size.height * 0.4778704);
    path_2.cubicTo(
        size.width * 0.3447222,
        size.height * 0.4744444,
        size.width * 0.3442593,
        size.height * 0.4717593,
        size.width * 0.3442593,
        size.height * 0.4690741);
    path_2.cubicTo(
        size.width * 0.3442593,
        size.height * 0.4435185,
        size.width * 0.3440741,
        size.height * 0.4178704,
        size.width * 0.3443519,
        size.height * 0.3923148);
    path_2.cubicTo(
        size.width * 0.3445370,
        size.height * 0.3764815,
        size.width * 0.3531481,
        size.height * 0.3675000,
        size.width * 0.3687037,
        size.height * 0.3651852);
    path_2.cubicTo(
        size.width * 0.4033333,
        size.height * 0.3600926,
        size.width * 0.4378704,
        size.height * 0.3540741,
        size.width * 0.4725926,
        size.height * 0.3497222);
    path_2.cubicTo(
        size.width * 0.5172222,
        size.height * 0.3441667,
        size.width * 0.5615741,
        size.height * 0.3495370,
        size.width * 0.6055556,
        size.height * 0.3574074);
    path_2.cubicTo(
        size.width * 0.6210185,
        size.height * 0.3601852,
        size.width * 0.6364815,
        size.height * 0.3627778,
        size.width * 0.6519444,
        size.height * 0.3652778);
    path_2.cubicTo(
        size.width * 0.6639815,
        size.height * 0.3672222,
        size.width * 0.6738889,
        size.height * 0.3756481,
        size.width * 0.6741667,
        size.height * 0.3873148);
    path_2.cubicTo(
        size.width * 0.6748148,
        size.height * 0.4172222,
        size.width * 0.6743519,
        size.height * 0.4471296,
        size.width * 0.6743519,
        size.height * 0.4762963);
    path_2.cubicTo(
        size.width * 0.6631481,
        size.height * 0.4725000,
        size.width * 0.6521296,
        size.height * 0.4692593,
        size.width * 0.6414815,
        size.height * 0.4650000);
    path_2.cubicTo(
        size.width * 0.6390741,
        size.height * 0.4640741,
        size.width * 0.6362037,
        size.height * 0.4596296,
        size.width * 0.6364815,
        size.height * 0.4572222);
    path_2.cubicTo(
        size.width * 0.6401852,
        size.height * 0.4271296,
        size.width * 0.6285185,
        size.height * 0.4212037,
        size.width * 0.6016667,
        size.height * 0.4196296);
    path_2.cubicTo(
        size.width * 0.5842593,
        size.height * 0.4186111,
        size.width * 0.5666667,
        size.height * 0.4190741,
        size.width * 0.5493519,
        size.height * 0.4209259);
    path_2.cubicTo(
        size.width * 0.5300000,
        size.height * 0.4229630,
        size.width * 0.5262037,
        size.height * 0.4286111,
        size.width * 0.5245370,
        size.height * 0.4508333);
    path_2.cubicTo(
        size.width * 0.5149074,
        size.height * 0.4507407,
        size.width * 0.5051852,
        size.height * 0.4507407,
        size.width * 0.4948148,
        size.height * 0.4507407);
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
