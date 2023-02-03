import 'package:flutter/material.dart';

class SchillerBikePainter extends CustomPainter {
  final Color? color;
  SchillerBikePainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5218519, size.height * 0.5543519);
    path_0.lineTo(size.width * 0.4548148, size.height * 0.5543519);
    path_0.cubicTo(
        size.width * 0.4370370,
        size.height * 0.5543519,
        size.width * 0.4192593,
        size.height * 0.5543519,
        size.width * 0.4014815,
        size.height * 0.5543519);
    path_0.cubicTo(
        size.width * 0.3916667,
        size.height * 0.5543519,
        size.width * 0.3819444,
        size.height * 0.5533333,
        size.width * 0.3724074,
        size.height * 0.5500926);
    path_0.cubicTo(
        size.width * 0.3597222,
        size.height * 0.5457407,
        size.width * 0.3490741,
        size.height * 0.5371296,
        size.width * 0.3405556,
        size.height * 0.5245370);
    path_0.cubicTo(
        size.width * 0.3376852,
        size.height * 0.5203704,
        size.width * 0.3350000,
        size.height * 0.5159259,
        size.width * 0.3324074,
        size.height * 0.5114815);
    path_0.cubicTo(
        size.width * 0.3314815,
        size.height * 0.5099074,
        size.width * 0.3309259,
        size.height * 0.5078704,
        size.width * 0.3307407,
        size.height * 0.5059259);
    path_0.cubicTo(
        size.width * 0.3304630,
        size.height * 0.5037037,
        size.width * 0.3315741,
        size.height * 0.5021296,
        size.width * 0.3333333,
        size.height * 0.5018519);
    path_0.cubicTo(
        size.width * 0.3345370,
        size.height * 0.5017593,
        size.width * 0.3359259,
        size.height * 0.5017593,
        size.width * 0.3370370,
        size.height * 0.5022222);
    path_0.cubicTo(
        size.width * 0.3516667,
        size.height * 0.5084259,
        size.width * 0.3668519,
        size.height * 0.5100000,
        size.width * 0.3821296,
        size.height * 0.5099074);
    path_0.cubicTo(
        size.width * 0.4122222,
        size.height * 0.5098148,
        size.width * 0.4423148,
        size.height * 0.5099074,
        size.width * 0.4724074,
        size.height * 0.5099074);
    path_0.cubicTo(
        size.width * 0.4860185,
        size.height * 0.5099074,
        size.width * 0.4996296,
        size.height * 0.5099074,
        size.width * 0.5132407,
        size.height * 0.5099074);
    path_0.cubicTo(
        size.width * 0.5575000,
        size.height * 0.5099074,
        size.width * 0.6016667,
        size.height * 0.5100000,
        size.width * 0.6459259,
        size.height * 0.5098148);
    path_0.cubicTo(
        size.width * 0.6512037,
        size.height * 0.5098148,
        size.width * 0.6559259,
        size.height * 0.5109259,
        size.width * 0.6605556,
        size.height * 0.5142593);
    path_0.cubicTo(
        size.width * 0.6643519,
        size.height * 0.5170370,
        size.width * 0.6684259,
        size.height * 0.5193519,
        size.width * 0.6724074,
        size.height * 0.5218519);
    path_0.cubicTo(
        size.width * 0.6765741,
        size.height * 0.5245370,
        size.width * 0.6784259,
        size.height * 0.5284259,
        size.width * 0.6778704,
        size.height * 0.5336111);
    path_0.cubicTo(
        size.width * 0.6775000,
        size.height * 0.5375000,
        size.width * 0.6756481,
        size.height * 0.5400926,
        size.width * 0.6729630,
        size.height * 0.5417593);
    path_0.cubicTo(
        size.width * 0.6686111,
        size.height * 0.5446296,
        size.width * 0.6640741,
        size.height * 0.5471296,
        size.width * 0.6598148,
        size.height * 0.5502778);
    path_0.cubicTo(
        size.width * 0.6553704,
        size.height * 0.5535185,
        size.width * 0.6507407,
        size.height * 0.5543519,
        size.width * 0.6456481,
        size.height * 0.5543519);
    path_0.cubicTo(
        size.width * 0.6224074,
        size.height * 0.5541667,
        size.width * 0.5991667,
        size.height * 0.5542593,
        size.width * 0.5760185,
        size.height * 0.5542593);
    path_0.cubicTo(
        size.width * 0.5579630,
        size.height * 0.5543519,
        size.width * 0.5399074,
        size.height * 0.5543519,
        size.width * 0.5218519,
        size.height * 0.5543519);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4529630, size.height * 0.4370370);
    path_1.lineTo(size.width * 0.4529630, size.height * 0.4200000);
    path_1.lineTo(size.width * 0.4573148, size.height * 0.4200000);
    path_1.cubicTo(
        size.width * 0.4562037,
        size.height * 0.4081481,
        size.width * 0.4551852,
        size.height * 0.3965741,
        size.width * 0.4541667,
        size.height * 0.3850000);
    path_1.cubicTo(
        size.width * 0.4537963,
        size.height * 0.3805556,
        size.width * 0.4533333,
        size.height * 0.3761111,
        size.width * 0.4530556,
        size.height * 0.3716667);
    path_1.cubicTo(
        size.width * 0.4527778,
        size.height * 0.3664815,
        size.width * 0.4558333,
        size.height * 0.3629630,
        size.width * 0.4609259,
        size.height * 0.3623148);
    path_1.cubicTo(
        size.width * 0.4645370,
        size.height * 0.3619444,
        size.width * 0.4681481,
        size.height * 0.3616667,
        size.width * 0.4717593,
        size.height * 0.3613889);
    path_1.cubicTo(
        size.width * 0.4735185,
        size.height * 0.3612963,
        size.width * 0.4746296,
        size.height * 0.3622222,
        size.width * 0.4748148,
        size.height * 0.3637963);
    path_1.cubicTo(
        size.width * 0.4750000,
        size.height * 0.3652778,
        size.width * 0.4740741,
        size.height * 0.3663889,
        size.width * 0.4724074,
        size.height * 0.3665741);
    path_1.cubicTo(
        size.width * 0.4689815,
        size.height * 0.3669444,
        size.width * 0.4654630,
        size.height * 0.3672222,
        size.width * 0.4619444,
        size.height * 0.3675000);
    path_1.cubicTo(
        size.width * 0.4592593,
        size.height * 0.3676852,
        size.width * 0.4582407,
        size.height * 0.3687963,
        size.width * 0.4584259,
        size.height * 0.3714815);
    path_1.cubicTo(
        size.width * 0.4592593,
        size.height * 0.3813889,
        size.width * 0.4601852,
        size.height * 0.3912963,
        size.width * 0.4610185,
        size.height * 0.4012037);
    path_1.cubicTo(
        size.width * 0.4614815,
        size.height * 0.4069444,
        size.width * 0.4620370,
        size.height * 0.4125926,
        size.width * 0.4624074,
        size.height * 0.4183333);
    path_1.cubicTo(
        size.width * 0.4625000,
        size.height * 0.4195370,
        size.width * 0.4627778,
        size.height * 0.4199074,
        size.width * 0.4640741,
        size.height * 0.4199074);
    path_1.cubicTo(
        size.width * 0.4800000,
        size.height * 0.4199074,
        size.width * 0.4960185,
        size.height * 0.4199074,
        size.width * 0.5119444,
        size.height * 0.4199074);
    path_1.cubicTo(
        size.width * 0.5130556,
        size.height * 0.4199074,
        size.width * 0.5135185,
        size.height * 0.4195370,
        size.width * 0.5137963,
        size.height * 0.4185185);
    path_1.cubicTo(
        size.width * 0.5139815,
        size.height * 0.4177778,
        size.width * 0.5143519,
        size.height * 0.4172222,
        size.width * 0.5145370,
        size.height * 0.4164815);
    path_1.cubicTo(
        size.width * 0.5150926,
        size.height * 0.4140741,
        size.width * 0.5161111,
        size.height * 0.4125926,
        size.width * 0.5188889,
        size.height * 0.4131481);
    path_1.cubicTo(
        size.width * 0.5191667,
        size.height * 0.4132407,
        size.width * 0.5198148,
        size.height * 0.4128704,
        size.width * 0.5199074,
        size.height * 0.4125926);
    path_1.cubicTo(
        size.width * 0.5215741,
        size.height * 0.4082407,
        size.width * 0.5231481,
        size.height * 0.4038889,
        size.width * 0.5248148,
        size.height * 0.3995370);
    path_1.cubicTo(
        size.width * 0.5248148,
        size.height * 0.3994444,
        size.width * 0.5248148,
        size.height * 0.3993519,
        size.width * 0.5248148,
        size.height * 0.3993519);
    path_1.cubicTo(
        size.width * 0.5232407,
        size.height * 0.3983333,
        size.width * 0.5218519,
        size.height * 0.3970370,
        size.width * 0.5201852,
        size.height * 0.3963889);
    path_1.cubicTo(
        size.width * 0.5185185,
        size.height * 0.3956481,
        size.width * 0.5165741,
        size.height * 0.3951852,
        size.width * 0.5148148,
        size.height * 0.3950926);
    path_1.cubicTo(
        size.width * 0.5112963,
        size.height * 0.3949074,
        size.width * 0.5077778,
        size.height * 0.3951852,
        size.width * 0.5042593,
        size.height * 0.3952778);
    path_1.cubicTo(
        size.width * 0.5027778,
        size.height * 0.3952778,
        size.width * 0.5012963,
        size.height * 0.3950926,
        size.width * 0.5006481,
        size.height * 0.3935185);
    path_1.cubicTo(
        size.width * 0.5000000,
        size.height * 0.3918519,
        size.width * 0.5008333,
        size.height * 0.3905556,
        size.width * 0.5020370,
        size.height * 0.3895370);
    path_1.cubicTo(
        size.width * 0.5037037,
        size.height * 0.3879630,
        size.width * 0.5059259,
        size.height * 0.3874074,
        size.width * 0.5081481,
        size.height * 0.3873148);
    path_1.cubicTo(
        size.width * 0.5115741,
        size.height * 0.3872222,
        size.width * 0.5149074,
        size.height * 0.3872222,
        size.width * 0.5183333,
        size.height * 0.3871296);
    path_1.cubicTo(
        size.width * 0.5246296,
        size.height * 0.3869444,
        size.width * 0.5304630,
        size.height * 0.3854630,
        size.width * 0.5362037,
        size.height * 0.3827778);
    path_1.cubicTo(
        size.width * 0.5379630,
        size.height * 0.3819444,
        size.width * 0.5401852,
        size.height * 0.3813889,
        size.width * 0.5421296,
        size.height * 0.3814815);
    path_1.cubicTo(
        size.width * 0.5475000,
        size.height * 0.3817593,
        size.width * 0.5503704,
        size.height * 0.3859259,
        size.width * 0.5491667,
        size.height * 0.3912963);
    path_1.cubicTo(
        size.width * 0.5479630,
        size.height * 0.3965741,
        size.width * 0.5451852,
        size.height * 0.3987037,
        size.width * 0.5397222,
        size.height * 0.3987037);
    path_1.cubicTo(
        size.width * 0.5369444,
        size.height * 0.3987037,
        size.width * 0.5340741,
        size.height * 0.3990741,
        size.width * 0.5312963,
        size.height * 0.3993519);
    path_1.cubicTo(
        size.width * 0.5309259,
        size.height * 0.3993519,
        size.width * 0.5302778,
        size.height * 0.3999074,
        size.width * 0.5301852,
        size.height * 0.4002778);
    path_1.cubicTo(
        size.width * 0.5286111,
        size.height * 0.4043519,
        size.width * 0.5272222,
        size.height * 0.4085185,
        size.width * 0.5257407,
        size.height * 0.4125926);
    path_1.cubicTo(
        size.width * 0.5256481,
        size.height * 0.4127778,
        size.width * 0.5257407,
        size.height * 0.4128704,
        size.width * 0.5256481,
        size.height * 0.4132407);
    path_1.lineTo(size.width * 0.5359259, size.height * 0.4132407);
    path_1.cubicTo(
        size.width * 0.5271296,
        size.height * 0.4371296,
        size.width * 0.5183333,
        size.height * 0.4607407,
        size.width * 0.5095370,
        size.height * 0.4846296);
    path_1.lineTo(size.width * 0.5118519, size.height * 0.4846296);
    path_1.cubicTo(
        size.width * 0.5207407,
        size.height * 0.4846296,
        size.width * 0.5296296,
        size.height * 0.4846296,
        size.width * 0.5385185,
        size.height * 0.4846296);
    path_1.cubicTo(
        size.width * 0.5491667,
        size.height * 0.4846296,
        size.width * 0.5599074,
        size.height * 0.4846296,
        size.width * 0.5705556,
        size.height * 0.4846296);
    path_1.cubicTo(
        size.width * 0.5746296,
        size.height * 0.4846296,
        size.width * 0.5776852,
        size.height * 0.4862037,
        size.width * 0.5794444,
        size.height * 0.4899074);
    path_1.cubicTo(
        size.width * 0.5821296,
        size.height * 0.4958333,
        size.width * 0.5778704,
        size.height * 0.5024074,
        size.width * 0.5712037,
        size.height * 0.5024074);
    path_1.cubicTo(
        size.width * 0.5566667,
        size.height * 0.5024074,
        size.width * 0.5421296,
        size.height * 0.5023148,
        size.width * 0.5276852,
        size.height * 0.5023148);
    path_1.cubicTo(
        size.width * 0.5112037,
        size.height * 0.5023148,
        size.width * 0.4946296,
        size.height * 0.5024074,
        size.width * 0.4781481,
        size.height * 0.5024074);
    path_1.cubicTo(
        size.width * 0.4734259,
        size.height * 0.5024074,
        size.width * 0.4687037,
        size.height * 0.5024074,
        size.width * 0.4639815,
        size.height * 0.5024074);
    path_1.cubicTo(
        size.width * 0.4587963,
        size.height * 0.5024074,
        size.width * 0.4547222,
        size.height * 0.4984259,
        size.width * 0.4547222,
        size.height * 0.4934259);
    path_1.cubicTo(
        size.width * 0.4547222,
        size.height * 0.4886111,
        size.width * 0.4586111,
        size.height * 0.4847222,
        size.width * 0.4637037,
        size.height * 0.4846296);
    path_1.cubicTo(
        size.width * 0.4715741,
        size.height * 0.4845370,
        size.width * 0.4795370,
        size.height * 0.4845370,
        size.width * 0.4874074,
        size.height * 0.4846296);
    path_1.cubicTo(
        size.width * 0.4889815,
        size.height * 0.4846296,
        size.width * 0.4897222,
        size.height * 0.4842593,
        size.width * 0.4902778,
        size.height * 0.4826852);
    path_1.cubicTo(
        size.width * 0.4949074,
        size.height * 0.4700926,
        size.width * 0.4995370,
        size.height * 0.4575000,
        size.width * 0.5042593,
        size.height * 0.4449074);
    path_1.cubicTo(
        size.width * 0.5049074,
        size.height * 0.4432407,
        size.width * 0.5046296,
        size.height * 0.4423148,
        size.width * 0.5035185,
        size.height * 0.4408333);
    path_1.cubicTo(
        size.width * 0.5012037,
        size.height * 0.4376852,
        size.width * 0.4984259,
        size.height * 0.4368519,
        size.width * 0.4945370,
        size.height * 0.4369444);
    path_1.cubicTo(
        size.width * 0.4812963,
        size.height * 0.4372222,
        size.width * 0.4680556,
        size.height * 0.4370370,
        size.width * 0.4548148,
        size.height * 0.4370370);
    path_1.lineTo(size.width * 0.4529630, size.height * 0.4370370);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6425000, size.height * 0.5902778);
    path_2.cubicTo(
        size.width * 0.6228704,
        size.height * 0.6145370,
        size.width * 0.5964815,
        size.height * 0.6242593,
        size.width * 0.5662037,
        size.height * 0.6259259);
    path_2.cubicTo(
        size.width * 0.5431481,
        size.height * 0.6271296,
        size.width * 0.5208333,
        size.height * 0.6220370,
        size.width * 0.4983333,
        size.height * 0.6190741);
    path_2.cubicTo(
        size.width * 0.4720370,
        size.height * 0.6155556,
        size.width * 0.4456481,
        size.height * 0.6125000,
        size.width * 0.4193519,
        size.height * 0.6200000);
    path_2.cubicTo(
        size.width * 0.4120370,
        size.height * 0.6221296,
        size.width * 0.4053704,
        size.height * 0.6256481,
        size.width * 0.3983333,
        size.height * 0.6286111);
    path_2.cubicTo(
        size.width * 0.4137037,
        size.height * 0.6096296,
        size.width * 0.4337963,
        size.height * 0.5992593,
        size.width * 0.4575000,
        size.height * 0.5952778);
    path_2.cubicTo(
        size.width * 0.4849074,
        size.height * 0.5906481,
        size.width * 0.5117593,
        size.height * 0.5957407,
        size.width * 0.5387037,
        size.height * 0.5998148);
    path_2.cubicTo(
        size.width * 0.5647222,
        size.height * 0.6037963,
        size.width * 0.5908333,
        size.height * 0.6064815,
        size.width * 0.6170370,
        size.height * 0.6003704);
    path_2.cubicTo(
        size.width * 0.6261111,
        size.height * 0.5983333,
        size.width * 0.6343519,
        size.height * 0.5944444,
        size.width * 0.6425000,
        size.height * 0.5902778);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
