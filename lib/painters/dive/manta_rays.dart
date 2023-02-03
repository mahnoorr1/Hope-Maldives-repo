import 'package:flutter/material.dart';

class MantaRaysPainter extends CustomPainter {
  final Color? color;
  MantaRaysPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3047222, size.height * 0.6731481);
    path_0.cubicTo(
        size.width * 0.3650000,
        size.height * 0.6387037,
        size.width * 0.4125000,
        size.height * 0.5898148,
        size.width * 0.4576852,
        size.height * 0.5382407);
    path_0.cubicTo(
        size.width * 0.4525926,
        size.height * 0.5317593,
        size.width * 0.4533333,
        size.height * 0.5244444,
        size.width * 0.4550926,
        size.height * 0.5175926);
    path_0.cubicTo(
        size.width * 0.4585185,
        size.height * 0.5043519,
        size.width * 0.4575926,
        size.height * 0.4909259,
        size.width * 0.4567593,
        size.height * 0.4776852);
    path_0.cubicTo(
        size.width * 0.4561111,
        size.height * 0.4671296,
        size.width * 0.4551852,
        size.height * 0.4562037,
        size.width * 0.4518519,
        size.height * 0.4462963);
    path_0.cubicTo(
        size.width * 0.4440741,
        size.height * 0.4237037,
        size.width * 0.4324074,
        size.height * 0.4033333,
        size.width * 0.4122222,
        size.height * 0.3891667);
    path_0.cubicTo(
        size.width * 0.4050000,
        size.height * 0.3840741,
        size.width * 0.3969444,
        size.height * 0.3807407,
        size.width * 0.3880556,
        size.height * 0.3796296);
    path_0.cubicTo(
        size.width * 0.3875000,
        size.height * 0.3795370,
        size.width * 0.3868519,
        size.height * 0.3796296,
        size.width * 0.3865741,
        size.height * 0.3792593);
    path_0.cubicTo(
        size.width * 0.3850926,
        size.height * 0.3780556,
        size.width * 0.3837963,
        size.height * 0.3766667,
        size.width * 0.3824074,
        size.height * 0.3753704);
    path_0.cubicTo(
        size.width * 0.3837963,
        size.height * 0.3745370,
        size.width * 0.3851852,
        size.height * 0.3730556,
        size.width * 0.3866667,
        size.height * 0.3729630);
    path_0.cubicTo(
        size.width * 0.3902778,
        size.height * 0.3725926,
        size.width * 0.3940741,
        size.height * 0.3725926,
        size.width * 0.3976852,
        size.height * 0.3727778);
    path_0.cubicTo(
        size.width * 0.4090741,
        size.height * 0.3732407,
        size.width * 0.4203704,
        size.height * 0.3737037,
        size.width * 0.4317593,
        size.height * 0.3744444);
    path_0.cubicTo(
        size.width * 0.4503704,
        size.height * 0.3756481,
        size.width * 0.4683333,
        size.height * 0.3797222,
        size.width * 0.4854630,
        size.height * 0.3874074);
    path_0.cubicTo(
        size.width * 0.4958333,
        size.height * 0.3920370,
        size.width * 0.5068519,
        size.height * 0.3944444,
        size.width * 0.5182407,
        size.height * 0.3951852);
    path_0.cubicTo(
        size.width * 0.5207407,
        size.height * 0.3953704,
        size.width * 0.5235185,
        size.height * 0.3948148,
        size.width * 0.5258333,
        size.height * 0.3938889);
    path_0.cubicTo(
        size.width * 0.5376852,
        size.height * 0.3891667,
        size.width * 0.5497222,
        size.height * 0.3851852,
        size.width * 0.5625926,
        size.height * 0.3867593);
    path_0.cubicTo(
        size.width * 0.5674074,
        size.height * 0.3873148,
        size.width * 0.5703704,
        size.height * 0.3862037,
        size.width * 0.5738889,
        size.height * 0.3831481);
    path_0.cubicTo(
        size.width * 0.5786111,
        size.height * 0.3789815,
        size.width * 0.5843519,
        size.height * 0.3770370,
        size.width * 0.5908333,
        size.height * 0.3780556);
    path_0.cubicTo(
        size.width * 0.5925926,
        size.height * 0.3783333,
        size.width * 0.5943519,
        size.height * 0.3777778,
        size.width * 0.5961111,
        size.height * 0.3776852);
    path_0.cubicTo(
        size.width * 0.5986111,
        size.height * 0.3775000,
        size.width * 0.5996296,
        size.height * 0.3789815,
        size.width * 0.5986111,
        size.height * 0.3810185);
    path_0.cubicTo(
        size.width * 0.5973148,
        size.height * 0.3837037,
        size.width * 0.5958333,
        size.height * 0.3862037,
        size.width * 0.5925000,
        size.height * 0.3874074);
    path_0.cubicTo(
        size.width * 0.5887037,
        size.height * 0.3887963,
        size.width * 0.5849074,
        size.height * 0.3906481,
        size.width * 0.5814815,
        size.height * 0.3928704);
    path_0.cubicTo(
        size.width * 0.5759259,
        size.height * 0.3965741,
        size.width * 0.5745370,
        size.height * 0.4003704,
        size.width * 0.5773148,
        size.height * 0.4063889);
    path_0.cubicTo(
        size.width * 0.5810185,
        size.height * 0.4144444,
        size.width * 0.5874074,
        size.height * 0.4205556,
        size.width * 0.5952778,
        size.height * 0.4244444);
    path_0.cubicTo(
        size.width * 0.6020370,
        size.height * 0.4277778,
        size.width * 0.6062037,
        size.height * 0.4260185,
        size.width * 0.6100926,
        size.height * 0.4194444);
    path_0.cubicTo(
        size.width * 0.6119444,
        size.height * 0.4163889,
        size.width * 0.6134259,
        size.height * 0.4131481,
        size.width * 0.6145370,
        size.height * 0.4097222);
    path_0.cubicTo(
        size.width * 0.6156481,
        size.height * 0.4064815,
        size.width * 0.6179630,
        size.height * 0.4048148,
        size.width * 0.6207407,
        size.height * 0.4034259);
    path_0.cubicTo(
        size.width * 0.6231481,
        size.height * 0.4022222,
        size.width * 0.6244444,
        size.height * 0.4030556,
        size.width * 0.6244444,
        size.height * 0.4056481);
    path_0.cubicTo(
        size.width * 0.6245370,
        size.height * 0.4154630,
        size.width * 0.6241667,
        size.height * 0.4251852,
        size.width * 0.6157407,
        size.height * 0.4321296);
    path_0.cubicTo(
        size.width * 0.6152778,
        size.height * 0.4325000,
        size.width * 0.6150000,
        size.height * 0.4336111,
        size.width * 0.6150926,
        size.height * 0.4342593);
    path_0.cubicTo(
        size.width * 0.6180556,
        size.height * 0.4485185,
        size.width * 0.6144444,
        size.height * 0.4618519,
        size.width * 0.6091667,
        size.height * 0.4749074);
    path_0.cubicTo(
        size.width * 0.6075926,
        size.height * 0.4787037,
        size.width * 0.6073148,
        size.height * 0.4824074,
        size.width * 0.6077778,
        size.height * 0.4862963);
    path_0.cubicTo(
        size.width * 0.6091667,
        size.height * 0.4980556,
        size.width * 0.6122222,
        size.height * 0.5095370,
        size.width * 0.6172222,
        size.height * 0.5201852);
    path_0.cubicTo(
        size.width * 0.6239815,
        size.height * 0.5347222,
        size.width * 0.6274074,
        size.height * 0.5500926,
        size.width * 0.6288889,
        size.height * 0.5658333);
    path_0.cubicTo(
        size.width * 0.6302778,
        size.height * 0.5800926,
        size.width * 0.6307407,
        size.height * 0.5944444,
        size.width * 0.6314815,
        size.height * 0.6087037);
    path_0.cubicTo(
        size.width * 0.6316667,
        size.height * 0.6114815,
        size.width * 0.6312963,
        size.height * 0.6143519,
        size.width * 0.6307407,
        size.height * 0.6171296);
    path_0.cubicTo(
        size.width * 0.6302778,
        size.height * 0.6196296,
        size.width * 0.6284259,
        size.height * 0.6200926,
        size.width * 0.6266667,
        size.height * 0.6181481);
    path_0.cubicTo(
        size.width * 0.6258333,
        size.height * 0.6172222,
        size.width * 0.6249074,
        size.height * 0.6159259,
        size.width * 0.6247222,
        size.height * 0.6146296);
    path_0.cubicTo(
        size.width * 0.6225926,
        size.height * 0.5989815,
        size.width * 0.6144444,
        size.height * 0.5867593,
        size.width * 0.6031481,
        size.height * 0.5763889);
    path_0.cubicTo(
        size.width * 0.5950000,
        size.height * 0.5688889,
        size.width * 0.5854630,
        size.height * 0.5637037,
        size.width * 0.5759259,
        size.height * 0.5582407);
    path_0.cubicTo(
        size.width * 0.5548148,
        size.height * 0.5460185,
        size.width * 0.5317593,
        size.height * 0.5457407,
        size.width * 0.5085185,
        size.height * 0.5454630);
    path_0.cubicTo(
        size.width * 0.5000926,
        size.height * 0.5453704,
        size.width * 0.4917593,
        size.height * 0.5463889,
        size.width * 0.4835185,
        size.height * 0.5483333);
    path_0.cubicTo(
        size.width * 0.4800000,
        size.height * 0.5491667,
        size.width * 0.4762037,
        size.height * 0.5490741,
        size.width * 0.4725000,
        size.height * 0.5487037);
    path_0.cubicTo(
        size.width * 0.4700000,
        size.height * 0.5484259,
        size.width * 0.4676852,
        size.height * 0.5470370,
        size.width * 0.4648148,
        size.height * 0.5459259);
    path_0.cubicTo(
        size.width * 0.4595370,
        size.height * 0.5511111,
        size.width * 0.4537963,
        size.height * 0.5567593,
        size.width * 0.4479630,
        size.height * 0.5624074);
    path_0.cubicTo(
        size.width * 0.4184259,
        size.height * 0.5911111,
        size.width * 0.3886111,
        size.height * 0.6195370,
        size.width * 0.3560185,
        size.height * 0.6449074);
    path_0.cubicTo(
        size.width * 0.3448148,
        size.height * 0.6536111,
        size.width * 0.3326852,
        size.height * 0.6611111,
        size.width * 0.3208333,
        size.height * 0.6687963);
    path_0.cubicTo(
        size.width * 0.3177778,
        size.height * 0.6707407,
        size.width * 0.3141667,
        size.height * 0.6718519,
        size.width * 0.3106481,
        size.height * 0.6729630);
    path_0.cubicTo(
        size.width * 0.3087963,
        size.height * 0.6735185,
        size.width * 0.3066667,
        size.height * 0.6734259,
        size.width * 0.3047222,
        size.height * 0.6735185);
    path_0.cubicTo(
        size.width * 0.3048148,
        size.height * 0.6737037,
        size.width * 0.3047222,
        size.height * 0.6734259,
        size.width * 0.3047222,
        size.height * 0.6731481);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
