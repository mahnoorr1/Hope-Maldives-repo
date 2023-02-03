import 'package:flutter/material.dart';

class CatamaranSailingPainter extends CustomPainter {
  final Color? color;
  CatamaranSailingPainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5413889, size.height * 0.5456481);
    path_0.cubicTo(
        size.width * 0.5401852,
        size.height * 0.5429630,
        size.width * 0.5420370,
        size.height * 0.5421296,
        size.width * 0.5437037,
        size.height * 0.5411111);
    path_0.cubicTo(
        size.width * 0.5594444,
        size.height * 0.5311111,
        size.width * 0.5729630,
        size.height * 0.5181481,
        size.width * 0.5821296,
        size.height * 0.5000926);
    path_0.cubicTo(
        size.width * 0.5905556,
        size.height * 0.4834259,
        size.width * 0.5932407,
        size.height * 0.4654630,
        size.width * 0.5909259,
        size.height * 0.4462963);
    path_0.cubicTo(
        size.width * 0.5858333,
        size.height * 0.4031481,
        size.width * 0.5643519,
        size.height * 0.3727778,
        size.width * 0.5326852,
        size.height * 0.3501852);
    path_0.cubicTo(
        size.width * 0.5313889,
        size.height * 0.3492593,
        size.width * 0.5303704,
        size.height * 0.3478704,
        size.width * 0.5292593,
        size.height * 0.3466667);
    path_0.cubicTo(
        size.width * 0.5294444,
        size.height * 0.3462037,
        size.width * 0.5296296,
        size.height * 0.3457407,
        size.width * 0.5299074,
        size.height * 0.3452778);
    path_0.cubicTo(
        size.width * 0.5354630,
        size.height * 0.3458333,
        size.width * 0.5412037,
        size.height * 0.3459259,
        size.width * 0.5466667,
        size.height * 0.3471296);
    path_0.cubicTo(
        size.width * 0.6018519,
        size.height * 0.3588889,
        size.width * 0.6383333,
        size.height * 0.3952778,
        size.width * 0.6541667,
        size.height * 0.4566667);
    path_0.cubicTo(
        size.width * 0.6637037,
        size.height * 0.4935185,
        size.width * 0.6595370,
        size.height * 0.5296296,
        size.width * 0.6441667,
        size.height * 0.5635185);
    path_0.cubicTo(
        size.width * 0.6429630,
        size.height * 0.5662037,
        size.width * 0.6402778,
        size.height * 0.5670370,
        size.width * 0.6376852,
        size.height * 0.5653704);
    path_0.cubicTo(
        size.width * 0.6175000,
        size.height * 0.5525000,
        size.width * 0.5954630,
        size.height * 0.5483333,
        size.width * 0.5729630,
        size.height * 0.5466667);
    path_0.cubicTo(
        size.width * 0.5625926,
        size.height * 0.5458333,
        size.width * 0.5521296,
        size.height * 0.5459259,
        size.width * 0.5413889,
        size.height * 0.5456481);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5152778, size.height * 0.5475926);
    path_1.cubicTo(
        size.width * 0.4676852,
        size.height * 0.5503704,
        size.width * 0.4203704,
        size.height * 0.5530556,
        size.width * 0.3721296,
        size.height * 0.5559259);
    path_1.cubicTo(
        size.width * 0.4168519,
        size.height * 0.4972222,
        size.width * 0.4610185,
        size.height * 0.4392593,
        size.width * 0.5056481,
        size.height * 0.3806481);
    path_1.cubicTo(
        size.width * 0.5088889,
        size.height * 0.4366667,
        size.width * 0.5120370,
        size.height * 0.4919444,
        size.width * 0.5152778,
        size.height * 0.5475926);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6387963, size.height * 0.5738889);
    path_2.cubicTo(
        size.width * 0.6305556,
        size.height * 0.5884259,
        size.width * 0.6210185,
        size.height * 0.6004630,
        size.width * 0.6095370,
        size.height * 0.6103704);
    path_2.cubicTo(
        size.width * 0.6052778,
        size.height * 0.6140741,
        size.width * 0.6001852,
        size.height * 0.6159259,
        size.width * 0.5947222,
        size.height * 0.6162963);
    path_2.cubicTo(
        size.width * 0.5228704,
        size.height * 0.6204630,
        size.width * 0.4509259,
        size.height * 0.6246296,
        size.width * 0.3790741,
        size.height * 0.6286111);
    path_2.cubicTo(
        size.width * 0.3775000,
        size.height * 0.6287037,
        size.width * 0.3752778,
        size.height * 0.6277778,
        size.width * 0.3744444,
        size.height * 0.6264815);
    path_2.cubicTo(
        size.width * 0.3738889,
        size.height * 0.6256481,
        size.width * 0.3748148,
        size.height * 0.6227778,
        size.width * 0.3758333,
        size.height * 0.6213889);
    path_2.cubicTo(
        size.width * 0.3826852,
        size.height * 0.6118519,
        size.width * 0.3899074,
        size.height * 0.6025926,
        size.width * 0.3966667,
        size.height * 0.5929630);
    path_2.cubicTo(
        size.width * 0.3995370,
        size.height * 0.5888889,
        size.width * 0.4028704,
        size.height * 0.5872222,
        size.width * 0.4074074,
        size.height * 0.5869444);
    path_2.cubicTo(
        size.width * 0.4446296,
        size.height * 0.5849074,
        size.width * 0.4818519,
        size.height * 0.5826852,
        size.width * 0.5190741,
        size.height * 0.5805556);
    path_2.cubicTo(
        size.width * 0.5577778,
        size.height * 0.5783333,
        size.width * 0.5964815,
        size.height * 0.5760185,
        size.width * 0.6352778,
        size.height * 0.5737963);
    path_2.cubicTo(
        size.width * 0.6362037,
        size.height * 0.5737963,
        size.width * 0.6372222,
        size.height * 0.5738889,
        size.width * 0.6387963,
        size.height * 0.5738889);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5362037, size.height * 0.5717593);
    path_3.cubicTo(
        size.width * 0.5318519,
        size.height * 0.5720370,
        size.width * 0.5278704,
        size.height * 0.5722222,
        size.width * 0.5233333,
        size.height * 0.5725000);
    path_3.cubicTo(
        size.width * 0.5232407,
        size.height * 0.5710185,
        size.width * 0.5231481,
        size.height * 0.5696296,
        size.width * 0.5230556,
        size.height * 0.5682407);
    path_3.cubicTo(
        size.width * 0.5187963,
        size.height * 0.4947222,
        size.width * 0.5145370,
        size.height * 0.4212037,
        size.width * 0.5102778,
        size.height * 0.3476852);
    path_3.cubicTo(
        size.width * 0.5101852,
        size.height * 0.3458333,
        size.width * 0.5101852,
        size.height * 0.3439815,
        size.width * 0.5105556,
        size.height * 0.3422222);
    path_3.cubicTo(
        size.width * 0.5112963,
        size.height * 0.3388889,
        size.width * 0.5133333,
        size.height * 0.3372222,
        size.width * 0.5163889,
        size.height * 0.3371296);
    path_3.cubicTo(
        size.width * 0.5194444,
        size.height * 0.3371296,
        size.width * 0.5215741,
        size.height * 0.3387963,
        size.width * 0.5225000,
        size.height * 0.3420370);
    path_3.cubicTo(
        size.width * 0.5230556,
        size.height * 0.3438889,
        size.width * 0.5230556,
        size.height * 0.3459259,
        size.width * 0.5232407,
        size.height * 0.3479630);
    path_3.cubicTo(
        size.width * 0.5275000,
        size.height * 0.4211111,
        size.width * 0.5317593,
        size.height * 0.4942593,
        size.width * 0.5359259,
        size.height * 0.5673148);
    path_3.cubicTo(
        size.width * 0.5360185,
        size.height * 0.5687037,
        size.width * 0.5361111,
        size.height * 0.5700926,
        size.width * 0.5362037,
        size.height * 0.5717593);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5157407, size.height * 0.5552778);
    path_4.cubicTo(
        size.width * 0.5158333,
        size.height * 0.5562037,
        size.width * 0.5159259,
        size.height * 0.5569444,
        size.width * 0.5160185,
        size.height * 0.5577778);
    path_4.cubicTo(
        size.width * 0.5161111,
        size.height * 0.5590741,
        size.width * 0.5162037,
        size.height * 0.5603704,
        size.width * 0.5162963,
        size.height * 0.5624074);
    path_4.cubicTo(
        size.width * 0.5146296,
        size.height * 0.5625000,
        size.width * 0.5132407,
        size.height * 0.5625926,
        size.width * 0.5117593,
        size.height * 0.5626852);
    path_4.cubicTo(
        size.width * 0.4654630,
        size.height * 0.5653704,
        size.width * 0.4192593,
        size.height * 0.5680556,
        size.width * 0.3729630,
        size.height * 0.5707407);
    path_4.cubicTo(
        size.width * 0.3719444,
        size.height * 0.5708333,
        size.width * 0.3706481,
        size.height * 0.5710185,
        size.width * 0.3699074,
        size.height * 0.5705556);
    path_4.cubicTo(
        size.width * 0.3687963,
        size.height * 0.5699074,
        size.width * 0.3673148,
        size.height * 0.5684259,
        size.width * 0.3673148,
        size.height * 0.5675000);
    path_4.cubicTo(
        size.width * 0.3674074,
        size.height * 0.5662037,
        size.width * 0.3687037,
        size.height * 0.5648148,
        size.width * 0.3696296,
        size.height * 0.5638889);
    path_4.cubicTo(
        size.width * 0.3700926,
        size.height * 0.5634259,
        size.width * 0.3712037,
        size.height * 0.5635185,
        size.width * 0.3719444,
        size.height * 0.5635185);
    path_4.cubicTo(
        size.width * 0.4187963,
        size.height * 0.5608333,
        size.width * 0.4656481,
        size.height * 0.5580556,
        size.width * 0.5125000,
        size.height * 0.5553704);
    path_4.cubicTo(
        size.width * 0.5136111,
        size.height * 0.5552778,
        size.width * 0.5146296,
        size.height * 0.5552778,
        size.width * 0.5157407,
        size.height * 0.5552778);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6511111, size.height * 0.6370370);
    path_5.cubicTo(
        size.width * 0.6275000,
        size.height * 0.6673148,
        size.width * 0.5952778,
        size.height * 0.6800926,
        size.width * 0.5581481,
        size.height * 0.6827778);
    path_5.cubicTo(
        size.width * 0.5298148,
        size.height * 0.6849074,
        size.width * 0.5022222,
        size.height * 0.6791667,
        size.width * 0.4743519,
        size.height * 0.6760185);
    path_5.cubicTo(
        size.width * 0.4418519,
        size.height * 0.6723148,
        size.width * 0.4092593,
        size.height * 0.6692593,
        size.width * 0.3772222,
        size.height * 0.6791667);
    path_5.cubicTo(
        size.width * 0.3682407,
        size.height * 0.6819444,
        size.width * 0.3600926,
        size.height * 0.6864815,
        size.width * 0.3515741,
        size.height * 0.6902778);
    path_5.cubicTo(
        size.width * 0.3700000,
        size.height * 0.6664815,
        size.width * 0.3945370,
        size.height * 0.6533333,
        size.width * 0.4236111,
        size.height * 0.6477778);
    path_5.cubicTo(
        size.width * 0.4573148,
        size.height * 0.6413889,
        size.width * 0.4903704,
        size.height * 0.6469444,
        size.width * 0.5237037,
        size.height * 0.6512963);
    path_5.cubicTo(
        size.width * 0.5558333,
        size.height * 0.6555556,
        size.width * 0.5880556,
        size.height * 0.6582407,
        size.width * 0.6201852,
        size.height * 0.6500000);
    path_5.cubicTo(
        size.width * 0.6311111,
        size.height * 0.6473148,
        size.width * 0.6411111,
        size.height * 0.6423148,
        size.width * 0.6511111,
        size.height * 0.6370370);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
