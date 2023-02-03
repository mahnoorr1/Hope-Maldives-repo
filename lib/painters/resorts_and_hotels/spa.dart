import 'package:flutter/material.dart';

class SpaPainter extends CustomPainter {
  final Color? color;
  SpaPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6296296, size.height * 0.6412037);
    path_0.cubicTo(
        size.width * 0.5986111,
        size.height * 0.6496296,
        size.width * 0.5769444,
        size.height * 0.6349074,
        size.width * 0.5600926,
        size.height * 0.6114815);
    path_0.cubicTo(
        size.width * 0.5419444,
        size.height * 0.5863889,
        size.width * 0.5182407,
        size.height * 0.5800000,
        size.width * 0.4881481,
        size.height * 0.5813889);
    path_0.cubicTo(
        size.width * 0.4397222,
        size.height * 0.5837037,
        size.width * 0.3911111,
        size.height * 0.5820370,
        size.width * 0.3425926,
        size.height * 0.5822222);
    path_0.cubicTo(
        size.width * 0.3230556,
        size.height * 0.5823148,
        size.width * 0.3183333,
        size.height * 0.5872222,
        size.width * 0.3182407,
        size.height * 0.6069444);
    path_0.cubicTo(
        size.width * 0.3182407,
        size.height * 0.6149074,
        size.width * 0.3182407,
        size.height * 0.6228704,
        size.width * 0.3183333,
        size.height * 0.6309259);
    path_0.cubicTo(
        size.width * 0.3186111,
        size.height * 0.6502778,
        size.width * 0.3237037,
        size.height * 0.6555556,
        size.width * 0.3430556,
        size.height * 0.6555556);
    path_0.cubicTo(
        size.width * 0.3995370,
        size.height * 0.6557407,
        size.width * 0.4561111,
        size.height * 0.6556481,
        size.width * 0.5125926,
        size.height * 0.6556481);
    path_0.cubicTo(
        size.width * 0.5168519,
        size.height * 0.6556481,
        size.width * 0.5212037,
        size.height * 0.6561111,
        size.width * 0.5253704,
        size.height * 0.6555556);
    path_0.cubicTo(
        size.width * 0.5397222,
        size.height * 0.6534259,
        size.width * 0.5512037,
        size.height * 0.6576852,
        size.width * 0.5602778,
        size.height * 0.6692593);
    path_0.cubicTo(
        size.width * 0.5680556,
        size.height * 0.6792593,
        size.width * 0.5787037,
        size.height * 0.6822222,
        size.width * 0.5913889,
        size.height * 0.6817593);
    path_0.cubicTo(
        size.width * 0.6148148,
        size.height * 0.6810185,
        size.width * 0.6383333,
        size.height * 0.6816667,
        size.width * 0.6617593,
        size.height * 0.6814815);
    path_0.cubicTo(
        size.width * 0.6775000,
        size.height * 0.6813889,
        size.width * 0.6874074,
        size.height * 0.6733333,
        size.width * 0.6873148,
        size.height * 0.6612963);
    path_0.cubicTo(
        size.width * 0.6872222,
        size.height * 0.6489815,
        size.width * 0.6780556,
        size.height * 0.6416667,
        size.width * 0.6615741,
        size.height * 0.6412037);
    path_0.cubicTo(
        size.width * 0.6509259,
        size.height * 0.6409259,
        size.width * 0.6402778,
        size.height * 0.6412037,
        size.width * 0.6296296,
        size.height * 0.6412037);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3518519, size.height * 0.5624074);
    path_1.cubicTo(
        size.width * 0.3773148,
        size.height * 0.5624074,
        size.width * 0.3990741,
        size.height * 0.5625926,
        size.width * 0.4208333,
        size.height * 0.5622222);
    path_1.cubicTo(
        size.width * 0.4241667,
        size.height * 0.5622222,
        size.width * 0.4287963,
        size.height * 0.5612037,
        size.width * 0.4306481,
        size.height * 0.5588889);
    path_1.cubicTo(
        size.width * 0.4420370,
        size.height * 0.5447222,
        size.width * 0.4528704,
        size.height * 0.5300000,
        size.width * 0.4612037,
        size.height * 0.5189815);
    path_1.cubicTo(
        size.width * 0.4867593,
        size.height * 0.5302778,
        size.width * 0.5115741,
        size.height * 0.5415741,
        size.width * 0.5366667,
        size.height * 0.5521296);
    path_1.cubicTo(
        size.width * 0.5467593,
        size.height * 0.5563889,
        size.width * 0.5572222,
        size.height * 0.5562963,
        size.width * 0.5619444,
        size.height * 0.5439815);
    path_1.cubicTo(
        size.width * 0.5665741,
        size.height * 0.5321296,
        size.width * 0.5580556,
        size.height * 0.5266667,
        size.width * 0.5488889,
        size.height * 0.5223148);
    path_1.cubicTo(
        size.width * 0.5464815,
        size.height * 0.5212037,
        size.width * 0.5439815,
        size.height * 0.5201852,
        size.width * 0.5413889,
        size.height * 0.5195370);
    path_1.cubicTo(
        size.width * 0.5101852,
        size.height * 0.5121296,
        size.width * 0.4854630,
        size.height * 0.4941667,
        size.width * 0.4650000,
        size.height * 0.4705556);
    path_1.cubicTo(
        size.width * 0.4499074,
        size.height * 0.4531481,
        size.width * 0.4304630,
        size.height * 0.4507407,
        size.width * 0.4100000,
        size.height * 0.4517593);
    path_1.cubicTo(
        size.width * 0.4043519,
        size.height * 0.4520370,
        size.width * 0.3962037,
        size.height * 0.4571296,
        size.width * 0.3938889,
        size.height * 0.4621296);
    path_1.cubicTo(
        size.width * 0.3795370,
        size.height * 0.4943519,
        size.width * 0.3663889,
        size.height * 0.5272222,
        size.width * 0.3518519,
        size.height * 0.5624074);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6123148, size.height * 0.6273148);
    path_2.cubicTo(
        size.width * 0.6383333,
        size.height * 0.6272222,
        size.width * 0.6588889,
        size.height * 0.6062037,
        size.width * 0.6583333,
        size.height * 0.5803704);
    path_2.cubicTo(
        size.width * 0.6578704,
        size.height * 0.5560185,
        size.width * 0.6355556,
        size.height * 0.5345370,
        size.width * 0.6115741,
        size.height * 0.5351852);
    path_2.cubicTo(
        size.width * 0.5862037,
        size.height * 0.5359259,
        size.width * 0.5667593,
        size.height * 0.5562037,
        size.width * 0.5667593,
        size.height * 0.5819444);
    path_2.cubicTo(
        size.width * 0.5667593,
        size.height * 0.6075000,
        size.width * 0.5868519,
        size.height * 0.6275000,
        size.width * 0.6123148,
        size.height * 0.6273148);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4591667, size.height * 0.3602778);
    path_3.cubicTo(
        size.width * 0.4326852,
        size.height * 0.3613889,
        size.width * 0.4150000,
        size.height * 0.3810185,
        size.width * 0.4165741,
        size.height * 0.4076852);
    path_3.cubicTo(
        size.width * 0.4178704,
        size.height * 0.4312037,
        size.width * 0.4387037,
        size.height * 0.4490741,
        size.width * 0.4633333,
        size.height * 0.4478704);
    path_3.cubicTo(
        size.width * 0.4867593,
        size.height * 0.4466667,
        size.width * 0.5061111,
        size.height * 0.4252778,
        size.width * 0.5048148,
        size.height * 0.4019444);
    path_3.cubicTo(
        size.width * 0.5034259,
        size.height * 0.3776852,
        size.width * 0.4832407,
        size.height * 0.3593519,
        size.width * 0.4591667,
        size.height * 0.3602778);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3273148, size.height * 0.6733333);
    path_4.cubicTo(
        size.width * 0.3273148,
        size.height * 0.6785185,
        size.width * 0.3273148,
        size.height * 0.6837037,
        size.width * 0.3273148,
        size.height * 0.6901852);
    path_4.cubicTo(
        size.width * 0.4057407,
        size.height * 0.6901852,
        size.width * 0.4840741,
        size.height * 0.6901852,
        size.width * 0.5633333,
        size.height * 0.6901852);
    path_4.cubicTo(
        size.width * 0.5577778,
        size.height * 0.6786111,
        size.width * 0.5494444,
        size.height * 0.6746296,
        size.width * 0.5367593,
        size.height * 0.6748148);
    path_4.cubicTo(
        size.width * 0.4787037,
        size.height * 0.6753704,
        size.width * 0.4206481,
        size.height * 0.6751852,
        size.width * 0.3625926,
        size.height * 0.6750000);
    path_4.cubicTo(
        size.width * 0.3514815,
        size.height * 0.6749074,
        size.width * 0.3404630,
        size.height * 0.6739815,
        size.width * 0.3273148,
        size.height * 0.6733333);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.4351852, size.height * 0.3478704);
    path_5.cubicTo(
        size.width * 0.4282407,
        size.height * 0.3405556,
        size.width * 0.4166667,
        size.height * 0.3395370,
        size.width * 0.4066667,
        size.height * 0.3493519);
    path_5.cubicTo(
        size.width * 0.3972222,
        size.height * 0.3585185,
        size.width * 0.3978704,
        size.height * 0.3711111,
        size.width * 0.4045370,
        size.height * 0.3783333);
    path_5.cubicTo(
        size.width * 0.4145370,
        size.height * 0.3683333,
        size.width * 0.4248148,
        size.height * 0.3581481,
        size.width * 0.4351852,
        size.height * 0.3478704);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
