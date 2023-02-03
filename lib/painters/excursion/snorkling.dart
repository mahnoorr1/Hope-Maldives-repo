import 'package:flutter/material.dart';

class SnorklingPainter extends CustomPainter {
  final Color? color;
  SnorklingPainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3798148, size.height * 0.3788889);
    path_0.cubicTo(
        size.width * 0.3783333,
        size.height * 0.3788889,
        size.width * 0.3769444,
        size.height * 0.3789815,
        size.width * 0.3754630,
        size.height * 0.3789815);
    path_0.cubicTo(
        size.width * 0.3688889,
        size.height * 0.3792593,
        size.width * 0.3627778,
        size.height * 0.3741667,
        size.width * 0.3619444,
        size.height * 0.3678704);
    path_0.cubicTo(
        size.width * 0.3612037,
        size.height * 0.3618519,
        size.width * 0.3662037,
        size.height * 0.3558333,
        size.width * 0.3721296,
        size.height * 0.3554630);
    path_0.cubicTo(
        size.width * 0.3787037,
        size.height * 0.3550926,
        size.width * 0.3849074,
        size.height * 0.3602778,
        size.width * 0.3857407,
        size.height * 0.3668519);
    path_0.cubicTo(
        size.width * 0.3859259,
        size.height * 0.3680556,
        size.width * 0.3858333,
        size.height * 0.3693519,
        size.width * 0.3864815,
        size.height * 0.3704630);
    path_0.lineTo(size.width * 0.3798148, size.height * 0.3788889);
    path_0.close();
    path_0.moveTo(size.width * 0.3704630, size.height * 0.3629630);
    path_0.cubicTo(
        size.width * 0.3677778,
        size.height * 0.3662037,
        size.width * 0.3676852,
        size.height * 0.3702778,
        size.width * 0.3701852,
        size.height * 0.3724074);
    path_0.cubicTo(
        size.width * 0.3723148,
        size.height * 0.3741667,
        size.width * 0.3751852,
        size.height * 0.3738889,
        size.width * 0.3770370,
        size.height * 0.3716667);
    path_0.cubicTo(
        size.width * 0.3793519,
        size.height * 0.3689815,
        size.width * 0.3790741,
        size.height * 0.3638889,
        size.width * 0.3765741,
        size.height * 0.3617593);
    path_0.cubicTo(
        size.width * 0.3746296,
        size.height * 0.3601852,
        size.width * 0.3724074,
        size.height * 0.3606481,
        size.width * 0.3704630,
        size.height * 0.3629630);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3908333, size.height * 0.3406481);
    path_1.cubicTo(
        size.width * 0.3875926,
        size.height * 0.3440741,
        size.width * 0.3840741,
        size.height * 0.3473148,
        size.width * 0.3789815,
        size.height * 0.3483333);
    path_1.cubicTo(
        size.width * 0.3708333,
        size.height * 0.3498148,
        size.width * 0.3658333,
        size.height * 0.3443519,
        size.width * 0.3657407,
        size.height * 0.3372222);
    path_1.cubicTo(
        size.width * 0.3657407,
        size.height * 0.3354630,
        size.width * 0.3662037,
        size.height * 0.3337037,
        size.width * 0.3666667,
        size.height * 0.3319444);
    path_1.cubicTo(
        size.width * 0.3685185,
        size.height * 0.3261111,
        size.width * 0.3763889,
        size.height * 0.3166667,
        size.width * 0.3839815,
        size.height * 0.3162037);
    path_1.cubicTo(
        size.width * 0.3912963,
        size.height * 0.3157407,
        size.width * 0.3967593,
        size.height * 0.3210185,
        size.width * 0.3959259,
        size.height * 0.3284259);
    path_1.cubicTo(
        size.width * 0.3954630,
        size.height * 0.3328704,
        size.width * 0.3937963,
        size.height * 0.3368519,
        size.width * 0.3908333,
        size.height * 0.3406481);
    path_1.moveTo(size.width * 0.3772222, size.height * 0.3280556);
    path_1.cubicTo(
        size.width * 0.3751852,
        size.height * 0.3304630,
        size.width * 0.3736111,
        size.height * 0.3330556,
        size.width * 0.3727778,
        size.height * 0.3361111);
    path_1.cubicTo(
        size.width * 0.3723148,
        size.height * 0.3376852,
        size.width * 0.3724074,
        size.height * 0.3393519,
        size.width * 0.3737963,
        size.height * 0.3403704);
    path_1.cubicTo(
        size.width * 0.3751852,
        size.height * 0.3414815,
        size.width * 0.3767593,
        size.height * 0.3411111,
        size.width * 0.3782407,
        size.height * 0.3403704);
    path_1.cubicTo(
        size.width * 0.3825000,
        size.height * 0.3383333,
        size.width * 0.3867593,
        size.height * 0.3305556,
        size.width * 0.3862963,
        size.height * 0.3259259);
    path_1.cubicTo(
        size.width * 0.3860185,
        size.height * 0.3232407,
        size.width * 0.3842593,
        size.height * 0.3223148,
        size.width * 0.3817593,
        size.height * 0.3236111);
    path_1.cubicTo(
        size.width * 0.3797222,
        size.height * 0.3247222,
        size.width * 0.3786111,
        size.height * 0.3264815,
        size.width * 0.3772222,
        size.height * 0.3280556);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6691667, size.height * 0.5507407);
    path_2.cubicTo(
        size.width * 0.6687037,
        size.height * 0.6038889,
        size.width * 0.6133333,
        size.height * 0.6342593,
        size.width * 0.5656481,
        size.height * 0.6098148);
    path_2.cubicTo(
        size.width * 0.5560185,
        size.height * 0.6049074,
        size.width * 0.5477778,
        size.height * 0.5992593,
        size.width * 0.5363889,
        size.height * 0.6050926);
    path_2.cubicTo(
        size.width * 0.5327778,
        size.height * 0.6069444,
        size.width * 0.5268519,
        size.height * 0.6069444,
        size.width * 0.5230556,
        size.height * 0.6053704);
    path_2.cubicTo(
        size.width * 0.5098148,
        size.height * 0.5999074,
        size.width * 0.4995370,
        size.height * 0.6052778,
        size.width * 0.4877778,
        size.height * 0.6108333);
    path_2.cubicTo(
        size.width * 0.4610185,
        size.height * 0.6234259,
        size.width * 0.4339815,
        size.height * 0.6207407,
        size.width * 0.4106481,
        size.height * 0.6026852);
    path_2.cubicTo(
        size.width * 0.3879630,
        size.height * 0.5852778,
        size.width * 0.3833333,
        size.height * 0.5606481,
        size.width * 0.3893519,
        size.height * 0.5334259);
    path_2.cubicTo(
        size.width * 0.3907407,
        size.height * 0.5274074,
        size.width * 0.3915741,
        size.height * 0.5212037,
        size.width * 0.3927778,
        size.height * 0.5151852);
    path_2.cubicTo(
        size.width * 0.3983333,
        size.height * 0.4879630,
        size.width * 0.4201852,
        size.height * 0.4696296,
        size.width * 0.4479630,
        size.height * 0.4691667);
    path_2.cubicTo(
        size.width * 0.4544444,
        size.height * 0.4690741,
        size.width * 0.4593519,
        size.height * 0.4682407,
        size.width * 0.4638889,
        size.height * 0.4625000);
    path_2.cubicTo(
        size.width * 0.4696296,
        size.height * 0.4550926,
        size.width * 0.4783333,
        size.height * 0.4517593,
        size.width * 0.4879630,
        size.height * 0.4517593);
    path_2.cubicTo(
        size.width * 0.5148148,
        size.height * 0.4517593,
        size.width * 0.5417593,
        size.height * 0.4517593,
        size.width * 0.5686111,
        size.height * 0.4517593);
    path_2.cubicTo(
        size.width * 0.5759259,
        size.height * 0.4517593,
        size.width * 0.5834259,
        size.height * 0.4534259,
        size.width * 0.5878704,
        size.height * 0.4587963);
    path_2.cubicTo(
        size.width * 0.5955556,
        size.height * 0.4680556,
        size.width * 0.6051852,
        size.height * 0.4685185,
        size.width * 0.6160185,
        size.height * 0.4699074);
    path_2.cubicTo(
        size.width * 0.6376852,
        size.height * 0.4726852,
        size.width * 0.6534259,
        size.height * 0.4853704,
        size.width * 0.6607407,
        size.height * 0.5062037);
    path_2.cubicTo(
        size.width * 0.6660185,
        size.height * 0.5212963,
        size.width * 0.6682407,
        size.height * 0.5373148,
        size.width * 0.6691667,
        size.height * 0.5507407);
    path_2.moveTo(size.width * 0.5437037, size.height * 0.5095370);
    path_2.cubicTo(
        size.width * 0.5458333,
        size.height * 0.5301852,
        size.width * 0.5474074,
        size.height * 0.5479630,
        size.width * 0.5536111,
        size.height * 0.5647222);
    path_2.cubicTo(
        size.width * 0.5623148,
        size.height * 0.5880556,
        size.width * 0.5882407,
        size.height * 0.5996296,
        size.width * 0.6150926,
        size.height * 0.5924074);
    path_2.cubicTo(
        size.width * 0.6362963,
        size.height * 0.5867593,
        size.width * 0.6487963,
        size.height * 0.5675000,
        size.width * 0.6455556,
        size.height * 0.5451852);
    path_2.cubicTo(
        size.width * 0.6442593,
        size.height * 0.5362037,
        size.width * 0.6425926,
        size.height * 0.5273148,
        size.width * 0.6403704,
        size.height * 0.5185185);
    path_2.cubicTo(
        size.width * 0.6357407,
        size.height * 0.5000000,
        size.width * 0.6186111,
        size.height * 0.4898148,
        size.width * 0.5998148,
        size.height * 0.4929630);
    path_2.cubicTo(
        size.width * 0.5856481,
        size.height * 0.4953704,
        size.width * 0.5712963,
        size.height * 0.4980556,
        size.width * 0.5569444,
        size.height * 0.4985185);
    path_2.cubicTo(
        size.width * 0.5462037,
        size.height * 0.4988889,
        size.width * 0.5412963,
        size.height * 0.5013889,
        size.width * 0.5437037,
        size.height * 0.5095370);
    path_2.moveTo(size.width * 0.5122222, size.height * 0.5100926);
    path_2.cubicTo(
        size.width * 0.5154630,
        size.height * 0.5014815,
        size.width * 0.5103704,
        size.height * 0.4984259,
        size.width * 0.4995370,
        size.height * 0.4987037);
    path_2.cubicTo(
        size.width * 0.4905556,
        size.height * 0.4988889,
        size.width * 0.4814815,
        size.height * 0.4974074,
        size.width * 0.4725000,
        size.height * 0.4960185);
    path_2.cubicTo(
        size.width * 0.4275000,
        size.height * 0.4893519,
        size.width * 0.4206481,
        size.height * 0.4940741,
        size.width * 0.4119444,
        size.height * 0.5387963);
    path_2.cubicTo(
        size.width * 0.4065741,
        size.height * 0.5662037,
        size.width * 0.4180556,
        size.height * 0.5869444,
        size.width * 0.4418519,
        size.height * 0.5926852);
    path_2.cubicTo(
        size.width * 0.4711111,
        size.height * 0.5998148,
        size.width * 0.4972222,
        size.height * 0.5858333,
        size.width * 0.5044444,
        size.height * 0.5592593);
    path_2.cubicTo(
        size.width * 0.5086111,
        size.height * 0.5441667,
        size.width * 0.5106481,
        size.height * 0.5286111,
        size.width * 0.5122222,
        size.height * 0.5100926);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.3482407, size.height * 0.4901852);
    path_3.cubicTo(
        size.width * 0.3482407,
        size.height * 0.4612963,
        size.width * 0.3481481,
        size.height * 0.4323148,
        size.width * 0.3483333,
        size.height * 0.4034259);
    path_3.cubicTo(
        size.width * 0.3484259,
        size.height * 0.3915741,
        size.width * 0.3547222,
        size.height * 0.3853704,
        size.width * 0.3647222,
        size.height * 0.3867593);
    path_3.cubicTo(
        size.width * 0.3748148,
        size.height * 0.3881481,
        size.width * 0.3766667,
        size.height * 0.3952778,
        size.width * 0.3766667,
        size.height * 0.4038889);
    path_3.cubicTo(
        size.width * 0.3768519,
        size.height * 0.4439815,
        size.width * 0.3772222,
        size.height * 0.4840741,
        size.width * 0.3775000,
        size.height * 0.5240741);
    path_3.cubicTo(
        size.width * 0.3775926,
        size.height * 0.5381481,
        size.width * 0.3775926,
        size.height * 0.5522222,
        size.width * 0.3777778,
        size.height * 0.5662037);
    path_3.cubicTo(
        size.width * 0.3783333,
        size.height * 0.6050926,
        size.width * 0.4038889,
        size.height * 0.6381481,
        size.width * 0.4414815,
        size.height * 0.6477778);
    path_3.cubicTo(
        size.width * 0.4562037,
        size.height * 0.6515741,
        size.width * 0.4713889,
        size.height * 0.6539815,
        size.width * 0.4862963,
        size.height * 0.6572222);
    path_3.cubicTo(
        size.width * 0.4916667,
        size.height * 0.6584259,
        size.width * 0.4938889,
        size.height * 0.6565741,
        size.width * 0.4943519,
        size.height * 0.6512037);
    path_3.cubicTo(
        size.width * 0.4947222,
        size.height * 0.6466667,
        size.width * 0.4954630,
        size.height * 0.6421296,
        size.width * 0.4967593,
        size.height * 0.6378704);
    path_3.cubicTo(
        size.width * 0.5003704,
        size.height * 0.6263889,
        size.width * 0.5112037,
        size.height * 0.6202778,
        size.width * 0.5229630,
        size.height * 0.6226852);
    path_3.cubicTo(
        size.width * 0.5338889,
        size.height * 0.6249074,
        size.width * 0.5420370,
        size.height * 0.6348148,
        size.width * 0.5405556,
        size.height * 0.6462037);
    path_3.cubicTo(
        size.width * 0.5385185,
        size.height * 0.6621296,
        size.width * 0.5354630,
        size.height * 0.6779630,
        size.width * 0.5323148,
        size.height * 0.6937037);
    path_3.cubicTo(
        size.width * 0.5302778,
        size.height * 0.7037963,
        size.width * 0.5234259,
        size.height * 0.7092593,
        size.width * 0.5133333,
        size.height * 0.7103704);
    path_3.cubicTo(
        size.width * 0.5032407,
        size.height * 0.7114815,
        size.width * 0.4947222,
        size.height * 0.7079630,
        size.width * 0.4909259,
        size.height * 0.6986111);
    path_3.cubicTo(
        size.width * 0.4882407,
        size.height * 0.6920370,
        size.width * 0.4841667,
        size.height * 0.6904630,
        size.width * 0.4781481,
        size.height * 0.6891667);
    path_3.cubicTo(
        size.width * 0.4632407,
        size.height * 0.6860185,
        size.width * 0.4483333,
        size.height * 0.6825926,
        size.width * 0.4336111,
        size.height * 0.6786111);
    path_3.cubicTo(
        size.width * 0.3801852,
        size.height * 0.6640741,
        size.width * 0.3460185,
        size.height * 0.6184259,
        size.width * 0.3464815,
        size.height * 0.5632407);
    path_3.cubicTo(
        size.width * 0.3466667,
        size.height * 0.5388889,
        size.width * 0.3464815,
        size.height * 0.5145370,
        size.width * 0.3464815,
        size.height * 0.4900926);
    path_3.cubicTo(
        size.width * 0.3472222,
        size.height * 0.4901852,
        size.width * 0.3476852,
        size.height * 0.4901852,
        size.width * 0.3482407,
        size.height * 0.4901852);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
