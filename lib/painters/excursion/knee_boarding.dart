import 'package:flutter/material.dart';

class KneeBoardingPainter extends CustomPainter {
  final Color? color;
  KneeBoardingPainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6747222, size.height * 0.6070370);
    path_0.cubicTo(
        size.width * 0.6762963,
        size.height * 0.6242593,
        size.width * 0.6641667,
        size.height * 0.6399074,
        size.width * 0.6493519,
        size.height * 0.6425926);
    path_0.cubicTo(
        size.width * 0.5700926,
        size.height * 0.6568519,
        size.width * 0.4902778,
        size.height * 0.6635185,
        size.width * 0.4097222,
        size.height * 0.6572222);
    path_0.cubicTo(
        size.width * 0.3873148,
        size.height * 0.6554630,
        size.width * 0.3649074,
        size.height * 0.6538889,
        size.width * 0.3425000,
        size.height * 0.6519444);
    path_0.cubicTo(
        size.width * 0.3380556,
        size.height * 0.6515741,
        size.width * 0.3337037,
        size.height * 0.6500926,
        size.width * 0.3265741,
        size.height * 0.6485185);
    path_0.cubicTo(
        size.width * 0.3305556,
        size.height * 0.6442593,
        size.width * 0.3328704,
        size.height * 0.6416667,
        size.width * 0.3352778,
        size.height * 0.6390741);
    path_0.cubicTo(
        size.width * 0.3566667,
        size.height * 0.6162037,
        size.width * 0.3853704,
        size.height * 0.6155556,
        size.width * 0.4135185,
        size.height * 0.6132407);
    path_0.cubicTo(
        size.width * 0.4238889,
        size.height * 0.6124074,
        size.width * 0.4342593,
        size.height * 0.6113889,
        size.width * 0.4448148,
        size.height * 0.6103704);
    path_0.cubicTo(
        size.width * 0.4430556,
        size.height * 0.6061111,
        size.width * 0.4409259,
        size.height * 0.6024074,
        size.width * 0.4400926,
        size.height * 0.5984259);
    path_0.cubicTo(
        size.width * 0.4377778,
        size.height * 0.5867593,
        size.width * 0.4442593,
        size.height * 0.5789815,
        size.width * 0.4563889,
        size.height * 0.5782407);
    path_0.cubicTo(
        size.width * 0.4733333,
        size.height * 0.5771296,
        size.width * 0.4903704,
        size.height * 0.5762037,
        size.width * 0.5076852,
        size.height * 0.5737963);
    path_0.cubicTo(
        size.width * 0.5041667,
        size.height * 0.5726852,
        size.width * 0.5007407,
        size.height * 0.5715741,
        size.width * 0.4972222,
        size.height * 0.5705556);
    path_0.cubicTo(
        size.width * 0.4909259,
        size.height * 0.5687037,
        size.width * 0.4845370,
        size.height * 0.5670370,
        size.width * 0.4783333,
        size.height * 0.5650000);
    path_0.cubicTo(
        size.width * 0.4528704,
        size.height * 0.5567593,
        size.width * 0.4356481,
        size.height * 0.5420370,
        size.width * 0.4327778,
        size.height * 0.5129630);
    path_0.cubicTo(
        size.width * 0.4304630,
        size.height * 0.4887963,
        size.width * 0.4233333,
        size.height * 0.4649074,
        size.width * 0.4292593,
        size.height * 0.4404630);
    path_0.cubicTo(
        size.width * 0.4343519,
        size.height * 0.4197222,
        size.width * 0.4443519,
        size.height * 0.4017593,
        size.width * 0.4667593,
        size.height * 0.3975000);
    path_0.cubicTo(
        size.width * 0.4892593,
        size.height * 0.3931481,
        size.width * 0.5100000,
        size.height * 0.3988889,
        size.width * 0.5247222,
        size.height * 0.4185185);
    path_0.cubicTo(
        size.width * 0.5314815,
        size.height * 0.4275000,
        size.width * 0.5381481,
        size.height * 0.4365741,
        size.width * 0.5439815,
        size.height * 0.4461111);
    path_0.cubicTo(
        size.width * 0.5474074,
        size.height * 0.4517593,
        size.width * 0.5503704,
        size.height * 0.4537037,
        size.width * 0.5568519,
        size.height * 0.4506481);
    path_0.cubicTo(
        size.width * 0.5665741,
        size.height * 0.4461111,
        size.width * 0.5769444,
        size.height * 0.4427778,
        size.width * 0.5880556,
        size.height * 0.4385185);
    path_0.cubicTo(
        size.width * 0.5863889,
        size.height * 0.4324074,
        size.width * 0.5837037,
        size.height * 0.4266667,
        size.width * 0.5835185,
        size.height * 0.4207407);
    path_0.cubicTo(
        size.width * 0.5833333,
        size.height * 0.4164815,
        size.width * 0.5853704,
        size.height * 0.4100926,
        size.width * 0.5884259,
        size.height * 0.4084259);
    path_0.cubicTo(
        size.width * 0.5912963,
        size.height * 0.4069444,
        size.width * 0.5968519,
        size.height * 0.4103704,
        size.width * 0.6011111,
        size.height * 0.4119444);
    path_0.cubicTo(
        size.width * 0.6054630,
        size.height * 0.4135185,
        size.width * 0.6094444,
        size.height * 0.4167593,
        size.width * 0.6138889,
        size.height * 0.4172222);
    path_0.cubicTo(
        size.width * 0.6432407,
        size.height * 0.4203704,
        size.width * 0.6725926,
        size.height * 0.4230556,
        size.width * 0.7017593,
        size.height * 0.4095370);
    path_0.cubicTo(
        size.width * 0.7028704,
        size.height * 0.4150926,
        size.width * 0.7035185,
        size.height * 0.4186111,
        size.width * 0.7042593,
        size.height * 0.4224074);
    path_0.cubicTo(
        size.width * 0.7001852,
        size.height * 0.4237037,
        size.width * 0.6969444,
        size.height * 0.4255556,
        size.width * 0.6936111,
        size.height * 0.4257407);
    path_0.cubicTo(
        size.width * 0.6571296,
        size.height * 0.4277778,
        size.width * 0.6447222,
        size.height * 0.4601852,
        size.width * 0.6234259,
        size.height * 0.4812963);
    path_0.cubicTo(
        size.width * 0.6226852,
        size.height * 0.4820370,
        size.width * 0.6220370,
        size.height * 0.4833333,
        size.width * 0.6220370,
        size.height * 0.4843519);
    path_0.cubicTo(
        size.width * 0.6224074,
        size.height * 0.4915741,
        size.width * 0.6193519,
        size.height * 0.4981481,
        size.width * 0.6122222,
        size.height * 0.4968519);
    path_0.cubicTo(
        size.width * 0.6077778,
        size.height * 0.4960185,
        size.width * 0.6038889,
        size.height * 0.4892593,
        size.width * 0.6008333,
        size.height * 0.4844444);
    path_0.cubicTo(
        size.width * 0.5982407,
        size.height * 0.4803704,
        size.width * 0.5972222,
        size.height * 0.4752778,
        size.width * 0.5951852,
        size.height * 0.4699074);
    path_0.cubicTo(
        size.width * 0.5782407,
        size.height * 0.4749074,
        size.width * 0.5618519,
        size.height * 0.4790741,
        size.width * 0.5458333,
        size.height * 0.4846296);
    path_0.cubicTo(
        size.width * 0.5371296,
        size.height * 0.4875926,
        size.width * 0.5312037,
        size.height * 0.4865741,
        size.width * 0.5258333,
        size.height * 0.4790741);
    path_0.cubicTo(
        size.width * 0.5220370,
        size.height * 0.4737963,
        size.width * 0.5171296,
        size.height * 0.4693519,
        size.width * 0.5103704,
        size.height * 0.4621296);
    path_0.cubicTo(
        size.width * 0.5086111,
        size.height * 0.4796296,
        size.width * 0.5068519,
        size.height * 0.4942593,
        size.width * 0.5059259,
        size.height * 0.5089815);
    path_0.cubicTo(
        size.width * 0.5057407,
        size.height * 0.5116667,
        size.width * 0.5087963,
        size.height * 0.5151852,
        size.width * 0.5113889,
        size.height * 0.5171296);
    path_0.cubicTo(
        size.width * 0.5258333,
        size.height * 0.5282407,
        size.width * 0.5401852,
        size.height * 0.5395370,
        size.width * 0.5551852,
        size.height * 0.5498148);
    path_0.cubicTo(
        size.width * 0.5767593,
        size.height * 0.5645370,
        size.width * 0.5787037,
        size.height * 0.5838889,
        size.width * 0.5597222,
        size.height * 0.6015741);
    path_0.cubicTo(
        size.width * 0.5588889,
        size.height * 0.6023148,
        size.width * 0.5583333,
        size.height * 0.6033333,
        size.width * 0.5556481,
        size.height * 0.6068519);
    path_0.cubicTo(
        size.width * 0.5966667,
        size.height * 0.6070370,
        size.width * 0.6354630,
        size.height * 0.6070370,
        size.width * 0.6747222,
        size.height * 0.6070370);
    path_0.close();
    path_0.moveTo(size.width * 0.6510185, size.height * 0.4317593);
    path_0.cubicTo(
        size.width * 0.6352778,
        size.height * 0.4317593,
        size.width * 0.6218519,
        size.height * 0.4317593,
        size.width * 0.6066667,
        size.height * 0.4317593);
    path_0.cubicTo(
        size.width * 0.6106481,
        size.height * 0.4434259,
        size.width * 0.6140741,
        size.height * 0.4536111,
        size.width * 0.6177778,
        size.height * 0.4642593);
    path_0.cubicTo(
        size.width * 0.6291667,
        size.height * 0.4531481,
        size.width * 0.6393519,
        size.height * 0.4432407,
        size.width * 0.6510185,
        size.height * 0.4317593);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3108333, size.height * 0.7065741);
    path_1.cubicTo(
        size.width * 0.3108333,
        size.height * 0.7025000,
        size.width * 0.3108333,
        size.height * 0.6983333,
        size.width * 0.3108333,
        size.height * 0.6934259);
    path_1.cubicTo(
        size.width * 0.3119444,
        size.height * 0.6931481,
        size.width * 0.3133333,
        size.height * 0.6922222,
        size.width * 0.3145370,
        size.height * 0.6926852);
    path_1.cubicTo(
        size.width * 0.3288889,
        size.height * 0.6980556,
        size.width * 0.3426852,
        size.height * 0.6930556,
        size.width * 0.3558333,
        size.height * 0.6847222);
    path_1.cubicTo(
        size.width * 0.3777778,
        size.height * 0.6708333,
        size.width * 0.3992593,
        size.height * 0.6702778,
        size.width * 0.4212037,
        size.height * 0.6847222);
    path_1.cubicTo(
        size.width * 0.4408333,
        size.height * 0.6976852,
        size.width * 0.4608333,
        size.height * 0.6978704,
        size.width * 0.4805556,
        size.height * 0.6849074);
    path_1.cubicTo(
        size.width * 0.5024074,
        size.height * 0.6704630,
        size.width * 0.5239815,
        size.height * 0.6702778,
        size.width * 0.5458333,
        size.height * 0.6847222);
    path_1.cubicTo(
        size.width * 0.5657407,
        size.height * 0.6978704,
        size.width * 0.5858333,
        size.height * 0.6974074,
        size.width * 0.6058333,
        size.height * 0.6846296);
    path_1.cubicTo(
        size.width * 0.6227778,
        size.height * 0.6737963,
        size.width * 0.6399074,
        size.height * 0.6706481,
        size.width * 0.6580556,
        size.height * 0.6775000);
    path_1.cubicTo(
        size.width * 0.6651852,
        size.height * 0.6801852,
        size.width * 0.6660185,
        size.height * 0.6849074,
        size.width * 0.6645370,
        size.height * 0.6951852);
    path_1.cubicTo(
        size.width * 0.6575000,
        size.height * 0.6932407,
        size.width * 0.6505556,
        size.height * 0.6907407,
        size.width * 0.6435185,
        size.height * 0.6895370);
    path_1.cubicTo(
        size.width * 0.6306481,
        size.height * 0.6873148,
        size.width * 0.6182407,
        size.height * 0.6924074,
        size.width * 0.6063889,
        size.height * 0.7000000);
    path_1.cubicTo(
        size.width * 0.5858333,
        size.height * 0.7130556,
        size.width * 0.5654630,
        size.height * 0.7133333,
        size.width * 0.5450926,
        size.height * 0.6999074);
    path_1.cubicTo(
        size.width * 0.5239815,
        size.height * 0.6859259,
        size.width * 0.5028704,
        size.height * 0.6859259,
        size.width * 0.4817593,
        size.height * 0.6999074);
    path_1.cubicTo(
        size.width * 0.4612963,
        size.height * 0.7134259,
        size.width * 0.4408333,
        size.height * 0.7134259,
        size.width * 0.4204630,
        size.height * 0.7000000);
    path_1.cubicTo(
        size.width * 0.3990741,
        size.height * 0.6859259,
        size.width * 0.3779630,
        size.height * 0.6866667,
        size.width * 0.3564815,
        size.height * 0.7001852);
    path_1.cubicTo(
        size.width * 0.3418519,
        size.height * 0.7092593,
        size.width * 0.3267593,
        size.height * 0.7146296,
        size.width * 0.3108333,
        size.height * 0.7065741);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5243519, size.height * 0.3505556);
    path_2.cubicTo(
        size.width * 0.5245370,
        size.height * 0.3721296,
        size.width * 0.5087963,
        size.height * 0.3886111,
        size.width * 0.4877778,
        size.height * 0.3888889);
    path_2.cubicTo(
        size.width * 0.4661111,
        size.height * 0.3891667,
        size.width * 0.4487963,
        size.height * 0.3727778,
        size.width * 0.4483333,
        size.height * 0.3514815);
    path_2.cubicTo(
        size.width * 0.4478704,
        size.height * 0.3310185,
        size.width * 0.4661111,
        size.height * 0.3126852,
        size.width * 0.4868519,
        size.height * 0.3127778);
    path_2.cubicTo(
        size.width * 0.5076852,
        size.height * 0.3128704,
        size.width * 0.5242593,
        size.height * 0.3294444,
        size.width * 0.5243519,
        size.height * 0.3505556);
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
