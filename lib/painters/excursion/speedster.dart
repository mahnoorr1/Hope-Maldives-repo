import 'package:flutter/material.dart';

class SpeedsterPainter extends CustomPainter {
  final Color? color;
  SpeedsterPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5513889, size.height * 0.5374074);
    path_0.cubicTo(
        size.width * 0.5508333,
        size.height * 0.5375926,
        size.width * 0.5502778,
        size.height * 0.5377778,
        size.width * 0.5497222,
        size.height * 0.5378704);
    path_0.cubicTo(
        size.width * 0.5499074,
        size.height * 0.5375000,
        size.width * 0.5500926,
        size.height * 0.5370370,
        size.width * 0.5503704,
        size.height * 0.5366667);
    path_0.cubicTo(
        size.width * 0.5507407,
        size.height * 0.5369444,
        size.width * 0.5511111,
        size.height * 0.5373148,
        size.width * 0.5514815,
        size.height * 0.5375926);
    path_0.cubicTo(
        size.width * 0.5514815,
        size.height * 0.5376852,
        size.width * 0.5513889,
        size.height * 0.5374074,
        size.width * 0.5513889,
        size.height * 0.5374074);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3210185, size.height * 0.4450000);
    path_1.cubicTo(
        size.width * 0.3284259,
        size.height * 0.4450000,
        size.width * 0.3355556,
        size.height * 0.4463889,
        size.width * 0.3426852,
        size.height * 0.4488889);
    path_1.cubicTo(
        size.width * 0.3511111,
        size.height * 0.4518519,
        size.width * 0.3564815,
        size.height * 0.4578704,
        size.width * 0.3582407,
        size.height * 0.4678704);
    path_1.cubicTo(
        size.width * 0.3586111,
        size.height * 0.4698148,
        size.width * 0.3589815,
        size.height * 0.4717593,
        size.width * 0.3593519,
        size.height * 0.4737037);
    path_1.cubicTo(
        size.width * 0.3612037,
        size.height * 0.4848148,
        size.width * 0.3611111,
        size.height * 0.4850000,
        size.width * 0.3519444,
        size.height * 0.4890741);
    path_1.cubicTo(
        size.width * 0.3414815,
        size.height * 0.4937037,
        size.width * 0.3333333,
        size.height * 0.5013889,
        size.width * 0.3278704,
        size.height * 0.5127778);
    path_1.cubicTo(
        size.width * 0.3271296,
        size.height * 0.5143519,
        size.width * 0.3263889,
        size.height * 0.5160185,
        size.width * 0.3255556,
        size.height * 0.5175000);
    path_1.cubicTo(
        size.width * 0.3230556,
        size.height * 0.5216667,
        size.width * 0.3225000,
        size.height * 0.5289815,
        size.width * 0.3180556,
        size.height * 0.5297222);
    path_1.cubicTo(
        size.width * 0.3119444,
        size.height * 0.5308333,
        size.width * 0.3058333,
        size.height * 0.5274074,
        size.width * 0.3000926,
        size.height * 0.5244444);
    path_1.cubicTo(
        size.width * 0.2987963,
        size.height * 0.5237963,
        size.width * 0.2977778,
        size.height * 0.5220370,
        size.width * 0.2970370,
        size.height * 0.5205556);
    path_1.cubicTo(
        size.width * 0.2900000,
        size.height * 0.5062037,
        size.width * 0.2858333,
        size.height * 0.4909259,
        size.width * 0.2860185,
        size.height * 0.4742593);
    path_1.cubicTo(
        size.width * 0.2862037,
        size.height * 0.4616667,
        size.width * 0.2913889,
        size.height * 0.4530556,
        size.width * 0.3016667,
        size.height * 0.4486111);
    path_1.cubicTo(
        size.width * 0.3077778,
        size.height * 0.4458333,
        size.width * 0.3143519,
        size.height * 0.4449074,
        size.width * 0.3210185,
        size.height * 0.4450000);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.2425000, size.height * 0.5264815);
    path_2.cubicTo(
        size.width * 0.2489815,
        size.height * 0.5263889,
        size.width * 0.2540741,
        size.height * 0.5304630,
        size.width * 0.2593519,
        size.height * 0.5338889);
    path_2.cubicTo(
        size.width * 0.2751852,
        size.height * 0.5441667,
        size.width * 0.2917593,
        size.height * 0.5522222,
        size.width * 0.3094444,
        size.height * 0.5572222);
    path_2.cubicTo(
        size.width * 0.3483333,
        size.height * 0.5683333,
        size.width * 0.3869444,
        size.height * 0.5681481,
        size.width * 0.4257407,
        size.height * 0.5560185);
    path_2.cubicTo(
        size.width * 0.4510185,
        size.height * 0.5481481,
        size.width * 0.4764815,
        size.height * 0.5412963,
        size.width * 0.5025926,
        size.height * 0.5378704);
    path_2.cubicTo(
        size.width * 0.5401852,
        size.height * 0.5329630,
        size.width * 0.5757407,
        size.height * 0.5408333,
        size.width * 0.6096296,
        size.height * 0.5598148);
    path_2.cubicTo(
        size.width * 0.6129630,
        size.height * 0.5616667,
        size.width * 0.6162037,
        size.height * 0.5640741,
        size.width * 0.6192593,
        size.height * 0.5664815);
    path_2.cubicTo(
        size.width * 0.6244444,
        size.height * 0.5705556,
        size.width * 0.6261111,
        size.height * 0.5750926,
        size.width * 0.6242593,
        size.height * 0.5792593);
    path_2.cubicTo(
        size.width * 0.6224074,
        size.height * 0.5834259,
        size.width * 0.6182407,
        size.height * 0.5842593,
        size.width * 0.6123148,
        size.height * 0.5813889);
    path_2.cubicTo(
        size.width * 0.5953704,
        size.height * 0.5732407,
        size.width * 0.5777778,
        size.height * 0.5680556,
        size.width * 0.5598148,
        size.height * 0.5643519);
    path_2.cubicTo(
        size.width * 0.5320370,
        size.height * 0.5586111,
        size.width * 0.5048148,
        size.height * 0.5622222,
        size.width * 0.4776852,
        size.height * 0.5698148);
    path_2.cubicTo(
        size.width * 0.4584259,
        size.height * 0.5751852,
        size.width * 0.4395370,
        size.height * 0.5823148,
        size.width * 0.4200926,
        size.height * 0.5868519);
    path_2.cubicTo(
        size.width * 0.3856481,
        size.height * 0.5949074,
        size.width * 0.3512037,
        size.height * 0.5948148,
        size.width * 0.3174074,
        size.height * 0.5838889);
    path_2.cubicTo(
        size.width * 0.2954630,
        size.height * 0.5768519,
        size.width * 0.2748148,
        size.height * 0.5657407,
        size.width * 0.2566667,
        size.height * 0.5494444);
    path_2.cubicTo(
        size.width * 0.2527778,
        size.height * 0.5459259,
        size.width * 0.2493519,
        size.height * 0.5419444,
        size.width * 0.2462963,
        size.height * 0.5375000);
    path_2.cubicTo(
        size.width * 0.2452778,
        size.height * 0.5359259,
        size.width * 0.2444444,
        size.height * 0.5340741,
        size.width * 0.2425926,
        size.height * 0.5334259);
    path_2.lineTo(size.width * 0.2425926, size.height * 0.5264815);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.7105556, size.height * 0.4450000);
    path_3.cubicTo(
        size.width * 0.7037037,
        size.height * 0.4523148,
        size.width * 0.6969444,
        size.height * 0.4598148,
        size.width * 0.6900000,
        size.height * 0.4670370);
    path_3.cubicTo(
        size.width * 0.6697222,
        size.height * 0.4882407,
        size.width * 0.6479630,
        size.height * 0.5074074,
        size.width * 0.6246296,
        size.height * 0.5240741);
    path_3.cubicTo(
        size.width * 0.6197222,
        size.height * 0.5275926,
        size.width * 0.6155556,
        size.height * 0.5280556,
        size.width * 0.6100000,
        size.height * 0.5257407);
    path_3.cubicTo(
        size.width * 0.5723148,
        size.height * 0.5101852,
        size.width * 0.5337037,
        size.height * 0.5073148,
        size.width * 0.4943519,
        size.height * 0.5153704);
    path_3.cubicTo(
        size.width * 0.4673148,
        size.height * 0.5209259,
        size.width * 0.4407407,
        size.height * 0.5287037,
        size.width * 0.4141667,
        size.height * 0.5360185);
    path_3.cubicTo(
        size.width * 0.3862963,
        size.height * 0.5437963,
        size.width * 0.3583333,
        size.height * 0.5434259,
        size.width * 0.3301852,
        size.height * 0.5379630);
    path_3.cubicTo(
        size.width * 0.3256481,
        size.height * 0.5370370,
        size.width * 0.3255556,
        size.height * 0.5362963,
        size.width * 0.3275000,
        size.height * 0.5312963);
    path_3.cubicTo(
        size.width * 0.3324074,
        size.height * 0.5187037,
        size.width * 0.3406481,
        size.height * 0.5113889,
        size.width * 0.3521296,
        size.height * 0.5068519);
    path_3.cubicTo(
        size.width * 0.4087037,
        size.height * 0.4845370,
        size.width * 0.4656481,
        size.height * 0.4638889,
        size.width * 0.5242593,
        size.height * 0.4497222);
    path_3.cubicTo(
        size.width * 0.5601852,
        size.height * 0.4411111,
        size.width * 0.5964815,
        size.height * 0.4359259,
        size.width * 0.6332407,
        size.height * 0.4339815);
    path_3.cubicTo(
        size.width * 0.6540741,
        size.height * 0.4328704,
        size.width * 0.6748148,
        size.height * 0.4325000,
        size.width * 0.6955556,
        size.height * 0.4352778);
    path_3.cubicTo(
        size.width * 0.7005556,
        size.height * 0.4359259,
        size.width * 0.7055556,
        size.height * 0.4374074,
        size.width * 0.7105556,
        size.height * 0.4385185);
    path_3.lineTo(size.width * 0.7105556, size.height * 0.4450000);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4650926, size.height * 0.4498148);
    path_4.cubicTo(
        size.width * 0.4723148,
        size.height * 0.4433333,
        size.width * 0.4804630,
        size.height * 0.4383333,
        size.width * 0.4884259,
        size.height * 0.4332407);
    path_4.cubicTo(
        size.width * 0.5231481,
        size.height * 0.4108333,
        size.width * 0.5593519,
        size.height * 0.3924074,
        size.width * 0.5974074,
        size.height * 0.3789815);
    path_4.cubicTo(
        size.width * 0.6013889,
        size.height * 0.3775926,
        size.width * 0.6045370,
        size.height * 0.3779630,
        size.width * 0.6079630,
        size.height * 0.3804630);
    path_4.cubicTo(
        size.width * 0.6182407,
        size.height * 0.3879630,
        size.width * 0.6271296,
        size.height * 0.3972222,
        size.width * 0.6356481,
        size.height * 0.4071296);
    path_4.cubicTo(
        size.width * 0.6365741,
        size.height * 0.4082407,
        size.width * 0.6384259,
        size.height * 0.4092593,
        size.width * 0.6376852,
        size.height * 0.4111111);
    path_4.cubicTo(
        size.width * 0.6370370,
        size.height * 0.4127778,
        size.width * 0.6350926,
        size.height * 0.4124074,
        size.width * 0.6337037,
        size.height * 0.4125000);
    path_4.cubicTo(
        size.width * 0.6069444,
        size.height * 0.4149074,
        size.width * 0.5805556,
        size.height * 0.4199074,
        size.width * 0.5541667,
        size.height * 0.4261111);
    path_4.cubicTo(
        size.width * 0.5264815,
        size.height * 0.4326852,
        size.width * 0.4989815,
        size.height * 0.4403704,
        size.width * 0.4716667,
        size.height * 0.4487963);
    path_4.cubicTo(
        size.width * 0.4695370,
        size.height * 0.4494444,
        size.width * 0.4674074,
        size.height * 0.4498148,
        size.width * 0.4652778,
        size.height * 0.4502778);
    path_4.lineTo(size.width * 0.4650926, size.height * 0.4498148);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3886111, size.height * 0.4766667);
    path_5.cubicTo(
        size.width * 0.3885185,
        size.height * 0.4766667,
        size.width * 0.3884259,
        size.height * 0.4767593,
        size.width * 0.3883333,
        size.height * 0.4767593);
    path_5.cubicTo(
        size.width * 0.3882407,
        size.height * 0.4767593,
        size.width * 0.3881481,
        size.height * 0.4765741,
        size.width * 0.3881481,
        size.height * 0.4765741);
    path_5.cubicTo(
        size.width * 0.3881481,
        size.height * 0.4764815,
        size.width * 0.3883333,
        size.height * 0.4763889,
        size.width * 0.3883333,
        size.height * 0.4762963);
    path_5.lineTo(size.width * 0.3886111, size.height * 0.4766667);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
