import 'package:flutter/material.dart';

class LoungePainter extends CustomPainter {
  final Color? color;
  LoungePainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3487963, size.height * 0.5533333);
    path_0.cubicTo(
        size.width * 0.4137963,
        size.height * 0.5299074,
        size.width * 0.5974074,
        size.height * 0.5304630,
        size.width * 0.6585185,
        size.height * 0.5543519);
    path_0.cubicTo(
        size.width * 0.6585185,
        size.height * 0.5723148,
        size.width * 0.6585185,
        size.height * 0.5902778,
        size.width * 0.6585185,
        size.height * 0.6104630);
    path_0.cubicTo(
        size.width * 0.5548148,
        size.height * 0.6104630,
        size.width * 0.4526852,
        size.height * 0.6104630,
        size.width * 0.3487963,
        size.height * 0.6104630);
    path_0.cubicTo(
        size.width * 0.3487963,
        size.height * 0.5908333,
        size.width * 0.3487963,
        size.height * 0.5721296,
        size.width * 0.3487963,
        size.height * 0.5533333);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6608333, size.height * 0.5325926);
    path_1.cubicTo(
        size.width * 0.6100926,
        size.height * 0.5273148,
        size.width * 0.5606481,
        size.height * 0.5222222,
        size.width * 0.5081481,
        size.height * 0.5167593);
    path_1.cubicTo(
        size.width * 0.5081481,
        size.height * 0.4829630,
        size.width * 0.5069444,
        size.height * 0.4486111,
        size.width * 0.5091667,
        size.height * 0.4144444);
    path_1.cubicTo(
        size.width * 0.5096296,
        size.height * 0.4074074,
        size.width * 0.5227778,
        size.height * 0.3962963,
        size.width * 0.5306481,
        size.height * 0.3956481);
    path_1.cubicTo(
        size.width * 0.5589815,
        size.height * 0.3935185,
        size.width * 0.5876852,
        size.height * 0.3933333,
        size.width * 0.6160185,
        size.height * 0.3956481);
    path_1.cubicTo(
        size.width * 0.6636111,
        size.height * 0.3995370,
        size.width * 0.6916667,
        size.height * 0.4482407,
        size.width * 0.6737963,
        size.height * 0.4925926);
    path_1.cubicTo(
        size.width * 0.6687963,
        size.height * 0.5053704,
        size.width * 0.6653704,
        size.height * 0.5187037,
        size.width * 0.6608333,
        size.height * 0.5325926);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4966667, size.height * 0.5169444);
    path_2.cubicTo(
        size.width * 0.4448148,
        size.height * 0.5222222,
        size.width * 0.3961111,
        size.height * 0.5271296,
        size.width * 0.3477778,
        size.height * 0.5321296);
    path_2.cubicTo(
        size.width * 0.3404630,
        size.height * 0.5142593,
        size.width * 0.3320370,
        size.height * 0.4963889,
        size.width * 0.3259259,
        size.height * 0.4778704);
    path_2.cubicTo(
        size.width * 0.3150926,
        size.height * 0.4447222,
        size.width * 0.3450000,
        size.height * 0.4005556,
        size.width * 0.3831481,
        size.height * 0.3965741);
    path_2.cubicTo(
        size.width * 0.4139815,
        size.height * 0.3933333,
        size.width * 0.4453704,
        size.height * 0.3937037,
        size.width * 0.4762963,
        size.height * 0.3960185);
    path_2.cubicTo(
        size.width * 0.4836111,
        size.height * 0.3965741,
        size.width * 0.4950000,
        size.height * 0.4110185,
        size.width * 0.4956481,
        size.height * 0.4197222);
    path_2.cubicTo(
        size.width * 0.4980556,
        size.height * 0.4513889,
        size.width * 0.4966667,
        size.height * 0.4835185,
        size.width * 0.4966667,
        size.height * 0.5169444);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6950000, size.height * 0.6365741);
    path_3.cubicTo(
        size.width * 0.5675000,
        size.height * 0.6365741,
        size.width * 0.4400000,
        size.height * 0.6365741,
        size.width * 0.3113889,
        size.height * 0.6365741);
    path_3.cubicTo(
        size.width * 0.3227778,
        size.height * 0.6237963,
        size.width * 0.6608333,
        size.height * 0.6193519,
        size.width * 0.6950000,
        size.height * 0.6365741);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.6707407, size.height * 0.5884259);
    path_4.cubicTo(
        size.width * 0.6766667,
        size.height * 0.5576852,
        size.width * 0.6804630,
        size.height * 0.5322222,
        size.width * 0.6869444,
        size.height * 0.5075000);
    path_4.cubicTo(
        size.width * 0.6904630,
        size.height * 0.4940741,
        size.width * 0.6986111,
        size.height * 0.4803704,
        size.width * 0.7163889,
        size.height * 0.4870370);
    path_4.cubicTo(
        size.width * 0.7349074,
        size.height * 0.4939815,
        size.width * 0.7286111,
        size.height * 0.5076852,
        size.width * 0.7237037,
        size.height * 0.5213889);
    path_4.cubicTo(
        size.width * 0.7160185,
        size.height * 0.5431481,
        size.width * 0.7102778,
        size.height * 0.5655556,
        size.width * 0.7029630,
        size.height * 0.5875000);
    path_4.cubicTo(
        size.width * 0.6996296,
        size.height * 0.5974074,
        size.width * 0.7058333,
        size.height * 0.6165741,
        size.width * 0.6867593,
        size.height * 0.6125000);
    path_4.cubicTo(
        size.width * 0.6794444,
        size.height * 0.6109259,
        size.width * 0.6750926,
        size.height * 0.5954630,
        size.width * 0.6707407,
        size.height * 0.5884259);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3342593, size.height * 0.6113889);
    path_5.cubicTo(
        size.width * 0.3200000,
        size.height * 0.6113889,
        size.width * 0.3134259,
        size.height * 0.6113889,
        size.width * 0.3075926,
        size.height * 0.6113889);
    path_5.cubicTo(
        size.width * 0.3060185,
        size.height * 0.6087963,
        size.width * 0.3048148,
        size.height * 0.6074074,
        size.width * 0.3043519,
        size.height * 0.6059259);
    path_5.cubicTo(
        size.width * 0.2962963,
        size.height * 0.5769444,
        size.width * 0.2889815,
        size.height * 0.5477778,
        size.width * 0.2800926,
        size.height * 0.5190741);
    path_5.cubicTo(
        size.width * 0.2760185,
        size.height * 0.5058333,
        size.width * 0.2707407,
        size.height * 0.4909259,
        size.width * 0.2875000,
        size.height * 0.4871296);
    path_5.cubicTo(
        size.width * 0.2956481,
        size.height * 0.4852778,
        size.width * 0.3137963,
        size.height * 0.4960185,
        size.width * 0.3157407,
        size.height * 0.5039815);
    path_5.cubicTo(
        size.width * 0.3240741,
        size.height * 0.5378704,
        size.width * 0.3280556,
        size.height * 0.5728704,
        size.width * 0.3342593,
        size.height * 0.6113889);
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
