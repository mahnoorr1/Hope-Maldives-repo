import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final Color? color;
  RPSCustomPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4587963, size.height * 0.6898148);
    path_0.cubicTo(
        size.width * 0.4228704,
        size.height * 0.6898148,
        size.width * 0.3924074,
        size.height * 0.6898148,
        size.width * 0.3580556,
        size.height * 0.6898148);
    path_0.cubicTo(
        size.width * 0.3580556,
        size.height * 0.6353704,
        size.width * 0.3580556,
        size.height * 0.5838889,
        size.width * 0.3580556,
        size.height * 0.5276852);
    path_0.cubicTo(
        size.width * 0.3900000,
        size.height * 0.5276852,
        size.width * 0.4219444,
        size.height * 0.5276852,
        size.width * 0.4587963,
        size.height * 0.5276852);
    path_0.cubicTo(
        size.width * 0.4587963,
        size.height * 0.5787037,
        size.width * 0.4587963,
        size.height * 0.6316667,
        size.width * 0.4587963,
        size.height * 0.6898148);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5930556, size.height * 0.6898148);
    path_1.cubicTo(
        size.width * 0.5586111,
        size.height * 0.6898148,
        size.width * 0.5281481,
        size.height * 0.6898148,
        size.width * 0.4925000,
        size.height * 0.6898148);
    path_1.cubicTo(
        size.width * 0.4925000,
        size.height * 0.6357407,
        size.width * 0.4925000,
        size.height * 0.5828704,
        size.width * 0.4925000,
        size.height * 0.5263889);
    path_1.cubicTo(
        size.width * 0.5249074,
        size.height * 0.5263889,
        size.width * 0.5571296,
        size.height * 0.5263889,
        size.width * 0.5930556,
        size.height * 0.5263889);
    path_1.cubicTo(
        size.width * 0.5930556,
        size.height * 0.5790741,
        size.width * 0.5930556,
        size.height * 0.6306481,
        size.width * 0.5930556,
        size.height * 0.6898148);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3369444, size.height * 0.5102778);
    path_2.cubicTo(
        size.width * 0.3296296,
        size.height * 0.4491667,
        size.width * 0.3304630,
        size.height * 0.4488889,
        size.width * 0.4587963,
        size.height * 0.4600926);
    path_2.cubicTo(
        size.width * 0.4587963,
        size.height * 0.4757407,
        size.width * 0.4587963,
        size.height * 0.4916667,
        size.width * 0.4587963,
        size.height * 0.5102778);
    path_2.cubicTo(
        size.width * 0.4165741,
        size.height * 0.5102778,
        size.width * 0.3765741,
        size.height * 0.5102778,
        size.width * 0.3369444,
        size.height * 0.5102778);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4994444, size.height * 0.4521296);
    path_3.cubicTo(
        size.width * 0.5355556,
        size.height * 0.4788889,
        size.width * 0.6058333,
        size.height * 0.4135185,
        size.width * 0.6248148,
        size.height * 0.5086111);
    path_3.cubicTo(
        size.width * 0.5783333,
        size.height * 0.5086111,
        size.width * 0.5384259,
        size.height * 0.5086111,
        size.width * 0.4922222,
        size.height * 0.5086111);
    path_3.cubicTo(
        size.width * 0.4909259,
        size.height * 0.4956481,
        size.width * 0.4892593,
        size.height * 0.4799074,
        size.width * 0.4876852,
        size.height * 0.4640741);
    path_3.cubicTo(
        size.width * 0.4915741,
        size.height * 0.4600926,
        size.width * 0.4955556,
        size.height * 0.4561111,
        size.width * 0.4994444,
        size.height * 0.4521296);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4418519, size.height * 0.4345370);
    path_4.cubicTo(
        size.width * 0.4278704,
        size.height * 0.4137963,
        size.width * 0.4139815,
        size.height * 0.3931481,
        size.width * 0.4000000,
        size.height * 0.3724074);
    path_4.cubicTo(
        size.width * 0.4094444,
        size.height * 0.3661111,
        size.width * 0.4188889,
        size.height * 0.3597222,
        size.width * 0.4283333,
        size.height * 0.3534259);
    path_4.cubicTo(
        size.width * 0.4399074,
        size.height * 0.3763889,
        size.width * 0.4513889,
        size.height * 0.3992593,
        size.width * 0.4629630,
        size.height * 0.4222222);
    path_4.cubicTo(
        size.width * 0.4559259,
        size.height * 0.4263889,
        size.width * 0.4488889,
        size.height * 0.4304630,
        size.width * 0.4418519,
        size.height * 0.4345370);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.4860185, size.height * 0.4178704);
    path_5.cubicTo(
        size.width * 0.4993519,
        size.height * 0.3962963,
        size.width * 0.5126852,
        size.height * 0.3747222,
        size.width * 0.5259259,
        size.height * 0.3532407);
    path_5.cubicTo(
        size.width * 0.5341667,
        size.height * 0.3589815,
        size.width * 0.5501852,
        size.height * 0.3687963,
        size.width * 0.5495370,
        size.height * 0.3700000);
    path_5.cubicTo(
        size.width * 0.5381481,
        size.height * 0.3919444,
        size.width * 0.5248148,
        size.height * 0.4128704,
        size.width * 0.5118519,
        size.height * 0.4339815);
    path_5.cubicTo(
        size.width * 0.5033333,
        size.height * 0.4286111,
        size.width * 0.4947222,
        size.height * 0.4232407,
        size.width * 0.4860185,
        size.height * 0.4178704);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6470370, size.height * 0.5593519);
    path_6.cubicTo(
        size.width * 0.6470370,
        size.height * 0.5545370,
        size.width * 0.6470370,
        size.height * 0.5497222,
        size.width * 0.6470370,
        size.height * 0.5450000);
    path_6.cubicTo(
        size.width * 0.6470370,
        size.height * 0.5438889,
        size.width * 0.6473148,
        size.height * 0.5435185,
        size.width * 0.6485185,
        size.height * 0.5435185);
    path_6.cubicTo(
        size.width * 0.6512037,
        size.height * 0.5436111,
        size.width * 0.6538889,
        size.height * 0.5435185,
        size.width * 0.6566667,
        size.height * 0.5435185);
    path_6.cubicTo(
        size.width * 0.6566667,
        size.height * 0.5486111,
        size.width * 0.6566667,
        size.height * 0.5536111,
        size.width * 0.6566667,
        size.height * 0.5587037);
    path_6.cubicTo(
        size.width * 0.6638889,
        size.height * 0.5590741,
        size.width * 0.6707407,
        size.height * 0.5604630,
        size.width * 0.6770370,
        size.height * 0.5641667);
    path_6.cubicTo(
        size.width * 0.6757407,
        size.height * 0.5675000,
        size.width * 0.6745370,
        size.height * 0.5709259,
        size.width * 0.6733333,
        size.height * 0.5739815);
    path_6.cubicTo(
        size.width * 0.6700000,
        size.height * 0.5726852,
        size.width * 0.6668519,
        size.height * 0.5712963,
        size.width * 0.6636111,
        size.height * 0.5703704);
    path_6.cubicTo(
        size.width * 0.6584259,
        size.height * 0.5688889,
        size.width * 0.6530556,
        size.height * 0.5684259,
        size.width * 0.6477778,
        size.height * 0.5697222);
    path_6.cubicTo(
        size.width * 0.6420370,
        size.height * 0.5710185,
        size.width * 0.6381481,
        size.height * 0.5744444,
        size.width * 0.6371296,
        size.height * 0.5804630);
    path_6.cubicTo(
        size.width * 0.6362037,
        size.height * 0.5857407,
        size.width * 0.6382407,
        size.height * 0.5900000,
        size.width * 0.6425000,
        size.height * 0.5931481);
    path_6.cubicTo(
        size.width * 0.6470370,
        size.height * 0.5965741,
        size.width * 0.6522222,
        size.height * 0.5986111,
        size.width * 0.6574074,
        size.height * 0.6008333);
    path_6.cubicTo(
        size.width * 0.6633333,
        size.height * 0.6033333,
        size.width * 0.6690741,
        size.height * 0.6062963,
        size.width * 0.6737037,
        size.height * 0.6109259);
    path_6.cubicTo(
        size.width * 0.6780556,
        size.height * 0.6153704,
        size.width * 0.6802778,
        size.height * 0.6207407,
        size.width * 0.6805556,
        size.height * 0.6269444);
    path_6.cubicTo(
        size.width * 0.6809259,
        size.height * 0.6350926,
        size.width * 0.6784259,
        size.height * 0.6420370,
        size.width * 0.6725000,
        size.height * 0.6475926);
    path_6.cubicTo(
        size.width * 0.6682407,
        size.height * 0.6515741,
        size.width * 0.6631481,
        size.height * 0.6537963,
        size.width * 0.6575000,
        size.height * 0.6550000);
    path_6.cubicTo(
        size.width * 0.6569444,
        size.height * 0.6550926,
        size.width * 0.6563889,
        size.height * 0.6552778,
        size.width * 0.6557407,
        size.height * 0.6553704);
    path_6.cubicTo(
        size.width * 0.6557407,
        size.height * 0.6607407,
        size.width * 0.6557407,
        size.height * 0.6660185,
        size.width * 0.6557407,
        size.height * 0.6714815);
    path_6.cubicTo(
        size.width * 0.6525000,
        size.height * 0.6714815,
        size.width * 0.6493519,
        size.height * 0.6714815,
        size.width * 0.6461111,
        size.height * 0.6714815);
    path_6.cubicTo(
        size.width * 0.6461111,
        size.height * 0.6662963,
        size.width * 0.6461111,
        size.height * 0.6611111,
        size.width * 0.6461111,
        size.height * 0.6559259);
    path_6.cubicTo(
        size.width * 0.6439815,
        size.height * 0.6557407,
        size.width * 0.6419444,
        size.height * 0.6555556,
        size.width * 0.6399074,
        size.height * 0.6552778);
    path_6.cubicTo(
        size.width * 0.6339815,
        size.height * 0.6544444,
        size.width * 0.6283333,
        size.height * 0.6526852,
        size.width * 0.6231481,
        size.height * 0.6496296);
    path_6.cubicTo(
        size.width * 0.6225000,
        size.height * 0.6492593,
        size.width * 0.6223148,
        size.height * 0.6488889,
        size.width * 0.6225926,
        size.height * 0.6480556);
    path_6.cubicTo(
        size.width * 0.6237037,
        size.height * 0.6450000,
        size.width * 0.6248148,
        size.height * 0.6419444,
        size.width * 0.6259259,
        size.height * 0.6387963);
    path_6.cubicTo(
        size.width * 0.6281481,
        size.height * 0.6399074,
        size.width * 0.6303704,
        size.height * 0.6411111,
        size.width * 0.6325926,
        size.height * 0.6421296);
    path_6.cubicTo(
        size.width * 0.6379630,
        size.height * 0.6444444,
        size.width * 0.6436111,
        size.height * 0.6455556,
        size.width * 0.6494444,
        size.height * 0.6452778);
    path_6.cubicTo(
        size.width * 0.6542593,
        size.height * 0.6450926,
        size.width * 0.6587037,
        size.height * 0.6437963,
        size.width * 0.6624074,
        size.height * 0.6404630);
    path_6.cubicTo(
        size.width * 0.6674074,
        size.height * 0.6360185,
        size.width * 0.6686111,
        size.height * 0.6279630,
        size.width * 0.6649074,
        size.height * 0.6222222);
    path_6.cubicTo(
        size.width * 0.6620370,
        size.height * 0.6177778,
        size.width * 0.6577778,
        size.height * 0.6152778,
        size.width * 0.6531481,
        size.height * 0.6130556);
    path_6.cubicTo(
        size.width * 0.6480556,
        size.height * 0.6106481,
        size.width * 0.6428704,
        size.height * 0.6085185,
        size.width * 0.6378704,
        size.height * 0.6059259);
    path_6.cubicTo(
        size.width * 0.6339815,
        size.height * 0.6039815,
        size.width * 0.6304630,
        size.height * 0.6012037,
        size.width * 0.6278704,
        size.height * 0.5975926);
    path_6.cubicTo(
        size.width * 0.6242593,
        size.height * 0.5927778,
        size.width * 0.6231481,
        size.height * 0.5873148,
        size.width * 0.6237963,
        size.height * 0.5813889);
    path_6.cubicTo(
        size.width * 0.6245370,
        size.height * 0.5751852,
        size.width * 0.6272222,
        size.height * 0.5700926,
        size.width * 0.6319444,
        size.height * 0.5660185);
    path_6.cubicTo(
        size.width * 0.6361111,
        size.height * 0.5624074,
        size.width * 0.6410185,
        size.height * 0.5604630,
        size.width * 0.6462963,
        size.height * 0.5594444);
    path_6.cubicTo(
        size.width * 0.6464815,
        size.height * 0.5594444,
        size.width * 0.6467593,
        size.height * 0.5593519,
        size.width * 0.6470370,
        size.height * 0.5593519);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
