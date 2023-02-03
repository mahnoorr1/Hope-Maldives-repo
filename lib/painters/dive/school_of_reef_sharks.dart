import 'package:flutter/material.dart';

class SchoolOfReefSharksPainter extends CustomPainter {
  final Color? color;
  SchoolOfReefSharksPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4019444, size.height * 0.5501852);
    path_0.cubicTo(
        size.width * 0.4032407,
        size.height * 0.5497222,
        size.width * 0.4045370,
        size.height * 0.5491667,
        size.width * 0.4059259,
        size.height * 0.5487963);
    path_0.cubicTo(
        size.width * 0.4155556,
        size.height * 0.5462963,
        size.width * 0.4206481,
        size.height * 0.5387963,
        size.width * 0.4192593,
        size.height * 0.5287037);
    path_0.cubicTo(
        size.width * 0.4187037,
        size.height * 0.5250926,
        size.width * 0.4178704,
        size.height * 0.5213889,
        size.width * 0.4165741,
        size.height * 0.5179630);
    path_0.cubicTo(
        size.width * 0.4153704,
        size.height * 0.5147222,
        size.width * 0.4132407,
        size.height * 0.5118519,
        size.width * 0.4112963,
        size.height * 0.5083333);
    path_0.cubicTo(
        size.width * 0.4171296,
        size.height * 0.5077778,
        size.width * 0.4222222,
        size.height * 0.5096296,
        size.width * 0.4262037,
        size.height * 0.5131481);
    path_0.cubicTo(
        size.width * 0.4349074,
        size.height * 0.5208333,
        size.width * 0.4430556,
        size.height * 0.5289815,
        size.width * 0.4514815,
        size.height * 0.5369444);
    path_0.cubicTo(
        size.width * 0.4519444,
        size.height * 0.5374074,
        size.width * 0.4524074,
        size.height * 0.5378704,
        size.width * 0.4527778,
        size.height * 0.5385185);
    path_0.cubicTo(
        size.width * 0.4596296,
        size.height * 0.5487963,
        size.width * 0.4699074,
        size.height * 0.5494444,
        size.width * 0.4808333,
        size.height * 0.5489815);
    path_0.cubicTo(
        size.width * 0.5093519,
        size.height * 0.5477778,
        size.width * 0.5379630,
        size.height * 0.5465741,
        size.width * 0.5664815,
        size.height * 0.5457407);
    path_0.cubicTo(
        size.width * 0.6023148,
        size.height * 0.5447222,
        size.width * 0.6381481,
        size.height * 0.5437963,
        size.width * 0.6735185,
        size.height * 0.5518519);
    path_0.cubicTo(
        size.width * 0.6866667,
        size.height * 0.5548148,
        size.width * 0.6996296,
        size.height * 0.5585185,
        size.width * 0.7112037,
        size.height * 0.5657407);
    path_0.cubicTo(
        size.width * 0.7150926,
        size.height * 0.5681481,
        size.width * 0.7187963,
        size.height * 0.5713889,
        size.width * 0.7219444,
        size.height * 0.5747222);
    path_0.cubicTo(
        size.width * 0.7258333,
        size.height * 0.5788889,
        size.width * 0.7254630,
        size.height * 0.5821296,
        size.width * 0.7206481,
        size.height * 0.5850926);
    path_0.cubicTo(
        size.width * 0.7159259,
        size.height * 0.5879630,
        size.width * 0.7109259,
        size.height * 0.5906481,
        size.width * 0.7056481,
        size.height * 0.5920370);
    path_0.cubicTo(
        size.width * 0.6840741,
        size.height * 0.5976852,
        size.width * 0.6625000,
        size.height * 0.6042593,
        size.width * 0.6405556,
        size.height * 0.6079630);
    path_0.cubicTo(
        size.width * 0.6044444,
        size.height * 0.6140741,
        size.width * 0.5694444,
        size.height * 0.6072222,
        size.width * 0.5358333,
        size.height * 0.5936111);
    path_0.cubicTo(
        size.width * 0.5120370,
        size.height * 0.5839815,
        size.width * 0.4882407,
        size.height * 0.5740741,
        size.width * 0.4662963,
        size.height * 0.5603704);
    path_0.cubicTo(
        size.width * 0.4597222,
        size.height * 0.5562963,
        size.width * 0.4521296,
        size.height * 0.5557407,
        size.width * 0.4443519,
        size.height * 0.5562037);
    path_0.cubicTo(
        size.width * 0.4315741,
        size.height * 0.5569444,
        size.width * 0.4187963,
        size.height * 0.5573148,
        size.width * 0.4063889,
        size.height * 0.5532407);
    path_0.cubicTo(
        size.width * 0.4049074,
        size.height * 0.5527778,
        size.width * 0.4034259,
        size.height * 0.5521296,
        size.width * 0.4020370,
        size.height * 0.5514815);
    path_0.cubicTo(
        size.width * 0.4018519,
        size.height * 0.5510185,
        size.width * 0.4018519,
        size.height * 0.5506481,
        size.width * 0.4019444,
        size.height * 0.5501852);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2923148, size.height * 0.5763889);
    path_1.cubicTo(
        size.width * 0.2979630,
        size.height * 0.5755556,
        size.width * 0.3035185,
        size.height * 0.5748148,
        size.width * 0.3091667,
        size.height * 0.5738889);
    path_1.cubicTo(
        size.width * 0.3129630,
        size.height * 0.5732407,
        size.width * 0.3168519,
        size.height * 0.5726852,
        size.width * 0.3204630,
        size.height * 0.5715741);
    path_1.cubicTo(
        size.width * 0.3309259,
        size.height * 0.5685185,
        size.width * 0.3346296,
        size.height * 0.5615741,
        size.width * 0.3316667,
        size.height * 0.5510185);
    path_1.cubicTo(
        size.width * 0.3312963,
        size.height * 0.5496296,
        size.width * 0.3309259,
        size.height * 0.5482407,
        size.width * 0.3305556,
        size.height * 0.5468519);
    path_1.cubicTo(
        size.width * 0.3311111,
        size.height * 0.5463889,
        size.width * 0.3316667,
        size.height * 0.5459259,
        size.width * 0.3321296,
        size.height * 0.5455556);
    path_1.cubicTo(
        size.width * 0.3337037,
        size.height * 0.5476852,
        size.width * 0.3350000,
        size.height * 0.5501852,
        size.width * 0.3369444,
        size.height * 0.5519444);
    path_1.cubicTo(
        size.width * 0.3412963,
        size.height * 0.5561111,
        size.width * 0.3459259,
        size.height * 0.5600926,
        size.width * 0.3505556,
        size.height * 0.5638889);
    path_1.cubicTo(
        size.width * 0.3579630,
        size.height * 0.5700000,
        size.width * 0.3660185,
        size.height * 0.5728704,
        size.width * 0.3761111,
        size.height * 0.5717593);
    path_1.cubicTo(
        size.width * 0.4047222,
        size.height * 0.5686111,
        size.width * 0.4325000,
        size.height * 0.5735185,
        size.width * 0.4594444,
        size.height * 0.5831481);
    path_1.cubicTo(
        size.width * 0.4603704,
        size.height * 0.5835185,
        size.width * 0.4612963,
        size.height * 0.5837963,
        size.width * 0.4628704,
        size.height * 0.5842593);
    path_1.cubicTo(
        size.width * 0.4633333,
        size.height * 0.5811111,
        size.width * 0.4637963,
        size.height * 0.5781481,
        size.width * 0.4642593,
        size.height * 0.5750000);
    path_1.cubicTo(
        size.width * 0.4742593,
        size.height * 0.5778704,
        size.width * 0.4805556,
        size.height * 0.5849074,
        size.width * 0.4862963,
        size.height * 0.5927778);
    path_1.cubicTo(
        size.width * 0.4886111,
        size.height * 0.5959259,
        size.width * 0.4913889,
        size.height * 0.5989815,
        size.width * 0.4945370,
        size.height * 0.6012037);
    path_1.cubicTo(
        size.width * 0.5077778,
        size.height * 0.6108333,
        size.width * 0.5193519,
        size.height * 0.6219444,
        size.width * 0.5258333,
        size.height * 0.6373148);
    path_1.cubicTo(
        size.width * 0.5267593,
        size.height * 0.6396296,
        size.width * 0.5275000,
        size.height * 0.6419444,
        size.width * 0.5283333,
        size.height * 0.6445370);
    path_1.cubicTo(
        size.width * 0.5210185,
        size.height * 0.6477778,
        size.width * 0.5138889,
        size.height * 0.6466667,
        size.width * 0.5071296,
        size.height * 0.6449074);
    path_1.cubicTo(
        size.width * 0.4985185,
        size.height * 0.6427778,
        size.width * 0.4897222,
        size.height * 0.6404630,
        size.width * 0.4818519,
        size.height * 0.6365741);
    path_1.cubicTo(
        size.width * 0.4699074,
        size.height * 0.6305556,
        size.width * 0.4576852,
        size.height * 0.6300926,
        size.width * 0.4435185,
        size.height * 0.6322222);
    path_1.cubicTo(
        size.width * 0.4464815,
        size.height * 0.6303704,
        size.width * 0.4483333,
        size.height * 0.6292593,
        size.width * 0.4500926,
        size.height * 0.6281481);
    path_1.cubicTo(
        size.width * 0.4519444,
        size.height * 0.6270370,
        size.width * 0.4537037,
        size.height * 0.6259259,
        size.width * 0.4563889,
        size.height * 0.6242593);
    path_1.cubicTo(
        size.width * 0.4479630,
        size.height * 0.6196296,
        size.width * 0.4401852,
        size.height * 0.6150000,
        size.width * 0.4321296,
        size.height * 0.6109259);
    path_1.cubicTo(
        size.width * 0.4137037,
        size.height * 0.6014815,
        size.width * 0.3952778,
        size.height * 0.5920370,
        size.width * 0.3766667,
        size.height * 0.5831481);
    path_1.cubicTo(
        size.width * 0.3637037,
        size.height * 0.5770370,
        size.width * 0.3497222,
        size.height * 0.5784259,
        size.width * 0.3359259,
        size.height * 0.5793519);
    path_1.cubicTo(
        size.width * 0.3228704,
        size.height * 0.5801852,
        size.width * 0.3097222,
        size.height * 0.5820370,
        size.width * 0.2967593,
        size.height * 0.5788889);
    path_1.cubicTo(
        size.width * 0.2952778,
        size.height * 0.5785185,
        size.width * 0.2938889,
        size.height * 0.5780556,
        size.width * 0.2924074,
        size.height * 0.5776852);
    path_1.cubicTo(
        size.width * 0.2924074,
        size.height * 0.5773148,
        size.width * 0.2923148,
        size.height * 0.5768519,
        size.width * 0.2923148,
        size.height * 0.5763889);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6412037, size.height * 0.4936111);
    path_2.cubicTo(
        size.width * 0.6381481,
        size.height * 0.4964815,
        size.width * 0.6356481,
        size.height * 0.5004630,
        size.width * 0.6319444,
        size.height * 0.5021296);
    path_2.cubicTo(
        size.width * 0.6240741,
        size.height * 0.5057407,
        size.width * 0.6158333,
        size.height * 0.5096296,
        size.width * 0.6075000,
        size.height * 0.5105556);
    path_2.cubicTo(
        size.width * 0.5971296,
        size.height * 0.5116667,
        size.width * 0.5895370,
        size.height * 0.5162963,
        size.width * 0.5825926,
        size.height * 0.5232407);
    path_2.cubicTo(
        size.width * 0.5820370,
        size.height * 0.5237963,
        size.width * 0.5813889,
        size.height * 0.5243519,
        size.width * 0.5799074,
        size.height * 0.5256481);
    path_2.cubicTo(
        size.width * 0.5812963,
        size.height * 0.5206481,
        size.width * 0.5824074,
        size.height * 0.5166667,
        size.width * 0.5834259,
        size.height * 0.5128704);
    path_2.cubicTo(
        size.width * 0.5706481,
        size.height * 0.5115741,
        size.width * 0.5582407,
        size.height * 0.5107407,
        size.width * 0.5460185,
        size.height * 0.5090741);
    path_2.cubicTo(
        size.width * 0.5349074,
        size.height * 0.5075000,
        size.width * 0.5235185,
        size.height * 0.5061111,
        size.width * 0.5128704,
        size.height * 0.5026852);
    path_2.cubicTo(
        size.width * 0.4994444,
        size.height * 0.4984259,
        size.width * 0.4871296,
        size.height * 0.5009259,
        size.width * 0.4744444,
        size.height * 0.5050000);
    path_2.cubicTo(
        size.width * 0.4655556,
        size.height * 0.5078704,
        size.width * 0.4563889,
        size.height * 0.5100926,
        size.width * 0.4473148,
        size.height * 0.5122222);
    path_2.cubicTo(
        size.width * 0.4446296,
        size.height * 0.5128704,
        size.width * 0.4416667,
        size.height * 0.5123148,
        size.width * 0.4387963,
        size.height * 0.5123148);
    path_2.cubicTo(
        size.width * 0.4386111,
        size.height * 0.5118519,
        size.width * 0.4384259,
        size.height * 0.5113889,
        size.width * 0.4382407,
        size.height * 0.5109259);
    path_2.cubicTo(
        size.width * 0.4409259,
        size.height * 0.5095370,
        size.width * 0.4435185,
        size.height * 0.5080556,
        size.width * 0.4462037,
        size.height * 0.5067593);
    path_2.cubicTo(
        size.width * 0.4497222,
        size.height * 0.5050926,
        size.width * 0.4533333,
        size.height * 0.5037037,
        size.width * 0.4566667,
        size.height * 0.5018519);
    path_2.cubicTo(
        size.width * 0.4663889,
        size.height * 0.4963889,
        size.width * 0.4695370,
        size.height * 0.4886111,
        size.width * 0.4666667,
        size.height * 0.4775926);
    path_2.cubicTo(
        size.width * 0.4660185,
        size.height * 0.4750000,
        size.width * 0.4650000,
        size.height * 0.4725926,
        size.width * 0.4641667,
        size.height * 0.4700926);
    path_2.cubicTo(
        size.width * 0.4646296,
        size.height * 0.4696296,
        size.width * 0.4651852,
        size.height * 0.4691667,
        size.width * 0.4656481,
        size.height * 0.4687037);
    path_2.cubicTo(
        size.width * 0.4664815,
        size.height * 0.4700926,
        size.width * 0.4669444,
        size.height * 0.4718519,
        size.width * 0.4680556,
        size.height * 0.4728704);
    path_2.cubicTo(
        size.width * 0.4720370,
        size.height * 0.4767593,
        size.width * 0.4760185,
        size.height * 0.4805556,
        size.width * 0.4802778,
        size.height * 0.4841667);
    path_2.cubicTo(
        size.width * 0.4877778,
        size.height * 0.4904630,
        size.width * 0.4950926,
        size.height * 0.4929630,
        size.width * 0.5053704,
        size.height * 0.4881481);
    path_2.cubicTo(
        size.width * 0.5242593,
        size.height * 0.4793519,
        size.width * 0.5442593,
        size.height * 0.4733333,
        size.width * 0.5656481,
        size.height * 0.4708333);
    path_2.cubicTo(
        size.width * 0.5645370,
        size.height * 0.4673148,
        size.width * 0.5636111,
        size.height * 0.4642593,
        size.width * 0.5625000,
        size.height * 0.4608333);
    path_2.cubicTo(
        size.width * 0.5699074,
        size.height * 0.4593519,
        size.width * 0.5759259,
        size.height * 0.4620370,
        size.width * 0.5812037,
        size.height * 0.4658333);
    path_2.cubicTo(
        size.width * 0.5862037,
        size.height * 0.4694444,
        size.width * 0.5914815,
        size.height * 0.4709259,
        size.width * 0.5974074,
        size.height * 0.4718519);
    path_2.cubicTo(
        size.width * 0.6139815,
        size.height * 0.4743519,
        size.width * 0.6321296,
        size.height * 0.4834259,
        size.width * 0.6412037,
        size.height * 0.4936111);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.2706481, size.height * 0.4970370);
    path_3.cubicTo(
        size.width * 0.2750926,
        size.height * 0.4879630,
        size.width * 0.2743519,
        size.height * 0.4847222,
        size.width * 0.2653704,
        size.height * 0.4772222);
    path_3.cubicTo(
        size.width * 0.2706481,
        size.height * 0.4744444,
        size.width * 0.2760185,
        size.height * 0.4751852,
        size.width * 0.2801852,
        size.height * 0.4779630);
    path_3.cubicTo(
        size.width * 0.2891667,
        size.height * 0.4839815,
        size.width * 0.2984259,
        size.height * 0.4829630,
        size.width * 0.3085185,
        size.height * 0.4822222);
    path_3.cubicTo(
        size.width * 0.3401852,
        size.height * 0.4799074,
        size.width * 0.3689815,
        size.height * 0.4877778,
        size.width * 0.3927778,
        size.height * 0.5097222);
    path_3.cubicTo(
        size.width * 0.3959259,
        size.height * 0.5125926,
        size.width * 0.3987037,
        size.height * 0.5162037,
        size.width * 0.4008333,
        size.height * 0.5200000);
    path_3.cubicTo(
        size.width * 0.4041667,
        size.height * 0.5258333,
        size.width * 0.4025926,
        size.height * 0.5284259,
        size.width * 0.3960185,
        size.height * 0.5275000);
    path_3.cubicTo(
        size.width * 0.3868519,
        size.height * 0.5262963,
        size.width * 0.3777778,
        size.height * 0.5245370,
        size.width * 0.3687037,
        size.height * 0.5225926);
    path_3.cubicTo(
        size.width * 0.3542593,
        size.height * 0.5195370,
        size.width * 0.3412963,
        size.height * 0.5126852,
        size.width * 0.3284259,
        size.height * 0.5056481);
    path_3.cubicTo(
        size.width * 0.3182407,
        size.height * 0.5000926,
        size.width * 0.3076852,
        size.height * 0.4953704,
        size.width * 0.2972222,
        size.height * 0.4902778);
    path_3.cubicTo(
        size.width * 0.2931481,
        size.height * 0.4882407,
        size.width * 0.2891667,
        size.height * 0.4885185,
        size.width * 0.2850926,
        size.height * 0.4904630);
    path_3.cubicTo(
        size.width * 0.2802778,
        size.height * 0.4927778,
        size.width * 0.2754630,
        size.height * 0.4949074,
        size.width * 0.2706481,
        size.height * 0.4970370);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3566667, size.height * 0.4469444);
    path_4.cubicTo(
        size.width * 0.3586111,
        size.height * 0.4370370,
        size.width * 0.3553704,
        size.height * 0.4303704,
        size.width * 0.3465741,
        size.height * 0.4265741);
    path_4.cubicTo(
        size.width * 0.3466667,
        size.height * 0.4261111,
        size.width * 0.3467593,
        size.height * 0.4257407,
        size.width * 0.3468519,
        size.height * 0.4252778);
    path_4.cubicTo(
        size.width * 0.3498148,
        size.height * 0.4254630,
        size.width * 0.3530556,
        size.height * 0.4248148,
        size.width * 0.3555556,
        size.height * 0.4259259);
    path_4.cubicTo(
        size.width * 0.3609259,
        size.height * 0.4282407,
        size.width * 0.3659259,
        size.height * 0.4312963,
        size.width * 0.3709259,
        size.height * 0.4344444);
    path_4.cubicTo(
        size.width * 0.3740741,
        size.height * 0.4364815,
        size.width * 0.3768519,
        size.height * 0.4372222,
        size.width * 0.3807407,
        size.height * 0.4367593);
    path_4.cubicTo(
        size.width * 0.4020370,
        size.height * 0.4340741,
        size.width * 0.4234259,
        size.height * 0.4300000,
        size.width * 0.4450000,
        size.height * 0.4324074);
    path_4.cubicTo(
        size.width * 0.4544444,
        size.height * 0.4334259,
        size.width * 0.4637037,
        size.height * 0.4362963,
        size.width * 0.4729630,
        size.height * 0.4386111);
    path_4.cubicTo(
        size.width * 0.4753704,
        size.height * 0.4391667,
        size.width * 0.4778704,
        size.height * 0.4403704,
        size.width * 0.4795370,
        size.height * 0.4421296);
    path_4.cubicTo(
        size.width * 0.4821296,
        size.height * 0.4447222,
        size.width * 0.4840741,
        size.height * 0.4479630,
        size.width * 0.4862963,
        size.height * 0.4509259);
    path_4.cubicTo(
        size.width * 0.4833333,
        size.height * 0.4525000,
        size.width * 0.4805556,
        size.height * 0.4546296,
        size.width * 0.4774074,
        size.height * 0.4555556);
    path_4.cubicTo(
        size.width * 0.4502778,
        size.height * 0.4632407,
        size.width * 0.4236111,
        size.height * 0.4620370,
        size.width * 0.3975926,
        size.height * 0.4504630);
    path_4.cubicTo(
        size.width * 0.3919444,
        size.height * 0.4479630,
        size.width * 0.3859259,
        size.height * 0.4462037,
        size.width * 0.3802778,
        size.height * 0.4436111);
    path_4.cubicTo(
        size.width * 0.3756481,
        size.height * 0.4414815,
        size.width * 0.3713889,
        size.height * 0.4410185,
        size.width * 0.3667593,
        size.height * 0.4432407);
    path_4.cubicTo(
        size.width * 0.3637963,
        size.height * 0.4447222,
        size.width * 0.3605556,
        size.height * 0.4455556,
        size.width * 0.3566667,
        size.height * 0.4469444);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.2847222, size.height * 0.4311111);
    path_5.cubicTo(
        size.width * 0.2851852,
        size.height * 0.4290741,
        size.width * 0.2854630,
        size.height * 0.4275000,
        size.width * 0.2862037,
        size.height * 0.4241667);
    path_5.cubicTo(
        size.width * 0.2900926,
        size.height * 0.4280556,
        size.width * 0.2932407,
        size.height * 0.4312963,
        size.width * 0.2964815,
        size.height * 0.4343519);
    path_5.cubicTo(
        size.width * 0.2988889,
        size.height * 0.4365741,
        size.width * 0.3013889,
        size.height * 0.4387963,
        size.width * 0.3041667,
        size.height * 0.4404630);
    path_5.cubicTo(
        size.width * 0.3134259,
        size.height * 0.4459259,
        size.width * 0.3228704,
        size.height * 0.4510185,
        size.width * 0.3322222,
        size.height * 0.4562963);
    path_5.cubicTo(
        size.width * 0.3328704,
        size.height * 0.4566667,
        size.width * 0.3334259,
        size.height * 0.4573148,
        size.width * 0.3353704,
        size.height * 0.4590741);
    path_5.cubicTo(
        size.width * 0.3299074,
        size.height * 0.4612037,
        size.width * 0.3254630,
        size.height * 0.4637963,
        size.width * 0.3207407,
        size.height * 0.4643519);
    path_5.cubicTo(
        size.width * 0.3146296,
        size.height * 0.4650926,
        size.width * 0.3084259,
        size.height * 0.4640741,
        size.width * 0.3022222,
        size.height * 0.4639815);
    path_5.cubicTo(
        size.width * 0.2950926,
        size.height * 0.4638889,
        size.width * 0.2879630,
        size.height * 0.4639815,
        size.width * 0.2799074,
        size.height * 0.4633333);
    path_5.cubicTo(
        size.width * 0.2819444,
        size.height * 0.4622222,
        size.width * 0.2839815,
        size.height * 0.4610185,
        size.width * 0.2851852,
        size.height * 0.4603704);
    path_5.cubicTo(
        size.width * 0.2750926,
        size.height * 0.4524074,
        size.width * 0.2653704,
        size.height * 0.4454630,
        size.width * 0.2565741,
        size.height * 0.4375926);
    path_5.cubicTo(
        size.width * 0.2511111,
        size.height * 0.4326852,
        size.width * 0.2461111,
        size.height * 0.4269444,
        size.width * 0.2422222,
        size.height * 0.4207407);
    path_5.cubicTo(
        size.width * 0.2357407,
        size.height * 0.4104630,
        size.width * 0.2265741,
        size.height * 0.4038889,
        size.width * 0.2162963,
        size.height * 0.3981481);
    path_5.cubicTo(
        size.width * 0.2105556,
        size.height * 0.3949074,
        size.width * 0.2050926,
        size.height * 0.3912037,
        size.width * 0.1994444,
        size.height * 0.3876852);
    path_5.cubicTo(
        size.width * 0.1997222,
        size.height * 0.3871296,
        size.width * 0.2000000,
        size.height * 0.3864815,
        size.width * 0.2003704,
        size.height * 0.3858333);
    path_5.cubicTo(
        size.width * 0.2032407,
        size.height * 0.3867593,
        size.width * 0.2061111,
        size.height * 0.3876852,
        size.width * 0.2088889,
        size.height * 0.3887037);
    path_5.cubicTo(
        size.width * 0.2203704,
        size.height * 0.3927778,
        size.width * 0.2241667,
        size.height * 0.3907407,
        size.width * 0.2271296,
        size.height * 0.3780556);
    path_5.cubicTo(
        size.width * 0.2286111,
        size.height * 0.3839815,
        size.width * 0.2300000,
        size.height * 0.3890741,
        size.width * 0.2312037,
        size.height * 0.3941667);
    path_5.cubicTo(
        size.width * 0.2329630,
        size.height * 0.4015741,
        size.width * 0.2367593,
        size.height * 0.4068519,
        size.width * 0.2441667,
        size.height * 0.4102778);
    path_5.cubicTo(
        size.width * 0.2559259,
        size.height * 0.4156481,
        size.width * 0.2671296,
        size.height * 0.4221296,
        size.width * 0.2786111,
        size.height * 0.4281481);
    path_5.cubicTo(
        size.width * 0.2805556,
        size.height * 0.4292593,
        size.width * 0.2825926,
        size.height * 0.4300926,
        size.width * 0.2847222,
        size.height * 0.4311111);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4544444, size.height * 0.4125926);
    path_6.cubicTo(
        size.width * 0.4590741,
        size.height * 0.4043519,
        size.width * 0.4556481,
        size.height * 0.3990741,
        size.width * 0.4495370,
        size.height * 0.3947222);
    path_6.cubicTo(
        size.width * 0.4496296,
        size.height * 0.3943519,
        size.width * 0.4498148,
        size.height * 0.3938889,
        size.width * 0.4499074,
        size.height * 0.3935185);
    path_6.cubicTo(
        size.width * 0.4528704,
        size.height * 0.3942593,
        size.width * 0.4562963,
        size.height * 0.3943519,
        size.width * 0.4587963,
        size.height * 0.3959259);
    path_6.cubicTo(
        size.width * 0.4631481,
        size.height * 0.3986111,
        size.width * 0.4668519,
        size.height * 0.4025000,
        size.width * 0.4711111,
        size.height * 0.4054630);
    path_6.cubicTo(
        size.width * 0.4734259,
        size.height * 0.4071296,
        size.width * 0.4762037,
        size.height * 0.4085185,
        size.width * 0.4789815,
        size.height * 0.4090741);
    path_6.cubicTo(
        size.width * 0.4984259,
        size.height * 0.4130556,
        size.width * 0.5180556,
        size.height * 0.4159259,
        size.width * 0.5372222,
        size.height * 0.4209259);
    path_6.cubicTo(
        size.width * 0.5479630,
        size.height * 0.4237037,
        size.width * 0.5579630,
        size.height * 0.4295370,
        size.width * 0.5678704,
        size.height * 0.4347222);
    path_6.cubicTo(
        size.width * 0.5710185,
        size.height * 0.4363889,
        size.width * 0.5727778,
        size.height * 0.4405556,
        size.width * 0.5751852,
        size.height * 0.4436111);
    path_6.cubicTo(
        size.width * 0.5719444,
        size.height * 0.4447222,
        size.width * 0.5687963,
        size.height * 0.4462963,
        size.width * 0.5655556,
        size.height * 0.4467593);
    path_6.cubicTo(
        size.width * 0.5386111,
        size.height * 0.4503704,
        size.width * 0.5152778,
        size.height * 0.4412037,
        size.width * 0.4937037,
        size.height * 0.4260185);
    path_6.cubicTo(
        size.width * 0.4876852,
        size.height * 0.4217593,
        size.width * 0.4816667,
        size.height * 0.4173148,
        size.width * 0.4752778,
        size.height * 0.4137037);
    path_6.cubicTo(
        size.width * 0.4724074,
        size.height * 0.4121296,
        size.width * 0.4686111,
        size.height * 0.4119444,
        size.width * 0.4651852,
        size.height * 0.4117593);
    path_6.cubicTo(
        size.width * 0.4618519,
        size.height * 0.4114815,
        size.width * 0.4585185,
        size.height * 0.4121296,
        size.width * 0.4544444,
        size.height * 0.4125926);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
