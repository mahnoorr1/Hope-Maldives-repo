import 'package:flutter/material.dart';

class AirportPainter extends CustomPainter {
  final Color? color;
  AirportPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3401852, size.height * 0.6657407);
    path_0.cubicTo(
        size.width * 0.3401852,
        size.height * 0.6548148,
        size.width * 0.3401852,
        size.height * 0.6447222,
        size.width * 0.3401852,
        size.height * 0.6334259);
    path_0.cubicTo(
        size.width * 0.4128704,
        size.height * 0.6334259,
        size.width * 0.4852778,
        size.height * 0.6334259,
        size.width * 0.5583333,
        size.height * 0.6334259);
    path_0.cubicTo(
        size.width * 0.5583333,
        size.height * 0.5937963,
        size.width * 0.5583333,
        size.height * 0.5552778,
        size.width * 0.5583333,
        size.height * 0.5161111);
    path_0.cubicTo(
        size.width * 0.5862963,
        size.height * 0.5161111,
        size.width * 0.6135185,
        size.height * 0.5161111,
        size.width * 0.6415741,
        size.height * 0.5161111);
    path_0.cubicTo(
        size.width * 0.6417593,
        size.height * 0.5193519,
        size.width * 0.6419444,
        size.height * 0.5225000,
        size.width * 0.6419444,
        size.height * 0.5256481);
    path_0.cubicTo(
        size.width * 0.6419444,
        size.height * 0.5585185,
        size.width * 0.6421296,
        size.height * 0.5913889,
        size.width * 0.6418519,
        size.height * 0.6242593);
    path_0.cubicTo(
        size.width * 0.6417593,
        size.height * 0.6312037,
        size.width * 0.6435185,
        size.height * 0.6339815,
        size.width * 0.6508333,
        size.height * 0.6334259);
    path_0.cubicTo(
        size.width * 0.6587963,
        size.height * 0.6327778,
        size.width * 0.6667593,
        size.height * 0.6332407,
        size.width * 0.6751852,
        size.height * 0.6332407);
    path_0.cubicTo(
        size.width * 0.6751852,
        size.height * 0.6445370,
        size.width * 0.6751852,
        size.height * 0.6548148,
        size.width * 0.6751852,
        size.height * 0.6656481);
    path_0.cubicTo(
        size.width * 0.5635185,
        size.height * 0.6657407,
        size.width * 0.4522222,
        size.height * 0.6657407,
        size.width * 0.3401852,
        size.height * 0.6657407);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3743519, size.height * 0.4948148);
    path_1.cubicTo(
        size.width * 0.3737037,
        size.height * 0.4937963,
        size.width * 0.3726852,
        size.height * 0.4923148,
        size.width * 0.3718519,
        size.height * 0.4908333);
    path_1.cubicTo(
        size.width * 0.3636111,
        size.height * 0.4766667,
        size.width * 0.3554630,
        size.height * 0.4625000,
        size.width * 0.3473148,
        size.height * 0.4483333);
    path_1.cubicTo(
        size.width * 0.3574074,
        size.height * 0.4421296,
        size.width * 0.3659259,
        size.height * 0.4438889,
        size.width * 0.3733333,
        size.height * 0.4521296);
    path_1.cubicTo(
        size.width * 0.3796296,
        size.height * 0.4590741,
        size.width * 0.3867593,
        size.height * 0.4598148,
        size.width * 0.3956481,
        size.height * 0.4568519);
    path_1.cubicTo(
        size.width * 0.4087963,
        size.height * 0.4524074,
        size.width * 0.4225000,
        size.height * 0.4494444,
        size.width * 0.4372222,
        size.height * 0.4455556);
    path_1.cubicTo(
        size.width * 0.4223148,
        size.height * 0.4197222,
        size.width * 0.4077778,
        size.height * 0.3945370,
        size.width * 0.3932407,
        size.height * 0.3693519);
    path_1.cubicTo(
        size.width * 0.4085185,
        size.height * 0.3615741,
        size.width * 0.4117593,
        size.height * 0.3618519,
        size.width * 0.4230556,
        size.height * 0.3721296);
    path_1.cubicTo(
        size.width * 0.4425926,
        size.height * 0.3900926,
        size.width * 0.4623148,
        size.height * 0.4080556,
        size.width * 0.4814815,
        size.height * 0.4264815);
    path_1.cubicTo(
        size.width * 0.4862963,
        size.height * 0.4311111,
        size.width * 0.4903704,
        size.height * 0.4316667,
        size.width * 0.4963889,
        size.height * 0.4299074);
    path_1.cubicTo(
        size.width * 0.5117593,
        size.height * 0.4253704,
        size.width * 0.5274074,
        size.height * 0.4213889,
        size.width * 0.5429630,
        size.height * 0.4174074);
    path_1.cubicTo(
        size.width * 0.5535185,
        size.height * 0.4146296,
        size.width * 0.5620370,
        size.height * 0.4189815,
        size.width * 0.5642593,
        size.height * 0.4278704);
    path_1.cubicTo(
        size.width * 0.5665741,
        size.height * 0.4373148,
        size.width * 0.5618519,
        size.height * 0.4457407,
        size.width * 0.5517593,
        size.height * 0.4484259);
    path_1.cubicTo(
        size.width * 0.4931481,
        size.height * 0.4641667,
        size.width * 0.4344444,
        size.height * 0.4796296,
        size.width * 0.3757407,
        size.height * 0.4952778);
    path_1.cubicTo(
        size.width * 0.3756481,
        size.height * 0.4952778,
        size.width * 0.3752778,
        size.height * 0.4950926,
        size.width * 0.3743519,
        size.height * 0.4948148);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
