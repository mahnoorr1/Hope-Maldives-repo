import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  final Color? color;
  RPSCustomPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5460185, size.height * 0.7414815);
    path_0.cubicTo(
        size.width * 0.4757407,
        size.height * 0.7414815,
        size.width * 0.4189815,
        size.height * 0.6848148,
        size.width * 0.4189815,
        size.height * 0.6147222);
    path_0.cubicTo(
        size.width * 0.4189815,
        size.height * 0.5446296,
        size.width * 0.4755556,
        size.height * 0.4880556,
        size.width * 0.5458333,
        size.height * 0.4879630);
    path_0.cubicTo(
        size.width * 0.6159259,
        size.height * 0.4878704,
        size.width * 0.6728704,
        size.height * 0.5446296,
        size.width * 0.6728704,
        size.height * 0.6148148);
    path_0.cubicTo(
        size.width * 0.6728704,
        size.height * 0.6848148,
        size.width * 0.6161111,
        size.height * 0.7414815,
        size.width * 0.5460185,
        size.height * 0.7414815);
    path_0.close();
    path_0.moveTo(size.width * 0.4651852, size.height * 0.6147222);
    path_0.cubicTo(
        size.width * 0.4650926,
        size.height * 0.6591667,
        size.width * 0.5013889,
        size.height * 0.6954630,
        size.width * 0.5458333,
        size.height * 0.6954630);
    path_0.cubicTo(
        size.width * 0.5902778,
        size.height * 0.6954630,
        size.width * 0.6263889,
        size.height * 0.6594444,
        size.width * 0.6265741,
        size.height * 0.6150000);
    path_0.cubicTo(
        size.width * 0.6266667,
        size.height * 0.5702778,
        size.width * 0.5905556,
        size.height * 0.5339815,
        size.width * 0.5459259,
        size.height * 0.5339815);
    path_0.cubicTo(
        size.width * 0.5014815,
        size.height * 0.5339815,
        size.width * 0.4652778,
        size.height * 0.5701852,
        size.width * 0.4651852,
        size.height * 0.6147222);
    path_0.close();
    path_0.moveTo(size.width * 0.5468519, size.height * 0.5018519);
    path_0.cubicTo(
        size.width * 0.5468519,
        size.height * 0.5014815,
        size.width * 0.5467593,
        size.height * 0.5011111,
        size.width * 0.5467593,
        size.height * 0.5007407);
    path_0.cubicTo(
        size.width * 0.5456481,
        size.height * 0.5004630,
        size.width * 0.5444444,
        size.height * 0.5000926,
        size.width * 0.5433333,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.5357407,
        size.height * 0.4990741,
        size.width * 0.5282407,
        size.height * 0.4998148,
        size.width * 0.5207407,
        size.height * 0.5009259);
    path_0.cubicTo(
        size.width * 0.5002778,
        size.height * 0.5040741,
        size.width * 0.4824074,
        size.height * 0.5124074,
        size.width * 0.4675000,
        size.height * 0.5269444);
    path_0.cubicTo(
        size.width * 0.4594444,
        size.height * 0.5349074,
        size.width * 0.4532407,
        size.height * 0.5443519,
        size.width * 0.4475000,
        size.height * 0.5539815);
    path_0.cubicTo(
        size.width * 0.4455556,
        size.height * 0.5572222,
        size.width * 0.4446296,
        size.height * 0.5610185,
        size.width * 0.4433333,
        size.height * 0.5645370);
    path_0.cubicTo(
        size.width * 0.4430556,
        size.height * 0.5651852,
        size.width * 0.4433333,
        size.height * 0.5660185,
        size.width * 0.4433333,
        size.height * 0.5667593);
    path_0.cubicTo(
        size.width * 0.4435185,
        size.height * 0.5668519,
        size.width * 0.4437037,
        size.height * 0.5668519,
        size.width * 0.4439815,
        size.height * 0.5669444);
    path_0.cubicTo(
        size.width * 0.4446296,
        size.height * 0.5662037,
        size.width * 0.4453704,
        size.height * 0.5655556,
        size.width * 0.4459259,
        size.height * 0.5647222);
    path_0.cubicTo(
        size.width * 0.4531481,
        size.height * 0.5543519,
        size.width * 0.4615741,
        size.height * 0.5449074,
        size.width * 0.4710185,
        size.height * 0.5364815);
    path_0.cubicTo(
        size.width * 0.4914815,
        size.height * 0.5182407,
        size.width * 0.5146296,
        size.height * 0.5057407,
        size.width * 0.5424074,
        size.height * 0.5030556);
    path_0.cubicTo(
        size.width * 0.5437963,
        size.height * 0.5029630,
        size.width * 0.5452778,
        size.height * 0.5023148,
        size.width * 0.5468519,
        size.height * 0.5018519);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4003704, size.height * 0.4988889);
    path_1.cubicTo(
        size.width * 0.4009259,
        size.height * 0.5004630,
        size.width * 0.4013889,
        size.height * 0.5012963,
        size.width * 0.4014815,
        size.height * 0.5022222);
    path_1.cubicTo(
        size.width * 0.4037963,
        size.height * 0.5217593,
        size.width * 0.4060185,
        size.height * 0.5412963,
        size.width * 0.4067593,
        size.height * 0.5609259);
    path_1.cubicTo(
        size.width * 0.4070370,
        size.height * 0.5691667,
        size.width * 0.4049074,
        size.height * 0.5766667,
        size.width * 0.4006481,
        size.height * 0.5836111);
    path_1.cubicTo(
        size.width * 0.3977778,
        size.height * 0.5883333,
        size.width * 0.3946296,
        size.height * 0.5930556,
        size.width * 0.3916667,
        size.height * 0.5977778);
    path_1.cubicTo(
        size.width * 0.3892593,
        size.height * 0.6015741,
        size.width * 0.3878704,
        size.height * 0.6056481,
        size.width * 0.3876852,
        size.height * 0.6102778);
    path_1.cubicTo(
        size.width * 0.3869444,
        size.height * 0.6270370,
        size.width * 0.3872222,
        size.height * 0.6437963,
        size.width * 0.3887037,
        size.height * 0.6604630);
    path_1.cubicTo(
        size.width * 0.3899074,
        size.height * 0.6739815,
        size.width * 0.3910185,
        size.height * 0.6874074,
        size.width * 0.3925000,
        size.height * 0.7008333);
    path_1.cubicTo(
        size.width * 0.3933333,
        size.height * 0.7082407,
        size.width * 0.3949074,
        size.height * 0.7155556,
        size.width * 0.3941667,
        size.height * 0.7229630);
    path_1.cubicTo(
        size.width * 0.3937037,
        size.height * 0.7275000,
        size.width * 0.3928704,
        size.height * 0.7320370,
        size.width * 0.3914815,
        size.height * 0.7363889);
    path_1.cubicTo(
        size.width * 0.3902778,
        size.height * 0.7402778,
        size.width * 0.3876852,
        size.height * 0.7432407,
        size.width * 0.3831481,
        size.height * 0.7435185);
    path_1.cubicTo(
        size.width * 0.3781481,
        size.height * 0.7437963,
        size.width * 0.3743519,
        size.height * 0.7416667,
        size.width * 0.3720370,
        size.height * 0.7372222);
    path_1.cubicTo(
        size.width * 0.3688889,
        size.height * 0.7311111,
        size.width * 0.3686111,
        size.height * 0.7245370,
        size.width * 0.3692593,
        size.height * 0.7179630);
    path_1.cubicTo(
        size.width * 0.3699074,
        size.height * 0.7109259,
        size.width * 0.3710185,
        size.height * 0.7038889,
        size.width * 0.3718519,
        size.height * 0.6968519);
    path_1.cubicTo(
        size.width * 0.3726852,
        size.height * 0.6891667,
        size.width * 0.3737037,
        size.height * 0.6814815,
        size.width * 0.3739815,
        size.height * 0.6737963);
    path_1.cubicTo(
        size.width * 0.3748148,
        size.height * 0.6525926,
        size.width * 0.3752778,
        size.height * 0.6312963,
        size.width * 0.3760185,
        size.height * 0.6100926);
    path_1.cubicTo(
        size.width * 0.3762963,
        size.height * 0.6025000,
        size.width * 0.3737963,
        size.height * 0.5962037,
        size.width * 0.3682407,
        size.height * 0.5910185);
    path_1.cubicTo(
        size.width * 0.3595370,
        size.height * 0.5827778,
        size.width * 0.3572222,
        size.height * 0.5724074,
        size.width * 0.3580556,
        size.height * 0.5608333);
    path_1.cubicTo(
        size.width * 0.3593519,
        size.height * 0.5440741,
        size.width * 0.3603704,
        size.height * 0.5273148,
        size.width * 0.3616667,
        size.height * 0.5104630);
    path_1.cubicTo(
        size.width * 0.3618519,
        size.height * 0.5075926,
        size.width * 0.3627778,
        size.height * 0.5048148,
        size.width * 0.3637037,
        size.height * 0.5020370);
    path_1.cubicTo(
        size.width * 0.3638889,
        size.height * 0.5012963,
        size.width * 0.3650926,
        size.height * 0.5008333,
        size.width * 0.3658333,
        size.height * 0.5002778);
    path_1.cubicTo(
        size.width * 0.3663889,
        size.height * 0.5010185,
        size.width * 0.3672222,
        size.height * 0.5017593,
        size.width * 0.3675000,
        size.height * 0.5025926);
    path_1.cubicTo(
        size.width * 0.3678704,
        size.height * 0.5037963,
        size.width * 0.3677778,
        size.height * 0.5051852,
        size.width * 0.3677778,
        size.height * 0.5064815);
    path_1.cubicTo(
        size.width * 0.3677778,
        size.height * 0.5225000,
        size.width * 0.3677778,
        size.height * 0.5384259,
        size.width * 0.3677778,
        size.height * 0.5544444);
    path_1.cubicTo(
        size.width * 0.3677778,
        size.height * 0.5559259,
        size.width * 0.3678704,
        size.height * 0.5574074,
        size.width * 0.3681481,
        size.height * 0.5587963);
    path_1.cubicTo(
        size.width * 0.3687037,
        size.height * 0.5610185,
        size.width * 0.3706481,
        size.height * 0.5615741,
        size.width * 0.3719444,
        size.height * 0.5597222);
    path_1.cubicTo(
        size.width * 0.3728704,
        size.height * 0.5584259,
        size.width * 0.3735185,
        size.height * 0.5564815,
        size.width * 0.3735185,
        size.height * 0.5549074);
    path_1.cubicTo(
        size.width * 0.3736111,
        size.height * 0.5395370,
        size.width * 0.3735185,
        size.height * 0.5241667,
        size.width * 0.3736111,
        size.height * 0.5087963);
    path_1.cubicTo(
        size.width * 0.3736111,
        size.height * 0.5065741,
        size.width * 0.3739815,
        size.height * 0.5042593,
        size.width * 0.3745370,
        size.height * 0.5020370);
    path_1.cubicTo(
        size.width * 0.3747222,
        size.height * 0.5012037,
        size.width * 0.3759259,
        size.height * 0.5006481,
        size.width * 0.3766667,
        size.height * 0.5000000);
    path_1.cubicTo(
        size.width * 0.3773148,
        size.height * 0.5008333,
        size.width * 0.3782407,
        size.height * 0.5014815,
        size.width * 0.3785185,
        size.height * 0.5024074);
    path_1.cubicTo(
        size.width * 0.3788889,
        size.height * 0.5034259,
        size.width * 0.3787037,
        size.height * 0.5046296,
        size.width * 0.3787037,
        size.height * 0.5058333);
    path_1.cubicTo(
        size.width * 0.3787037,
        size.height * 0.5219444,
        size.width * 0.3787037,
        size.height * 0.5381481,
        size.width * 0.3787037,
        size.height * 0.5542593);
    path_1.cubicTo(
        size.width * 0.3787037,
        size.height * 0.5553704,
        size.width * 0.3787037,
        size.height * 0.5565741,
        size.width * 0.3789815,
        size.height * 0.5576852);
    path_1.cubicTo(
        size.width * 0.3794444,
        size.height * 0.5601852,
        size.width * 0.3812037,
        size.height * 0.5609259,
        size.width * 0.3833333,
        size.height * 0.5595370);
    path_1.cubicTo(
        size.width * 0.3850000,
        size.height * 0.5584259,
        size.width * 0.3855556,
        size.height * 0.5568519,
        size.width * 0.3855556,
        size.height * 0.5548148);
    path_1.cubicTo(
        size.width * 0.3855556,
        size.height * 0.5390741,
        size.width * 0.3854630,
        size.height * 0.5233333,
        size.width * 0.3855556,
        size.height * 0.5075000);
    path_1.cubicTo(
        size.width * 0.3855556,
        size.height * 0.5052778,
        size.width * 0.3860185,
        size.height * 0.5029630,
        size.width * 0.3865741,
        size.height * 0.5007407);
    path_1.cubicTo(
        size.width * 0.3868519,
        size.height * 0.4998148,
        size.width * 0.3880556,
        size.height * 0.4992593,
        size.width * 0.3888889,
        size.height * 0.4985185);
    path_1.cubicTo(
        size.width * 0.3895370,
        size.height * 0.4993519,
        size.width * 0.3903704,
        size.height * 0.5000926,
        size.width * 0.3906481,
        size.height * 0.5009259);
    path_1.cubicTo(
        size.width * 0.3910185,
        size.height * 0.5020370,
        size.width * 0.3910185,
        size.height * 0.5033333,
        size.width * 0.3910185,
        size.height * 0.5045370);
    path_1.cubicTo(
        size.width * 0.3910185,
        size.height * 0.5212963,
        size.width * 0.3910185,
        size.height * 0.5380556,
        size.width * 0.3910185,
        size.height * 0.5548148);
    path_1.cubicTo(
        size.width * 0.3910185,
        size.height * 0.5560185,
        size.width * 0.3910185,
        size.height * 0.5574074,
        size.width * 0.3915741,
        size.height * 0.5583333);
    path_1.cubicTo(
        size.width * 0.3920370,
        size.height * 0.5591667,
        size.width * 0.3932407,
        size.height * 0.5601852,
        size.width * 0.3941667,
        size.height * 0.5601852);
    path_1.cubicTo(
        size.width * 0.3950926,
        size.height * 0.5601852,
        size.width * 0.3962963,
        size.height * 0.5592593,
        size.width * 0.3967593,
        size.height * 0.5584259);
    path_1.cubicTo(
        size.width * 0.3973148,
        size.height * 0.5574074,
        size.width * 0.3973148,
        size.height * 0.5561111,
        size.width * 0.3974074,
        size.height * 0.5549074);
    path_1.cubicTo(
        size.width * 0.3975926,
        size.height * 0.5392593,
        size.width * 0.3977778,
        size.height * 0.5235185,
        size.width * 0.3979630,
        size.height * 0.5078704);
    path_1.cubicTo(
        size.width * 0.3979630,
        size.height * 0.5058333,
        size.width * 0.3984259,
        size.height * 0.5037963,
        size.width * 0.3988889,
        size.height * 0.5017593);
    path_1.cubicTo(
        size.width * 0.3989815,
        size.height * 0.5007407,
        size.width * 0.3996296,
        size.height * 0.5000926,
        size.width * 0.4003704,
        size.height * 0.4988889);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7237963, size.height * 0.5653704);
    path_2.cubicTo(
        size.width * 0.7237963,
        size.height * 0.5842593,
        size.width * 0.7237963,
        size.height * 0.6031481,
        size.width * 0.7237963,
        size.height * 0.6220370);
    path_2.cubicTo(
        size.width * 0.7237963,
        size.height * 0.6250000,
        size.width * 0.7236111,
        size.height * 0.6279630,
        size.width * 0.7233333,
        size.height * 0.6309259);
    path_2.cubicTo(
        size.width * 0.7229630,
        size.height * 0.6344444,
        size.width * 0.7218519,
        size.height * 0.6375926,
        size.width * 0.7193519,
        size.height * 0.6401852);
    path_2.cubicTo(
        size.width * 0.7187963,
        size.height * 0.6407407,
        size.width * 0.7184259,
        size.height * 0.6417593,
        size.width * 0.7185185,
        size.height * 0.6425926);
    path_2.cubicTo(
        size.width * 0.7192593,
        size.height * 0.6545370,
        size.width * 0.7199074,
        size.height * 0.6665741,
        size.width * 0.7210185,
        size.height * 0.6785185);
    path_2.cubicTo(
        size.width * 0.7221296,
        size.height * 0.6906481,
        size.width * 0.7238889,
        size.height * 0.7026852,
        size.width * 0.7250926,
        size.height * 0.7147222);
    path_2.cubicTo(
        size.width * 0.7257407,
        size.height * 0.7219444,
        size.width * 0.7253704,
        size.height * 0.7290741,
        size.width * 0.7225926,
        size.height * 0.7359259);
    path_2.cubicTo(
        size.width * 0.7210185,
        size.height * 0.7398148,
        size.width * 0.7187037,
        size.height * 0.7429630,
        size.width * 0.7140741,
        size.height * 0.7432407);
    path_2.cubicTo(
        size.width * 0.7088889,
        size.height * 0.7435185,
        size.width * 0.7049074,
        size.height * 0.7413889,
        size.width * 0.7029630,
        size.height * 0.7367593);
    path_2.cubicTo(
        size.width * 0.7013889,
        size.height * 0.7330556,
        size.width * 0.7001852,
        size.height * 0.7287963,
        size.width * 0.7001852,
        size.height * 0.7248148);
    path_2.cubicTo(
        size.width * 0.7002778,
        size.height * 0.7171296,
        size.width * 0.7012963,
        size.height * 0.7094444,
        size.width * 0.7020370,
        size.height * 0.7017593);
    path_2.cubicTo(
        size.width * 0.7030556,
        size.height * 0.6912963,
        size.width * 0.7041667,
        size.height * 0.6809259,
        size.width * 0.7050000,
        size.height * 0.6704630);
    path_2.cubicTo(
        size.width * 0.7056481,
        size.height * 0.6622222,
        size.width * 0.7059259,
        size.height * 0.6539815,
        size.width * 0.7062963,
        size.height * 0.6457407);
    path_2.cubicTo(
        size.width * 0.7062963,
        size.height * 0.6446296,
        size.width * 0.7058333,
        size.height * 0.6432407,
        size.width * 0.7050926,
        size.height * 0.6423148);
    path_2.cubicTo(
        size.width * 0.7030556,
        size.height * 0.6399074,
        size.width * 0.7008333,
        size.height * 0.6377778,
        size.width * 0.6987037,
        size.height * 0.6354630);
    path_2.cubicTo(
        size.width * 0.6983333,
        size.height * 0.6350000,
        size.width * 0.6982407,
        size.height * 0.6342593,
        size.width * 0.6982407,
        size.height * 0.6336111);
    path_2.cubicTo(
        size.width * 0.6982407,
        size.height * 0.6052778,
        size.width * 0.6980556,
        size.height * 0.5770370,
        size.width * 0.6983333,
        size.height * 0.5487037);
    path_2.cubicTo(
        size.width * 0.6984259,
        size.height * 0.5375000,
        size.width * 0.6997222,
        size.height * 0.5263889,
        size.width * 0.7037037,
        size.height * 0.5158333);
    path_2.cubicTo(
        size.width * 0.7052778,
        size.height * 0.5116667,
        size.width * 0.7073148,
        size.height * 0.5077778,
        size.width * 0.7107407,
        size.height * 0.5047222);
    path_2.cubicTo(
        size.width * 0.7137037,
        size.height * 0.5020370,
        size.width * 0.7171296,
        size.height * 0.5007407,
        size.width * 0.7212037,
        size.height * 0.5007407);
    path_2.cubicTo(
        size.width * 0.7232407,
        size.height * 0.5007407,
        size.width * 0.7238889,
        size.height * 0.5013889,
        size.width * 0.7238889,
        size.height * 0.5035185);
    path_2.cubicTo(
        size.width * 0.7237037,
        size.height * 0.5242593,
        size.width * 0.7237963,
        size.height * 0.5448148,
        size.width * 0.7237963,
        size.height * 0.5653704);
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
