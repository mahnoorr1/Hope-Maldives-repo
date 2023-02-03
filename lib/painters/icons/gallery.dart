import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class GalleryIconPainer extends CustomPainter {
  final Color? color;
  GalleryIconPainer({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3214500, size.height * 0.15);
    path_0.lineTo(0, size.height * 0.8372131);
    path_0.lineTo(size.width * 0.6428500, size.height * 0.8372131);
    path_0.lineTo(size.width * 0.5806500, size.height * 0.6755657);
    path_0.lineTo(size.width * 0.5185000, size.height * 0.5127788);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.09;
    paint0Stroke.color = color ?? Colors.grey.withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7, size.height * 0.825);
    path_1.lineTo(size.width, size.height * 0.825);
    path_1.lineTo(size.width * 0.7, size.height * 0.4);
    path_1.lineTo(size.width * 0.55, size.height * 0.6);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.09;
    paint1Stroke.color = color ?? Colors.grey.withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
