import 'package:flutter/material.dart';

class SunsetCruisePainter extends CustomPainter {
  final Color? color;
  SunsetCruisePainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7053704, size.height * 0.5752778);
    path_0.lineTo(size.width * 0.5696296, size.height * 0.5752778);
    path_0.cubicTo(
        size.width * 0.5700000,
        size.height * 0.5720370,
        size.width * 0.5729630,
        size.height * 0.5635185,
        size.width * 0.5730556,
        size.height * 0.5602778);
    path_0.lineTo(size.width * 0.4241667, size.height * 0.5578704);
    path_0.cubicTo(
        size.width * 0.4285185,
        size.height * 0.5587037,
        size.width * 0.4333333,
        size.height * 0.5716667,
        size.width * 0.4404630,
        size.height * 0.5745370);
    path_0.lineTo(size.width * 0.3088889, size.height * 0.5745370);
    path_0.cubicTo(
        size.width * 0.3099074,
        size.height * 0.5064815,
        size.width * 0.3350000,
        size.height * 0.4502778,
        size.width * 0.3862037,
        size.height * 0.4096296);
    path_0.cubicTo(
        size.width * 0.4531481,
        size.height * 0.3564815,
        size.width * 0.5264815,
        size.height * 0.3497222,
        size.width * 0.6003704,
        size.height * 0.3911111);
    path_0.cubicTo(
        size.width * 0.6682407,
        size.height * 0.4291667,
        size.width * 0.7016667,
        size.height * 0.4923148,
        size.width * 0.7053704,
        size.height * 0.5752778);
    path_0.moveTo(size.width * 0.5108333, size.height * 0.3942593);
    path_0.cubicTo(
        size.width * 0.4901852,
        size.height * 0.4540741,
        size.width * 0.5057407,
        size.height * 0.5071296,
        size.width * 0.4509259,
        size.height * 0.5481481);
    path_0.lineTo(size.width * 0.5108333, size.height * 0.5493519);
    path_0.lineTo(size.width * 0.5108333, size.height * 0.3942593);
    path_0.close();
    path_0.moveTo(size.width * 0.5623148, size.height * 0.5493519);
    path_0.cubicTo(
        size.width * 0.5440741,
        size.height * 0.5049074,
        size.width * 0.5356481,
        size.height * 0.4654630,
        size.width * 0.5161111,
        size.height * 0.4180556);
    path_0.lineTo(size.width * 0.5161111, size.height * 0.5493519);
    path_0.lineTo(size.width * 0.5623148, size.height * 0.5493519);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5733333, size.height * 0.6325000);
    path_1.cubicTo(
        size.width * 0.5602778,
        size.height * 0.6327778,
        size.width * 0.5469444,
        size.height * 0.6296296,
        size.width * 0.5339815,
        size.height * 0.6239815);
    path_1.cubicTo(
        size.width * 0.5139815,
        size.height * 0.6150926,
        size.width * 0.4934259,
        size.height * 0.6144444,
        size.width * 0.4725926,
        size.height * 0.6208333);
    path_1.cubicTo(
        size.width * 0.4656481,
        size.height * 0.6229630,
        size.width * 0.4590741,
        size.height * 0.6262037,
        size.width * 0.4521296,
        size.height * 0.6285185);
    path_1.cubicTo(
        size.width * 0.4410185,
        size.height * 0.6322222,
        size.width * 0.4295370,
        size.height * 0.6328704,
        size.width * 0.4179630,
        size.height * 0.6324074);
    path_1.cubicTo(
        size.width * 0.4053704,
        size.height * 0.6319444,
        size.width * 0.3936111,
        size.height * 0.6286111,
        size.width * 0.3822222,
        size.height * 0.6235185);
    path_1.cubicTo(
        size.width * 0.3715741,
        size.height * 0.6187037,
        size.width * 0.3603704,
        size.height * 0.6166667,
        size.width * 0.3487963,
        size.height * 0.6167593);
    path_1.cubicTo(
        size.width * 0.3455556,
        size.height * 0.6167593,
        size.width * 0.3432407,
        size.height * 0.6148148,
        size.width * 0.3429630,
        size.height * 0.6121296);
    path_1.cubicTo(
        size.width * 0.3425926,
        size.height * 0.6086111,
        size.width * 0.3449074,
        size.height * 0.6060185,
        size.width * 0.3484259,
        size.height * 0.6060185);
    path_1.cubicTo(
        size.width * 0.3609259,
        size.height * 0.6058333,
        size.width * 0.3730556,
        size.height * 0.6079630,
        size.width * 0.3846296,
        size.height * 0.6128704);
    path_1.cubicTo(
        size.width * 0.3917593,
        size.height * 0.6159259,
        size.width * 0.3988889,
        size.height * 0.6190741,
        size.width * 0.4065741,
        size.height * 0.6202778);
    path_1.cubicTo(
        size.width * 0.4247222,
        size.height * 0.6232407,
        size.width * 0.4423148,
        size.height * 0.6221296,
        size.width * 0.4592593,
        size.height * 0.6142593);
    path_1.cubicTo(
        size.width * 0.4750000,
        size.height * 0.6069444,
        size.width * 0.4916667,
        size.height * 0.6050000,
        size.width * 0.5087963,
        size.height * 0.6062963);
    path_1.cubicTo(
        size.width * 0.5198148,
        size.height * 0.6071296,
        size.width * 0.5300926,
        size.height * 0.6103704,
        size.width * 0.5401852,
        size.height * 0.6147222);
    path_1.cubicTo(
        size.width * 0.5599074,
        size.height * 0.6232407,
        size.width * 0.5800926,
        size.height * 0.6238889,
        size.width * 0.6005556,
        size.height * 0.6178704);
    path_1.cubicTo(
        size.width * 0.6061111,
        size.height * 0.6162037,
        size.width * 0.6113889,
        size.height * 0.6137037,
        size.width * 0.6168519,
        size.height * 0.6115741);
    path_1.cubicTo(
        size.width * 0.6275000,
        size.height * 0.6074074,
        size.width * 0.6386111,
        size.height * 0.6058333,
        size.width * 0.6500000,
        size.height * 0.6060185);
    path_1.cubicTo(
        size.width * 0.6532407,
        size.height * 0.6061111,
        size.width * 0.6554630,
        size.height * 0.6083333,
        size.width * 0.6554630,
        size.height * 0.6113889);
    path_1.cubicTo(
        size.width * 0.6554630,
        size.height * 0.6144444,
        size.width * 0.6531481,
        size.height * 0.6167593,
        size.width * 0.6499074,
        size.height * 0.6167593);
    path_1.cubicTo(
        size.width * 0.6409259,
        size.height * 0.6167593,
        size.width * 0.6321296,
        size.height * 0.6176852,
        size.width * 0.6236111,
        size.height * 0.6206481);
    path_1.cubicTo(
        size.width * 0.6198148,
        size.height * 0.6219444,
        size.width * 0.6161111,
        size.height * 0.6235185,
        size.width * 0.6124074,
        size.height * 0.6250926);
    path_1.cubicTo(
        size.width * 0.6001852,
        size.height * 0.6303704,
        size.width * 0.5875000,
        size.height * 0.6326852,
        size.width * 0.5733333,
        size.height * 0.6325000);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5912037, size.height * 0.6749074);
    path_2.cubicTo(
        size.width * 0.5750926,
        size.height * 0.6753704,
        size.width * 0.5584259,
        size.height * 0.6715741,
        size.width * 0.5425000,
        size.height * 0.6644444);
    path_2.cubicTo(
        size.width * 0.5187037,
        size.height * 0.6537963,
        size.width * 0.4940741,
        size.height * 0.6527778,
        size.width * 0.4691667,
        size.height * 0.6595370);
    path_2.cubicTo(
        size.width * 0.4612963,
        size.height * 0.6616667,
        size.width * 0.4538889,
        size.height * 0.6651852,
        size.width * 0.4462963,
        size.height * 0.6681481);
    path_2.cubicTo(
        size.width * 0.4320370,
        size.height * 0.6737037,
        size.width * 0.4172222,
        size.height * 0.6750926,
        size.width * 0.4021296,
        size.height * 0.6749074);
    path_2.cubicTo(
        size.width * 0.3856481,
        size.height * 0.6747222,
        size.width * 0.3700926,
        size.height * 0.6709259,
        size.width * 0.3551852,
        size.height * 0.6641667);
    path_2.cubicTo(
        size.width * 0.3418519,
        size.height * 0.6581481,
        size.width * 0.3277778,
        size.height * 0.6552778,
        size.width * 0.3131481,
        size.height * 0.6554630);
    path_2.cubicTo(
        size.width * 0.3090741,
        size.height * 0.6555556,
        size.width * 0.3062037,
        size.height * 0.6531481,
        size.width * 0.3057407,
        size.height * 0.6498148);
    path_2.cubicTo(
        size.width * 0.3051852,
        size.height * 0.6454630,
        size.width * 0.3079630,
        size.height * 0.6418519,
        size.width * 0.3123148,
        size.height * 0.6420370);
    path_2.cubicTo(
        size.width * 0.3200000,
        size.height * 0.6424074,
        size.width * 0.3276852,
        size.height * 0.6428704,
        size.width * 0.3352778,
        size.height * 0.6438889);
    path_2.cubicTo(
        size.width * 0.3458333,
        size.height * 0.6452778,
        size.width * 0.3555556,
        size.height * 0.6495370,
        size.width * 0.3651852,
        size.height * 0.6537037);
    path_2.cubicTo(
        size.width * 0.3818519,
        size.height * 0.6609259,
        size.width * 0.3993519,
        size.height * 0.6622222,
        size.width * 0.4172222,
        size.height * 0.6609259);
    path_2.cubicTo(
        size.width * 0.4296296,
        size.height * 0.6600000,
        size.width * 0.4411111,
        size.height * 0.6561111,
        size.width * 0.4523148,
        size.height * 0.6511111);
    path_2.cubicTo(
        size.width * 0.4684259,
        size.height * 0.6439815,
        size.width * 0.4852778,
        size.height * 0.6417593,
        size.width * 0.5026852,
        size.height * 0.6419444);
    path_2.cubicTo(
        size.width * 0.5202778,
        size.height * 0.6421296,
        size.width * 0.5365741,
        size.height * 0.6468519,
        size.width * 0.5525000,
        size.height * 0.6538889);
    path_2.cubicTo(
        size.width * 0.5688889,
        size.height * 0.6612037,
        size.width * 0.5862037,
        size.height * 0.6621296,
        size.width * 0.6038889,
        size.height * 0.6609259);
    path_2.cubicTo(
        size.width * 0.6169444,
        size.height * 0.6600000,
        size.width * 0.6288889,
        size.height * 0.6555556,
        size.width * 0.6407407,
        size.height * 0.6504630);
    path_2.cubicTo(
        size.width * 0.6550000,
        size.height * 0.6443519,
        size.width * 0.6700000,
        size.height * 0.6417593,
        size.width * 0.6855556,
        size.height * 0.6419444);
    path_2.cubicTo(
        size.width * 0.6897222,
        size.height * 0.6419444,
        size.width * 0.6925000,
        size.height * 0.6446296,
        size.width * 0.6925926,
        size.height * 0.6484259);
    path_2.cubicTo(
        size.width * 0.6926852,
        size.height * 0.6523148,
        size.width * 0.6899074,
        size.height * 0.6553704,
        size.width * 0.6859259,
        size.height * 0.6552778);
    path_2.cubicTo(
        size.width * 0.6687963,
        size.height * 0.6548148,
        size.width * 0.6528704,
        size.height * 0.6593519,
        size.width * 0.6374074,
        size.height * 0.6662963);
    path_2.cubicTo(
        size.width * 0.6231481,
        size.height * 0.6727778,
        size.width * 0.6080556,
        size.height * 0.6750926,
        size.width * 0.5912037,
        size.height * 0.6749074);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
