import 'package:flutter/material.dart';

class ParkingPainter extends CustomPainter {
  final Color? color;
  ParkingPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3488889, size.height * 0.6403704);
    path_0.cubicTo(
        size.width * 0.3407407,
        size.height * 0.6403704,
        size.width * 0.3329630,
        size.height * 0.6403704,
        size.width * 0.3250926,
        size.height * 0.6403704);
    path_0.cubicTo(
        size.width * 0.3250000,
        size.height * 0.6396296,
        size.width * 0.3249074,
        size.height * 0.6390741,
        size.width * 0.3249074,
        size.height * 0.6385185);
    path_0.cubicTo(
        size.width * 0.3249074,
        size.height * 0.6128704,
        size.width * 0.3248148,
        size.height * 0.5873148,
        size.width * 0.3249074,
        size.height * 0.5616667);
    path_0.cubicTo(
        size.width * 0.3250000,
        size.height * 0.5475926,
        size.width * 0.3350926,
        size.height * 0.5339815,
        size.width * 0.3481481,
        size.height * 0.5304630);
    path_0.cubicTo(
        size.width * 0.3502778,
        size.height * 0.5299074,
        size.width * 0.3512037,
        size.height * 0.5288889,
        size.width * 0.3519444,
        size.height * 0.5269444);
    path_0.cubicTo(
        size.width * 0.3592593,
        size.height * 0.5078704,
        size.width * 0.3666667,
        size.height * 0.4888889,
        size.width * 0.3739815,
        size.height * 0.4698148);
    path_0.cubicTo(
        size.width * 0.3775926,
        size.height * 0.4604630,
        size.width * 0.3832407,
        size.height * 0.4530556,
        size.width * 0.3927778,
        size.height * 0.4492593);
    path_0.cubicTo(
        size.width * 0.3973148,
        size.height * 0.4474074,
        size.width * 0.4019444,
        size.height * 0.4467593,
        size.width * 0.4068519,
        size.height * 0.4467593);
    path_0.cubicTo(
        size.width * 0.4172222,
        size.height * 0.4467593,
        size.width * 0.4276852,
        size.height * 0.4467593,
        size.width * 0.4380556,
        size.height * 0.4468519);
    path_0.cubicTo(
        size.width * 0.4400000,
        size.height * 0.4468519,
        size.width * 0.4409259,
        size.height * 0.4462963,
        size.width * 0.4418519,
        size.height * 0.4445370);
    path_0.cubicTo(
        size.width * 0.4450000,
        size.height * 0.4387037,
        size.width * 0.4483333,
        size.height * 0.4329630,
        size.width * 0.4517593,
        size.height * 0.4273148);
    path_0.cubicTo(
        size.width * 0.4537037,
        size.height * 0.4240741,
        size.width * 0.4564815,
        size.height * 0.4225000,
        size.width * 0.4606481,
        size.height * 0.4227778);
    path_0.cubicTo(
        size.width * 0.4669444,
        size.height * 0.4231481,
        size.width * 0.4731481,
        size.height * 0.4229630,
        size.width * 0.4794444,
        size.height * 0.4227778);
    path_0.cubicTo(
        size.width * 0.4820370,
        size.height * 0.4226852,
        size.width * 0.4841667,
        size.height * 0.4235185,
        size.width * 0.4855556,
        size.height * 0.4256481);
    path_0.cubicTo(
        size.width * 0.4893519,
        size.height * 0.4317593,
        size.width * 0.4931481,
        size.height * 0.4379630,
        size.width * 0.4966667,
        size.height * 0.4442593);
    path_0.cubicTo(
        size.width * 0.4977778,
        size.height * 0.4462037,
        size.width * 0.4987037,
        size.height * 0.4469444,
        size.width * 0.5009259,
        size.height * 0.4469444);
    path_0.cubicTo(
        size.width * 0.5107407,
        size.height * 0.4467593,
        size.width * 0.5205556,
        size.height * 0.4468519,
        size.width * 0.5303704,
        size.height * 0.4468519);
    path_0.cubicTo(
        size.width * 0.5472222,
        size.height * 0.4468519,
        size.width * 0.5575926,
        size.height * 0.4539815,
        size.width * 0.5636111,
        size.height * 0.4698148);
    path_0.cubicTo(
        size.width * 0.5709259,
        size.height * 0.4892593,
        size.width * 0.5782407,
        size.height * 0.5087037,
        size.width * 0.5855556,
        size.height * 0.5281481);
    path_0.cubicTo(
        size.width * 0.5861111,
        size.height * 0.5296296,
        size.width * 0.5868519,
        size.height * 0.5302778,
        size.width * 0.5884259,
        size.height * 0.5307407);
    path_0.cubicTo(
        size.width * 0.5993519,
        size.height * 0.5339815,
        size.width * 0.6062037,
        size.height * 0.5414815,
        size.width * 0.6094444,
        size.height * 0.5522222);
    path_0.cubicTo(
        size.width * 0.6105556,
        size.height * 0.5559259,
        size.width * 0.6110185,
        size.height * 0.5600926,
        size.width * 0.6110185,
        size.height * 0.5639815);
    path_0.cubicTo(
        size.width * 0.6112037,
        size.height * 0.5886111,
        size.width * 0.6111111,
        size.height * 0.6132407,
        size.width * 0.6111111,
        size.height * 0.6378704);
    path_0.cubicTo(
        size.width * 0.6111111,
        size.height * 0.6386111,
        size.width * 0.6110185,
        size.height * 0.6394444,
        size.width * 0.6110185,
        size.height * 0.6404630);
    path_0.cubicTo(
        size.width * 0.6030556,
        size.height * 0.6404630,
        size.width * 0.5952778,
        size.height * 0.6404630,
        size.width * 0.5871296,
        size.height * 0.6404630);
    path_0.cubicTo(
        size.width * 0.5871296,
        size.height * 0.6414815,
        size.width * 0.5871296,
        size.height * 0.6424074,
        size.width * 0.5871296,
        size.height * 0.6432407);
    path_0.cubicTo(
        size.width * 0.5869444,
        size.height * 0.6495370,
        size.width * 0.5870370,
        size.height * 0.6559259,
        size.width * 0.5865741,
        size.height * 0.6622222);
    path_0.cubicTo(
        size.width * 0.5862963,
        size.height * 0.6662963,
        size.width * 0.5847222,
        size.height * 0.6700926,
        size.width * 0.5823148,
        size.height * 0.6734259);
    path_0.cubicTo(
        size.width * 0.5750926,
        size.height * 0.6834259,
        size.width * 0.5617593,
        size.height * 0.6830556,
        size.width * 0.5550926,
        size.height * 0.6726852);
    path_0.cubicTo(
        size.width * 0.5518519,
        size.height * 0.6675926,
        size.width * 0.5509259,
        size.height * 0.6618519,
        size.width * 0.5508333,
        size.height * 0.6560185);
    path_0.cubicTo(
        size.width * 0.5507407,
        size.height * 0.6516667,
        size.width * 0.5508333,
        size.height * 0.6473148,
        size.width * 0.5508333,
        size.height * 0.6429630);
    path_0.cubicTo(
        size.width * 0.5508333,
        size.height * 0.6422222,
        size.width * 0.5508333,
        size.height * 0.6414815,
        size.width * 0.5508333,
        size.height * 0.6406481);
    path_0.cubicTo(
        size.width * 0.4955556,
        size.height * 0.6406481,
        size.width * 0.4405556,
        size.height * 0.6406481,
        size.width * 0.3851852,
        size.height * 0.6406481);
    path_0.cubicTo(
        size.width * 0.3851852,
        size.height * 0.6415741,
        size.width * 0.3851852,
        size.height * 0.6424074,
        size.width * 0.3851852,
        size.height * 0.6432407);
    path_0.cubicTo(
        size.width * 0.3850000,
        size.height * 0.6495370,
        size.width * 0.3851852,
        size.height * 0.6559259,
        size.width * 0.3846296,
        size.height * 0.6622222);
    path_0.cubicTo(
        size.width * 0.3842593,
        size.height * 0.6672222,
        size.width * 0.3822222,
        size.height * 0.6717593,
        size.width * 0.3787037,
        size.height * 0.6754630);
    path_0.cubicTo(
        size.width * 0.3716667,
        size.height * 0.6827778,
        size.width * 0.3608333,
        size.height * 0.6823148,
        size.width * 0.3545370,
        size.height * 0.6743519);
    path_0.cubicTo(
        size.width * 0.3501852,
        size.height * 0.6688889,
        size.width * 0.3490741,
        size.height * 0.6624074,
        size.width * 0.3489815,
        size.height * 0.6556481);
    path_0.cubicTo(
        size.width * 0.3487963,
        size.height * 0.6506481,
        size.width * 0.3488889,
        size.height * 0.6456481,
        size.width * 0.3488889,
        size.height * 0.6403704);
    path_0.close();
    path_0.moveTo(size.width * 0.5629630, size.height * 0.5271296);
    path_0.cubicTo(
        size.width * 0.5625926,
        size.height * 0.5260185,
        size.width * 0.5624074,
        size.height * 0.5252778,
        size.width * 0.5621296,
        size.height * 0.5245370);
    path_0.cubicTo(
        size.width * 0.5586111,
        size.height * 0.5150926,
        size.width * 0.5550926,
        size.height * 0.5056481,
        size.width * 0.5514815,
        size.height * 0.4962037);
    path_0.cubicTo(
        size.width * 0.5491667,
        size.height * 0.4899074,
        size.width * 0.5467593,
        size.height * 0.4836111,
        size.width * 0.5444444,
        size.height * 0.4774074);
    path_0.cubicTo(
        size.width * 0.5416667,
        size.height * 0.4700926,
        size.width * 0.5378704,
        size.height * 0.4671296,
        size.width * 0.5310185,
        size.height * 0.4671296);
    path_0.cubicTo(
        size.width * 0.4898148,
        size.height * 0.4671296,
        size.width * 0.4485185,
        size.height * 0.4671296,
        size.width * 0.4073148,
        size.height * 0.4671296);
    path_0.cubicTo(
        size.width * 0.4059259,
        size.height * 0.4671296,
        size.width * 0.4045370,
        size.height * 0.4672222,
        size.width * 0.4031481,
        size.height * 0.4675926);
    path_0.cubicTo(
        size.width * 0.3977778,
        size.height * 0.4689815,
        size.width * 0.3954630,
        size.height * 0.4732407,
        size.width * 0.3937037,
        size.height * 0.4778704);
    path_0.cubicTo(
        size.width * 0.3877778,
        size.height * 0.4936111,
        size.width * 0.3818519,
        size.height * 0.5094444,
        size.width * 0.3759259,
        size.height * 0.5252778);
    path_0.cubicTo(
        size.width * 0.3757407,
        size.height * 0.5258333,
        size.width * 0.3755556,
        size.height * 0.5264815,
        size.width * 0.3753704,
        size.height * 0.5272222);
    path_0.cubicTo(
        size.width * 0.4379630,
        size.height * 0.5271296,
        size.width * 0.5002778,
        size.height * 0.5271296,
        size.width * 0.5629630,
        size.height * 0.5271296);
    path_0.close();
    path_0.moveTo(size.width * 0.3826852, size.height * 0.5933333);
    path_0.cubicTo(
        size.width * 0.3941667,
        size.height * 0.5932407,
        size.width * 0.4033333,
        size.height * 0.5837963,
        size.width * 0.4031481,
        size.height * 0.5722222);
    path_0.cubicTo(
        size.width * 0.4030556,
        size.height * 0.5606481,
        size.width * 0.3937963,
        size.height * 0.5515741,
        size.width * 0.3821296,
        size.height * 0.5516667);
    path_0.cubicTo(
        size.width * 0.3711111,
        size.height * 0.5517593,
        size.width * 0.3620370,
        size.height * 0.5612037,
        size.width * 0.3620370,
        size.height * 0.5725000);
    path_0.cubicTo(
        size.width * 0.3621296,
        size.height * 0.5838889,
        size.width * 0.3715741,
        size.height * 0.5934259,
        size.width * 0.3826852,
        size.height * 0.5933333);
    path_0.close();
    path_0.moveTo(size.width * 0.5350926, size.height * 0.5725000);
    path_0.cubicTo(
        size.width * 0.5350926,
        size.height * 0.5839815,
        size.width * 0.5442593,
        size.height * 0.5933333,
        size.width * 0.5555556,
        size.height * 0.5933333);
    path_0.cubicTo(
        size.width * 0.5668519,
        size.height * 0.5933333,
        size.width * 0.5760185,
        size.height * 0.5839815,
        size.width * 0.5760185,
        size.height * 0.5725000);
    path_0.cubicTo(
        size.width * 0.5760185,
        size.height * 0.5609259,
        size.width * 0.5669444,
        size.height * 0.5516667,
        size.width * 0.5555556,
        size.height * 0.5516667);
    path_0.cubicTo(
        size.width * 0.5441667,
        size.height * 0.5516667,
        size.width * 0.5350926,
        size.height * 0.5609259,
        size.width * 0.5350926,
        size.height * 0.5725000);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4710185, size.height * 0.3889815);
    path_1.cubicTo(
        size.width * 0.4781481,
        size.height * 0.3840741,
        size.width * 0.4855556,
        size.height * 0.3816667,
        size.width * 0.4938889,
        size.height * 0.3846296);
    path_1.cubicTo(
        size.width * 0.5025000,
        size.height * 0.3876852,
        size.width * 0.5110185,
        size.height * 0.3909259,
        size.width * 0.5196296,
        size.height * 0.3939815);
    path_1.cubicTo(
        size.width * 0.5207407,
        size.height * 0.3943519,
        size.width * 0.5222222,
        size.height * 0.3943519,
        size.width * 0.5233333,
        size.height * 0.3939815);
    path_1.cubicTo(
        size.width * 0.5530556,
        size.height * 0.3823148,
        size.width * 0.5825926,
        size.height * 0.3703704,
        size.width * 0.6124074,
        size.height * 0.3590741);
    path_1.cubicTo(
        size.width * 0.6237037,
        size.height * 0.3548148,
        size.width * 0.6355556,
        size.height * 0.3518519,
        size.width * 0.6472222,
        size.height * 0.3484259);
    path_1.cubicTo(
        size.width * 0.6538889,
        size.height * 0.3464815,
        size.width * 0.6603704,
        size.height * 0.3487037,
        size.width * 0.6668519,
        size.height * 0.3497222);
    path_1.cubicTo(
        size.width * 0.6693519,
        size.height * 0.3500926,
        size.width * 0.6719444,
        size.height * 0.3507407,
        size.width * 0.6742593,
        size.height * 0.3517593);
    path_1.cubicTo(
        size.width * 0.6797222,
        size.height * 0.3539815,
        size.width * 0.6807407,
        size.height * 0.3595370,
        size.width * 0.6762037,
        size.height * 0.3634259);
    path_1.cubicTo(
        size.width * 0.6731481,
        size.height * 0.3660185,
        size.width * 0.6697222,
        size.height * 0.3684259,
        size.width * 0.6660185,
        size.height * 0.3699074);
    path_1.cubicTo(
        size.width * 0.6527778,
        size.height * 0.3754630,
        size.width * 0.6394444,
        size.height * 0.3808333,
        size.width * 0.6260185,
        size.height * 0.3858333);
    path_1.cubicTo(
        size.width * 0.6103704,
        size.height * 0.3916667,
        size.width * 0.5946296,
        size.height * 0.3972222,
        size.width * 0.5787037,
        size.height * 0.4025000);
    path_1.cubicTo(
        size.width * 0.5570370,
        size.height * 0.4096296,
        size.width * 0.5345370,
        size.height * 0.4117593,
        size.width * 0.5117593,
        size.height * 0.4121296);
    path_1.cubicTo(
        size.width * 0.5057407,
        size.height * 0.4122222,
        size.width * 0.5009259,
        size.height * 0.4108333,
        size.width * 0.4962037,
        size.height * 0.4072222);
    path_1.cubicTo(
        size.width * 0.4882407,
        size.height * 0.4008333,
        size.width * 0.4796296,
        size.height * 0.3950926,
        size.width * 0.4710185,
        size.height * 0.3889815);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.5871296, size.height * 0.3614815);
    path_2.cubicTo(
        size.width * 0.5780556,
        size.height * 0.3650926,
        size.width * 0.5694444,
        size.height * 0.3684259,
        size.width * 0.5609259,
        size.height * 0.3718519);
    path_2.cubicTo(
        size.width * 0.5533333,
        size.height * 0.3749074,
        size.width * 0.5457407,
        size.height * 0.3779630,
        size.width * 0.5382407,
        size.height * 0.3811111);
    path_2.cubicTo(
        size.width * 0.5370370,
        size.height * 0.3815741,
        size.width * 0.5363889,
        size.height * 0.3816667,
        size.width * 0.5354630,
        size.height * 0.3805556);
    path_2.cubicTo(
        size.width * 0.5345370,
        size.height * 0.3795370,
        size.width * 0.5330556,
        size.height * 0.3787963,
        size.width * 0.5317593,
        size.height * 0.3783333);
    path_2.cubicTo(
        size.width * 0.5164815,
        size.height * 0.3722222,
        size.width * 0.5012037,
        size.height * 0.3662037,
        size.width * 0.4860185,
        size.height * 0.3600926);
    path_2.cubicTo(
        size.width * 0.4851852,
        size.height * 0.3598148,
        size.width * 0.4844444,
        size.height * 0.3594444,
        size.width * 0.4831481,
        size.height * 0.3588889);
    path_2.cubicTo(
        size.width * 0.4858333,
        size.height * 0.3575000,
        size.width * 0.4884259,
        size.height * 0.3564815,
        size.width * 0.4906481,
        size.height * 0.3550926);
    path_2.cubicTo(
        size.width * 0.4986111,
        size.height * 0.3502778,
        size.width * 0.5072222,
        size.height * 0.3498148,
        size.width * 0.5161111,
        size.height * 0.3510185);
    path_2.cubicTo(
        size.width * 0.5391667,
        size.height * 0.3542593,
        size.width * 0.5622222,
        size.height * 0.3576852,
        size.width * 0.5852778,
        size.height * 0.3610185);
    path_2.cubicTo(
        size.width * 0.5857407,
        size.height * 0.3610185,
        size.width * 0.5862037,
        size.height * 0.3612037,
        size.width * 0.5871296,
        size.height * 0.3614815);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6435185, size.height * 0.4269444);
    path_3.cubicTo(
        size.width * 0.6435185,
        size.height * 0.4294444,
        size.width * 0.6435185,
        size.height * 0.4317593,
        size.width * 0.6435185,
        size.height * 0.4342593);
    path_3.cubicTo(
        size.width * 0.5965741,
        size.height * 0.4342593,
        size.width * 0.5496296,
        size.height * 0.4342593,
        size.width * 0.5025000,
        size.height * 0.4342593);
    path_3.cubicTo(
        size.width * 0.5025000,
        size.height * 0.4318519,
        size.width * 0.5025000,
        size.height * 0.4294444,
        size.width * 0.5025000,
        size.height * 0.4269444);
    path_3.cubicTo(
        size.width * 0.5494444,
        size.height * 0.4269444,
        size.width * 0.5963889,
        size.height * 0.4269444,
        size.width * 0.6435185,
        size.height * 0.4269444);
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
