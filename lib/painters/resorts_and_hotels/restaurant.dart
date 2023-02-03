import 'package:flutter/material.dart';

class RestaurantPainter extends CustomPainter {
  final Color? color;
  RestaurantPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5078704, size.height * 0.3745370);
    path_0.cubicTo(
        size.width * 0.5822222,
        size.height * 0.3741667,
        size.width * 0.6428704,
        size.height * 0.4339815,
        size.width * 0.6432407,
        size.height * 0.5081481);
    path_0.cubicTo(
        size.width * 0.6436111,
        size.height * 0.5822222,
        size.width * 0.5832407,
        size.height * 0.6432407,
        size.width * 0.5093519,
        size.height * 0.6434259);
    path_0.cubicTo(
        size.width * 0.4350000,
        size.height * 0.6436111,
        size.width * 0.3742593,
        size.height * 0.5835185,
        size.width * 0.3739815,
        size.height * 0.5096296);
    path_0.cubicTo(
        size.width * 0.3737963,
        size.height * 0.4352778,
        size.width * 0.4336111,
        size.height * 0.3749074,
        size.width * 0.5078704,
        size.height * 0.3745370);
    path_0.close();
    path_0.moveTo(size.width * 0.5077778, size.height * 0.6007407);
    path_0.cubicTo(
        size.width * 0.5586111,
        size.height * 0.6009259,
        size.width * 0.5999074,
        size.height * 0.5605556,
        size.width * 0.6006481,
        size.height * 0.5098148);
    path_0.cubicTo(
        size.width * 0.6013889,
        size.height * 0.4596296,
        size.width * 0.5598148,
        size.height * 0.4174074,
        size.width * 0.5094444,
        size.height * 0.4170370);
    path_0.cubicTo(
        size.width * 0.4585185,
        size.height * 0.4167593,
        size.width * 0.4169444,
        size.height * 0.4575000,
        size.width * 0.4166667,
        size.height * 0.5080556);
    path_0.cubicTo(
        size.width * 0.4164815,
        size.height * 0.5588889,
        size.width * 0.4574074,
        size.height * 0.6004630,
        size.width * 0.5077778,
        size.height * 0.6007407);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3212963, size.height * 0.3592593);
    path_1.cubicTo(
        size.width * 0.3212963,
        size.height * 0.3793519,
        size.width * 0.3212963,
        size.height * 0.3993519,
        size.width * 0.3212963,
        size.height * 0.4194444);
    path_1.cubicTo(
        size.width * 0.3230556,
        size.height * 0.4194444,
        size.width * 0.3248148,
        size.height * 0.4194444,
        size.width * 0.3266667,
        size.height * 0.4194444);
    path_1.cubicTo(
        size.width * 0.3266667,
        size.height * 0.3995370,
        size.width * 0.3266667,
        size.height * 0.3796296,
        size.width * 0.3266667,
        size.height * 0.3597222);
    path_1.cubicTo(
        size.width * 0.3284259,
        size.height * 0.3597222,
        size.width * 0.3301852,
        size.height * 0.3597222,
        size.width * 0.3318519,
        size.height * 0.3597222);
    path_1.cubicTo(
        size.width * 0.3318519,
        size.height * 0.3797222,
        size.width * 0.3318519,
        size.height * 0.3996296,
        size.width * 0.3318519,
        size.height * 0.4196296);
    path_1.cubicTo(
        size.width * 0.3337037,
        size.height * 0.4196296,
        size.width * 0.3354630,
        size.height * 0.4197222,
        size.width * 0.3373148,
        size.height * 0.4197222);
    path_1.cubicTo(
        size.width * 0.3373148,
        size.height * 0.3996296,
        size.width * 0.3373148,
        size.height * 0.3795370,
        size.width * 0.3373148,
        size.height * 0.3594444);
    path_1.cubicTo(
        size.width * 0.3387037,
        size.height * 0.3594444,
        size.width * 0.3400926,
        size.height * 0.3594444,
        size.width * 0.3414815,
        size.height * 0.3594444);
    path_1.cubicTo(
        size.width * 0.3423148,
        size.height * 0.3792593,
        size.width * 0.3432407,
        size.height * 0.3991667,
        size.width * 0.3440741,
        size.height * 0.4189815);
    path_1.cubicTo(
        size.width * 0.3454630,
        size.height * 0.4190741,
        size.width * 0.3467593,
        size.height * 0.4190741,
        size.width * 0.3481481,
        size.height * 0.4191667);
    path_1.cubicTo(
        size.width * 0.3481481,
        size.height * 0.3991667,
        size.width * 0.3481481,
        size.height * 0.3791667,
        size.width * 0.3481481,
        size.height * 0.3591667);
    path_1.cubicTo(
        size.width * 0.3495370,
        size.height * 0.3590741,
        size.width * 0.3510185,
        size.height * 0.3588889,
        size.width * 0.3524074,
        size.height * 0.3587963);
    path_1.cubicTo(
        size.width * 0.3531481,
        size.height * 0.3605556,
        size.width * 0.3545370,
        size.height * 0.3622222,
        size.width * 0.3546296,
        size.height * 0.3639815);
    path_1.cubicTo(
        size.width * 0.3560185,
        size.height * 0.3879630,
        size.width * 0.3581481,
        size.height * 0.4120370,
        size.width * 0.3580556,
        size.height * 0.4361111);
    path_1.cubicTo(
        size.width * 0.3580556,
        size.height * 0.4441667,
        size.width * 0.3525000,
        size.height * 0.4522222,
        size.width * 0.3495370,
        size.height * 0.4601852);
    path_1.cubicTo(
        size.width * 0.3469444,
        size.height * 0.4672222,
        size.width * 0.3419444,
        size.height * 0.4743519,
        size.width * 0.3420370,
        size.height * 0.4813889);
    path_1.cubicTo(
        size.width * 0.3430556,
        size.height * 0.5349074,
        size.width * 0.3450000,
        size.height * 0.5883333,
        size.width * 0.3466667,
        size.height * 0.6418519);
    path_1.cubicTo(
        size.width * 0.3467593,
        size.height * 0.6450000,
        size.width * 0.3468519,
        size.height * 0.6480556,
        size.width * 0.3468519,
        size.height * 0.6512037);
    path_1.cubicTo(
        size.width * 0.3469444,
        size.height * 0.6606481,
        size.width * 0.3480556,
        size.height * 0.6724074,
        size.width * 0.3350000,
        size.height * 0.6725000);
    path_1.cubicTo(
        size.width * 0.3218519,
        size.height * 0.6725926,
        size.width * 0.3228704,
        size.height * 0.6608333,
        size.width * 0.3231481,
        size.height * 0.6513889);
    path_1.cubicTo(
        size.width * 0.3248148,
        size.height * 0.5943519,
        size.width * 0.3268519,
        size.height * 0.5373148,
        size.width * 0.3279630,
        size.height * 0.4801852);
    path_1.cubicTo(
        size.width * 0.3280556,
        size.height * 0.4738889,
        size.width * 0.3237963,
        size.height * 0.4675000,
        size.width * 0.3213889,
        size.height * 0.4612037);
    path_1.cubicTo(
        size.width * 0.3181481,
        size.height * 0.4527778,
        size.width * 0.3120370,
        size.height * 0.4445370,
        size.width * 0.3119444,
        size.height * 0.4361111);
    path_1.cubicTo(
        size.width * 0.3117593,
        size.height * 0.4105556,
        size.width * 0.3138889,
        size.height * 0.3849074,
        size.width * 0.3150926,
        size.height * 0.3592593);
    path_1.cubicTo(
        size.width * 0.3171296,
        size.height * 0.3592593,
        size.width * 0.3191667,
        size.height * 0.3592593,
        size.width * 0.3212963,
        size.height * 0.3592593);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6937963, size.height * 0.4436111);
    path_2.cubicTo(
        size.width * 0.6937963,
        size.height * 0.4654630,
        size.width * 0.6938889,
        size.height * 0.4873148,
        size.width * 0.6937963,
        size.height * 0.5090741);
    path_2.cubicTo(
        size.width * 0.6935185,
        size.height * 0.5560185,
        size.width * 0.6931481,
        size.height * 0.6029630,
        size.width * 0.6925000,
        size.height * 0.6500000);
    path_2.cubicTo(
        size.width * 0.6924074,
        size.height * 0.6546296,
        size.width * 0.6911111,
        size.height * 0.6599074,
        size.width * 0.6884259,
        size.height * 0.6634259);
    path_2.cubicTo(
        size.width * 0.6867593,
        size.height * 0.6656481,
        size.width * 0.6799074,
        size.height * 0.6670370,
        size.width * 0.6782407,
        size.height * 0.6655556);
    path_2.cubicTo(
        size.width * 0.6747222,
        size.height * 0.6624074,
        size.width * 0.6709259,
        size.height * 0.6572222,
        size.width * 0.6709259,
        size.height * 0.6527778);
    path_2.cubicTo(
        size.width * 0.6707407,
        size.height * 0.6274074,
        size.width * 0.6715741,
        size.height * 0.6020370,
        size.width * 0.6721296,
        size.height * 0.5766667);
    path_2.cubicTo(
        size.width * 0.6723148,
        size.height * 0.5695370,
        size.width * 0.6728704,
        size.height * 0.5624074,
        size.width * 0.6730556,
        size.height * 0.5552778);
    path_2.cubicTo(
        size.width * 0.6732407,
        size.height * 0.5443519,
        size.width * 0.6752778,
        size.height * 0.5334259,
        size.width * 0.6666667,
        size.height * 0.5237963);
    path_2.cubicTo(
        size.width * 0.6637037,
        size.height * 0.5204630,
        size.width * 0.6637037,
        size.height * 0.5135185,
        size.width * 0.6639815,
        size.height * 0.5083333);
    path_2.cubicTo(
        size.width * 0.6661111,
        size.height * 0.4683333,
        size.width * 0.6683333,
        size.height * 0.4284259,
        size.width * 0.6712037,
        size.height * 0.3884259);
    path_2.cubicTo(
        size.width * 0.6717593,
        size.height * 0.3806481,
        size.width * 0.6746296,
        size.height * 0.3726852,
        size.width * 0.6779630,
        size.height * 0.3655556);
    path_2.cubicTo(
        size.width * 0.6797222,
        size.height * 0.3619444,
        size.width * 0.6849074,
        size.height * 0.3599074,
        size.width * 0.6885185,
        size.height * 0.3572222);
    path_2.cubicTo(
        size.width * 0.6899074,
        size.height * 0.3610185,
        size.width * 0.6925926,
        size.height * 0.3649074,
        size.width * 0.6925926,
        size.height * 0.3687037);
    path_2.cubicTo(
        size.width * 0.6929630,
        size.height * 0.3936111,
        size.width * 0.6927778,
        size.height * 0.4186111,
        size.width * 0.6927778,
        size.height * 0.4435185);
    path_2.cubicTo(
        size.width * 0.6930556,
        size.height * 0.4436111,
        size.width * 0.6934259,
        size.height * 0.4436111,
        size.width * 0.6937963,
        size.height * 0.4436111);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5082407, size.height * 0.5820370);
    path_3.cubicTo(
        size.width * 0.4676852,
        size.height * 0.5819444,
        size.width * 0.4351852,
        size.height * 0.5492593,
        size.width * 0.4351852,
        size.height * 0.5086111);
    path_3.cubicTo(
        size.width * 0.4352778,
        size.height * 0.4683333,
        size.width * 0.4682407,
        size.height * 0.4355556,
        size.width * 0.5087963,
        size.height * 0.4353704);
    path_3.cubicTo(
        size.width * 0.5486111,
        size.height * 0.4352778,
        size.width * 0.5822222,
        size.height * 0.4692593,
        size.width * 0.5819444,
        size.height * 0.5091667);
    path_3.cubicTo(
        size.width * 0.5815741,
        size.height * 0.5498148,
        size.width * 0.5488889,
        size.height * 0.5821296,
        size.width * 0.5082407,
        size.height * 0.5820370);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
