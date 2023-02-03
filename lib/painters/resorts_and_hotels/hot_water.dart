import 'package:flutter/material.dart';

class HotWaterPainter extends CustomPainter {
  final Color? color;
  HotWaterPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3976852, size.height * 0.4233333);
    path_0.cubicTo(
        size.width * 0.3758333,
        size.height * 0.3960185,
        size.width * 0.3475000,
        size.height * 0.3833333,
        size.width * 0.3134259,
        size.height * 0.3820370);
    path_0.cubicTo(
        size.width * 0.3024074,
        size.height * 0.3815741,
        size.width * 0.2950926,
        size.height * 0.3735185,
        size.width * 0.2958333,
        size.height * 0.3648148);
    path_0.cubicTo(
        size.width * 0.2965741,
        size.height * 0.3554630,
        size.width * 0.3046296,
        size.height * 0.3489815,
        size.width * 0.3157407,
        size.height * 0.3486111);
    path_0.cubicTo(
        size.width * 0.3540741,
        size.height * 0.3475000,
        size.width * 0.3863889,
        size.height * 0.3613889,
        size.width * 0.4129630,
        size.height * 0.3886111);
    path_0.cubicTo(
        size.width * 0.4197222,
        size.height * 0.3955556,
        size.width * 0.4245370,
        size.height * 0.3966667,
        size.width * 0.4336111,
        size.height * 0.3915741);
    path_0.cubicTo(
        size.width * 0.4699074,
        size.height * 0.3714815,
        size.width * 0.5074074,
        size.height * 0.3740741,
        size.width * 0.5447222,
        size.height * 0.3892593);
    path_0.cubicTo(
        size.width * 0.5540741,
        size.height * 0.3930556,
        size.width * 0.5626852,
        size.height * 0.3984259,
        size.width * 0.5728704,
        size.height * 0.4036111);
    path_0.cubicTo(
        size.width * 0.5689815,
        size.height * 0.4080556,
        size.width * 0.5662037,
        size.height * 0.4115741,
        size.width * 0.5630556,
        size.height * 0.4148148);
    path_0.cubicTo(
        size.width * 0.5490741,
        size.height * 0.4291667,
        size.width * 0.5347222,
        size.height * 0.4433333,
        size.width * 0.5210185,
        size.height * 0.4579630);
    path_0.cubicTo(
        size.width * 0.5187963,
        size.height * 0.4602778,
        size.width * 0.5175000,
        size.height * 0.4662037,
        size.width * 0.5189815,
        size.height * 0.4686111);
    path_0.cubicTo(
        size.width * 0.5225000,
        size.height * 0.4743519,
        size.width * 0.5269444,
        size.height * 0.4706481,
        size.width * 0.5303704,
        size.height * 0.4674074);
    path_0.cubicTo(
        size.width * 0.5481481,
        size.height * 0.4502778,
        size.width * 0.5657407,
        size.height * 0.4329630,
        size.width * 0.5834259,
        size.height * 0.4157407);
    path_0.cubicTo(
        size.width * 0.5905556,
        size.height * 0.4087963,
        size.width * 0.5986111,
        size.height * 0.4079630,
        size.width * 0.6040741,
        size.height * 0.4134259);
    path_0.cubicTo(
        size.width * 0.6094444,
        size.height * 0.4188889,
        size.width * 0.6086111,
        size.height * 0.4270370,
        size.width * 0.6013889,
        size.height * 0.4342593);
    path_0.cubicTo(
        size.width * 0.5456481,
        size.height * 0.4897222,
        size.width * 0.4897222,
        size.height * 0.5451852,
        size.width * 0.4338889,
        size.height * 0.6006481);
    path_0.cubicTo(
        size.width * 0.4289815,
        size.height * 0.6055556,
        size.width * 0.4240741,
        size.height * 0.6099074,
        size.width * 0.4168519,
        size.height * 0.6050000);
    path_0.cubicTo(
        size.width * 0.4101852,
        size.height * 0.6004630,
        size.width * 0.4087963,
        size.height * 0.5947222,
        size.width * 0.4118519,
        size.height * 0.5869444);
    path_0.cubicTo(
        size.width * 0.4127778,
        size.height * 0.5845370,
        size.width * 0.4112037,
        size.height * 0.5801852,
        size.width * 0.4093519,
        size.height * 0.5776852);
    path_0.cubicTo(
        size.width * 0.3884259,
        size.height * 0.5487963,
        size.width * 0.3770370,
        size.height * 0.5170370,
        size.width * 0.3785185,
        size.height * 0.4811111);
    path_0.cubicTo(
        size.width * 0.3792593,
        size.height * 0.4629630,
        size.width * 0.3845370,
        size.height * 0.4462963,
        size.width * 0.3934259,
        size.height * 0.4306481);
    path_0.cubicTo(
        size.width * 0.3948148,
        size.height * 0.4280556,
        size.width * 0.3963889,
        size.height * 0.4256481,
        size.width * 0.3976852,
        size.height * 0.4233333);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4815741, size.height * 0.5994444);
    path_1.cubicTo(
        size.width * 0.4845370,
        size.height * 0.6035185,
        size.width * 0.4897222,
        size.height * 0.6076852,
        size.width * 0.4896296,
        size.height * 0.6117593);
    path_1.cubicTo(
        size.width * 0.4896296,
        size.height * 0.6152778,
        size.width * 0.4841667,
        size.height * 0.6208333,
        size.width * 0.4801852,
        size.height * 0.6217593);
    path_1.cubicTo(
        size.width * 0.4744444,
        size.height * 0.6231481,
        size.width * 0.4686111,
        size.height * 0.6190741,
        size.width * 0.4697222,
        size.height * 0.6122222);
    path_1.cubicTo(
        size.width * 0.4704630,
        size.height * 0.6076852,
        size.width * 0.4747222,
        size.height * 0.6037037,
        size.width * 0.4774074,
        size.height * 0.5994444);
    path_1.cubicTo(
        size.width * 0.4788889,
        size.height * 0.5994444,
        size.width * 0.4801852,
        size.height * 0.5994444,
        size.width * 0.4815741,
        size.height * 0.5994444);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6137037, size.height * 0.6002778);
    path_2.cubicTo(
        size.width * 0.6196296,
        size.height * 0.6006481,
        size.width * 0.6238889,
        size.height * 0.6047222,
        size.width * 0.6219444,
        size.height * 0.6110185);
    path_2.cubicTo(
        size.width * 0.6207407,
        size.height * 0.6150000,
        size.width * 0.6155556,
        size.height * 0.6177778,
        size.width * 0.6121296,
        size.height * 0.6211111);
    path_2.cubicTo(
        size.width * 0.6086111,
        size.height * 0.6174074,
        size.width * 0.6027778,
        size.height * 0.6141667,
        size.width * 0.6020370,
        size.height * 0.6100000);
    path_2.cubicTo(
        size.width * 0.6010185,
        size.height * 0.6040741,
        size.width * 0.6060185,
        size.height * 0.6000926,
        size.width * 0.6137037,
        size.height * 0.6002778);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6018519, size.height * 0.4789815);
    path_3.cubicTo(
        size.width * 0.6018519,
        size.height * 0.4722222,
        size.width * 0.6058333,
        size.height * 0.4692593,
        size.width * 0.6124074,
        size.height * 0.4691667);
    path_3.cubicTo(
        size.width * 0.6194444,
        size.height * 0.4690741,
        size.width * 0.6235185,
        size.height * 0.4737963,
        size.width * 0.6222222,
        size.height * 0.4796296);
    path_3.cubicTo(
        size.width * 0.6213889,
        size.height * 0.4834259,
        size.width * 0.6162037,
        size.height * 0.4882407,
        size.width * 0.6122222,
        size.height * 0.4890741);
    path_3.cubicTo(
        size.width * 0.6062037,
        size.height * 0.4904630,
        size.width * 0.6018519,
        size.height * 0.4862963,
        size.width * 0.6018519,
        size.height * 0.4789815);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.7076852, size.height * 0.4998148);
    path_4.cubicTo(
        size.width * 0.7102778,
        size.height * 0.5039815,
        size.width * 0.7149074,
        size.height * 0.5081481,
        size.width * 0.7150926,
        size.height * 0.5124074);
    path_4.cubicTo(
        size.width * 0.7153704,
        size.height * 0.5182407,
        size.width * 0.7106481,
        size.height * 0.5225926,
        size.width * 0.7038889,
        size.height * 0.5221296);
    path_4.cubicTo(
        size.width * 0.6975926,
        size.height * 0.5216667,
        size.width * 0.6936111,
        size.height * 0.5175926,
        size.width * 0.6950926,
        size.height * 0.5116667);
    path_4.cubicTo(
        size.width * 0.6961111,
        size.height * 0.5073148,
        size.width * 0.7001852,
        size.height * 0.5036111,
        size.width * 0.7028704,
        size.height * 0.4996296);
    path_4.cubicTo(
        size.width * 0.7045370,
        size.height * 0.4997222,
        size.width * 0.7061111,
        size.height * 0.4997222,
        size.width * 0.7076852,
        size.height * 0.4998148);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.5735185, size.height * 0.5628704);
    path_5.cubicTo(
        size.width * 0.5695370,
        size.height * 0.5657407,
        size.width * 0.5651852,
        size.height * 0.5712963,
        size.width * 0.5616667,
        size.height * 0.5708333);
    path_5.cubicTo(
        size.width * 0.5576852,
        size.height * 0.5702778,
        size.width * 0.5525926,
        size.height * 0.5647222,
        size.width * 0.5517593,
        size.height * 0.5604630);
    path_5.cubicTo(
        size.width * 0.5512037,
        size.height * 0.5578704,
        size.width * 0.5572222,
        size.height * 0.5519444,
        size.width * 0.5611111,
        size.height * 0.5509259);
    path_5.cubicTo(
        size.width * 0.5673148,
        size.height * 0.5492593,
        size.width * 0.5712037,
        size.height * 0.5537963,
        size.width * 0.5735185,
        size.height * 0.5628704);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6325000, size.height * 0.5391667);
    path_6.cubicTo(
        size.width * 0.6321296,
        size.height * 0.5453704,
        size.width * 0.6282407,
        size.height * 0.5501852,
        size.width * 0.6221296,
        size.height * 0.5487037);
    path_6.cubicTo(
        size.width * 0.6179630,
        size.height * 0.5476852,
        size.width * 0.6129630,
        size.height * 0.5422222,
        size.width * 0.6123148,
        size.height * 0.5380556);
    path_6.cubicTo(
        size.width * 0.6118519,
        size.height * 0.5352778,
        size.width * 0.6180556,
        size.height * 0.5294444,
        size.width * 0.6221296,
        size.height * 0.5286111);
    path_6.cubicTo(
        size.width * 0.6282407,
        size.height * 0.5274074,
        size.width * 0.6323148,
        size.height * 0.5318519,
        size.width * 0.6325000,
        size.height * 0.5391667);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5599074, size.height * 0.6323148);
    path_7.cubicTo(
        size.width * 0.5594444,
        size.height * 0.6391667,
        size.width * 0.5553704,
        size.height * 0.6438889,
        size.width * 0.5494444,
        size.height * 0.6423148);
    path_7.cubicTo(
        size.width * 0.5453704,
        size.height * 0.6412963,
        size.width * 0.5401852,
        size.height * 0.6360185,
        size.width * 0.5394444,
        size.height * 0.6319444);
    path_7.cubicTo(
        size.width * 0.5384259,
        size.height * 0.6262963,
        size.width * 0.5430556,
        size.height * 0.6217593,
        size.width * 0.5498148,
        size.height * 0.6219444);
    path_7.cubicTo(
        size.width * 0.5564815,
        size.height * 0.6221296,
        size.width * 0.5596296,
        size.height * 0.6260185,
        size.width * 0.5599074,
        size.height * 0.6323148);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.5875000, size.height * 0.6860185);
    path_8.cubicTo(
        size.width * 0.5836111,
        size.height * 0.6888889,
        size.width * 0.5800000,
        size.height * 0.6934259,
        size.width * 0.5756481,
        size.height * 0.6941667);
    path_8.cubicTo(
        size.width * 0.5690741,
        size.height * 0.6952778,
        size.width * 0.5657407,
        size.height * 0.6899074,
        size.width * 0.5656481,
        size.height * 0.6837037);
    path_8.cubicTo(
        size.width * 0.5655556,
        size.height * 0.6776852,
        size.width * 0.5690741,
        size.height * 0.6729630,
        size.width * 0.5750926,
        size.height * 0.6739815);
    path_8.cubicTo(
        size.width * 0.5794444,
        size.height * 0.6747222,
        size.width * 0.5833333,
        size.height * 0.6787037,
        size.width * 0.5874074,
        size.height * 0.6812037);
    path_8.cubicTo(
        size.width * 0.5874074,
        size.height * 0.6827778,
        size.width * 0.5874074,
        size.height * 0.6844444,
        size.width * 0.5875000,
        size.height * 0.6860185);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.6862037, size.height * 0.5770370);
    path_9.cubicTo(
        size.width * 0.6823148,
        size.height * 0.5798148,
        size.width * 0.6787037,
        size.height * 0.5841667,
        size.width * 0.6743519,
        size.height * 0.5851852);
    path_9.cubicTo(
        size.width * 0.6675000,
        size.height * 0.5866667,
        size.width * 0.6634259,
        size.height * 0.5809259,
        size.width * 0.6644444,
        size.height * 0.5751852);
    path_9.cubicTo(
        size.width * 0.6650926,
        size.height * 0.5712963,
        size.width * 0.6699074,
        size.height * 0.5661111,
        size.width * 0.6737963,
        size.height * 0.5650926);
    path_9.cubicTo(
        size.width * 0.6798148,
        size.height * 0.5636111,
        size.width * 0.6838889,
        size.height * 0.5680556,
        size.width * 0.6862037,
        size.height * 0.5770370);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.5204630, size.height * 0.6818519);
    path_10.cubicTo(
        size.width * 0.5186111,
        size.height * 0.6910185,
        size.width * 0.5147222,
        size.height * 0.6954630,
        size.width * 0.5084259,
        size.height * 0.6937963);
    path_10.cubicTo(
        size.width * 0.5044444,
        size.height * 0.6927778,
        size.width * 0.4994444,
        size.height * 0.6881481,
        size.width * 0.4986111,
        size.height * 0.6843519);
    path_10.cubicTo(
        size.width * 0.4973148,
        size.height * 0.6782407,
        size.width * 0.5024074,
        size.height * 0.6732407,
        size.width * 0.5084259,
        size.height * 0.6740741);
    path_10.cubicTo(
        size.width * 0.5127778,
        size.height * 0.6746296,
        size.width * 0.5164815,
        size.height * 0.6791667,
        size.width * 0.5204630,
        size.height * 0.6818519);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
