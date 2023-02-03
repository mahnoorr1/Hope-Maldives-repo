import 'package:flutter/material.dart';

class RoomServicesPainter extends CustomPainter {
  final Color? color;
  RoomServicesPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5328704, size.height * 0.3682407);
    path_0.cubicTo(
        size.width * 0.5277778,
        size.height * 0.3287963,
        size.width * 0.5218519,
        size.height * 0.3195370,
        size.width * 0.5025000,
        size.height * 0.3198148);
    path_0.cubicTo(
        size.width * 0.4836111,
        size.height * 0.3200926,
        size.width * 0.4773148,
        size.height * 0.3303704,
        size.width * 0.4734259,
        size.height * 0.3680556);
    path_0.cubicTo(
        size.width * 0.3954630,
        size.height * 0.3837963,
        size.width * 0.3480556,
        size.height * 0.4275000,
        size.width * 0.3477778,
        size.height * 0.5128704);
    path_0.cubicTo(
        size.width * 0.3343519,
        size.height * 0.5128704,
        size.width * 0.3219444,
        size.height * 0.5128704,
        size.width * 0.3095370,
        size.height * 0.5128704);
    path_0.cubicTo(
        size.width * 0.3082407,
        size.height * 0.5391667,
        size.width * 0.3243519,
        size.height * 0.5545370,
        size.width * 0.3522222,
        size.height * 0.5545370);
    path_0.cubicTo(
        size.width * 0.4369444,
        size.height * 0.5546296,
        size.width * 0.5215741,
        size.height * 0.5545370,
        size.width * 0.6062963,
        size.height * 0.5545370);
    path_0.cubicTo(
        size.width * 0.6232407,
        size.height * 0.5545370,
        size.width * 0.6401852,
        size.height * 0.5549074,
        size.width * 0.6571296,
        size.height * 0.5544444);
    path_0.cubicTo(
        size.width * 0.6816667,
        size.height * 0.5538889,
        size.width * 0.6952778,
        size.height * 0.5403704,
        size.width * 0.6975926,
        size.height * 0.5135185);
    path_0.cubicTo(
        size.width * 0.6850926,
        size.height * 0.5135185,
        size.width * 0.6725926,
        size.height * 0.5135185,
        size.width * 0.6586111,
        size.height * 0.5135185);
    path_0.cubicTo(
        size.width * 0.6578704,
        size.height * 0.4285185,
        size.width * 0.6101852,
        size.height * 0.3849074,
        size.width * 0.5328704,
        size.height * 0.3682407);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4574074, size.height * 0.6303704);
    path_1.cubicTo(
        size.width * 0.4667593,
        size.height * 0.6260185,
        size.width * 0.4757407,
        size.height * 0.6194444,
        size.width * 0.4855556,
        size.height * 0.6179630);
    path_1.cubicTo(
        size.width * 0.5005556,
        size.height * 0.6156481,
        size.width * 0.5161111,
        size.height * 0.6170370,
        size.width * 0.5314815,
        size.height * 0.6162963);
    path_1.cubicTo(
        size.width * 0.5425000,
        size.height * 0.6158333,
        size.width * 0.5540741,
        size.height * 0.6140741,
        size.width * 0.5538889,
        size.height * 0.5997222);
    path_1.cubicTo(
        size.width * 0.5537037,
        size.height * 0.5857407,
        size.width * 0.5427778,
        size.height * 0.5832407,
        size.width * 0.5314815,
        size.height * 0.5832407);
    path_1.cubicTo(
        size.width * 0.4892593,
        size.height * 0.5830556,
        size.width * 0.4469444,
        size.height * 0.5831481,
        size.width * 0.4025000,
        size.height * 0.5831481);
    path_1.cubicTo(
        size.width * 0.4025000,
        size.height * 0.6147222,
        size.width * 0.4022222,
        size.height * 0.6451852,
        size.width * 0.4028704,
        size.height * 0.6755556);
    path_1.cubicTo(
        size.width * 0.4029630,
        size.height * 0.6786111,
        size.width * 0.4080556,
        size.height * 0.6834259,
        size.width * 0.4115741,
        size.height * 0.6842593);
    path_1.cubicTo(
        size.width * 0.4644444,
        size.height * 0.6967593,
        size.width * 0.5168519,
        size.height * 0.6972222,
        size.width * 0.5661111,
        size.height * 0.6711111);
    path_1.cubicTo(
        size.width * 0.5944444,
        size.height * 0.6560185,
        size.width * 0.6214815,
        size.height * 0.6383333,
        size.width * 0.6481481,
        size.height * 0.6203704);
    path_1.cubicTo(
        size.width * 0.6537037,
        size.height * 0.6166667,
        size.width * 0.6590741,
        size.height * 0.6052778,
        size.width * 0.6572222,
        size.height * 0.5999074);
    path_1.cubicTo(
        size.width * 0.6553704,
        size.height * 0.5945370,
        size.width * 0.6437963,
        size.height * 0.5883333,
        size.width * 0.6375926,
        size.height * 0.5893519);
    path_1.cubicTo(
        size.width * 0.6173148,
        size.height * 0.5925926,
        size.width * 0.5975926,
        size.height * 0.5986111,
        size.width * 0.5777778,
        size.height * 0.6042593);
    path_1.cubicTo(
        size.width * 0.5750926,
        size.height * 0.6050000,
        size.width * 0.5728704,
        size.height * 0.6092593,
        size.width * 0.5716667,
        size.height * 0.6124074);
    path_1.cubicTo(
        size.width * 0.5659259,
        size.height * 0.6275000,
        size.width * 0.5540741,
        size.height * 0.6356481,
        size.width * 0.5391667,
        size.height * 0.6363889);
    path_1.cubicTo(
        size.width * 0.5128704,
        size.height * 0.6376852,
        size.width * 0.4864815,
        size.height * 0.6367593,
        size.width * 0.4600926,
        size.height * 0.6367593);
    path_1.cubicTo(
        size.width * 0.4592593,
        size.height * 0.6347222,
        size.width * 0.4583333,
        size.height * 0.6325000,
        size.width * 0.4574074,
        size.height * 0.6303704);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3735185, size.height * 0.5837963);
    path_2.cubicTo(
        size.width * 0.3595370,
        size.height * 0.5837963,
        size.width * 0.3464815,
        size.height * 0.5837963,
        size.width * 0.3325000,
        size.height * 0.5837963);
    path_2.cubicTo(
        size.width * 0.3325000,
        size.height * 0.6258333,
        size.width * 0.3325000,
        size.height * 0.6675000,
        size.width * 0.3325000,
        size.height * 0.7102778);
    path_2.cubicTo(
        size.width * 0.3459259,
        size.height * 0.7102778,
        size.width * 0.3592593,
        size.height * 0.7102778,
        size.width * 0.3735185,
        size.height * 0.7102778);
    path_2.cubicTo(
        size.width * 0.3735185,
        size.height * 0.6682407,
        size.width * 0.3735185,
        size.height * 0.6269444,
        size.width * 0.3735185,
        size.height * 0.5837963);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
