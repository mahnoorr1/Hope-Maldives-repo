import 'package:flutter/material.dart';

class JellyFishPainter extends CustomPainter {
  final Color? color;
  JellyFishPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4177778, size.height * 0.5574074);
    path_0.cubicTo(
        size.width * 0.4225000,
        size.height * 0.5617593,
        size.width * 0.4271296,
        size.height * 0.5660185,
        size.width * 0.4317593,
        size.height * 0.5702778);
    path_0.cubicTo(
        size.width * 0.4262037,
        size.height * 0.5801852,
        size.width * 0.4201852,
        size.height * 0.5825000,
        size.width * 0.4111111,
        size.height * 0.5776852);
    path_0.cubicTo(
        size.width * 0.4030556,
        size.height * 0.5735185,
        size.width * 0.3945370,
        size.height * 0.5697222,
        size.width * 0.3876852,
        size.height * 0.5640741);
    path_0.cubicTo(
        size.width * 0.3667593,
        size.height * 0.5469444,
        size.width * 0.3639815,
        size.height * 0.5238889,
        size.width * 0.3696296,
        size.height * 0.4992593);
    path_0.cubicTo(
        size.width * 0.3750926,
        size.height * 0.4751852,
        size.width * 0.3865741,
        size.height * 0.4545370,
        size.width * 0.4062037,
        size.height * 0.4387963);
    path_0.cubicTo(
        size.width * 0.4156481,
        size.height * 0.4312037,
        size.width * 0.4234259,
        size.height * 0.4212963,
        size.width * 0.4333333,
        size.height * 0.4145370);
    path_0.cubicTo(
        size.width * 0.4547222,
        size.height * 0.4000000,
        size.width * 0.4785185,
        size.height * 0.3933333,
        size.width * 0.5045370,
        size.height * 0.3984259);
    path_0.cubicTo(
        size.width * 0.5264815,
        size.height * 0.4026852,
        size.width * 0.5468519,
        size.height * 0.4249074,
        size.width * 0.5484259,
        size.height * 0.4468519);
    path_0.cubicTo(
        size.width * 0.5487963,
        size.height * 0.4523148,
        size.width * 0.5444444,
        size.height * 0.4582407,
        size.width * 0.5415741,
        size.height * 0.4656481);
    path_0.cubicTo(
        size.width * 0.5343519,
        size.height * 0.4578704,
        size.width * 0.5294444,
        size.height * 0.4525926,
        size.width * 0.5244444,
        size.height * 0.4473148);
    path_0.cubicTo(
        size.width * 0.5239815,
        size.height * 0.4476852,
        size.width * 0.5235185,
        size.height * 0.4480556,
        size.width * 0.5230556,
        size.height * 0.4483333);
    path_0.cubicTo(
        size.width * 0.5263889,
        size.height * 0.4534259,
        size.width * 0.5293519,
        size.height * 0.4587037,
        size.width * 0.5330556,
        size.height * 0.4634259);
    path_0.cubicTo(
        size.width * 0.5386111,
        size.height * 0.4707407,
        size.width * 0.5357407,
        size.height * 0.4757407,
        size.width * 0.5296296,
        size.height * 0.4809259);
    path_0.cubicTo(
        size.width * 0.5267593,
        size.height * 0.4833333,
        size.width * 0.5250926,
        size.height * 0.4872222,
        size.width * 0.5227778,
        size.height * 0.4903704);
    path_0.cubicTo(
        size.width * 0.5194444,
        size.height * 0.4950000,
        size.width * 0.5160185,
        size.height * 0.4996296,
        size.width * 0.5120370,
        size.height * 0.5051852);
    path_0.cubicTo(
        size.width * 0.5071296,
        size.height * 0.4994444,
        size.width * 0.5036111,
        size.height * 0.4952778,
        size.width * 0.5000000,
        size.height * 0.4910185);
    path_0.cubicTo(
        size.width * 0.4995370,
        size.height * 0.4912963,
        size.width * 0.4990741,
        size.height * 0.4915741,
        size.width * 0.4986111,
        size.height * 0.4918519);
    path_0.cubicTo(
        size.width * 0.5004630,
        size.height * 0.4947222,
        size.width * 0.5023148,
        size.height * 0.4975926,
        size.width * 0.5041667,
        size.height * 0.5003704);
    path_0.cubicTo(
        size.width * 0.5098148,
        size.height * 0.5091667,
        size.width * 0.5084259,
        size.height * 0.5147222,
        size.width * 0.4998148,
        size.height * 0.5205556);
    path_0.cubicTo(
        size.width * 0.4966667,
        size.height * 0.5226852,
        size.width * 0.4936111,
        size.height * 0.5253704,
        size.width * 0.4915741,
        size.height * 0.5285185);
    path_0.cubicTo(
        size.width * 0.4852778,
        size.height * 0.5383333,
        size.width * 0.4799074,
        size.height * 0.5397222,
        size.width * 0.4700000,
        size.height * 0.5332407);
    path_0.cubicTo(
        size.width * 0.4663889,
        size.height * 0.5309259,
        size.width * 0.4628704,
        size.height * 0.5284259,
        size.width * 0.4583333,
        size.height * 0.5273148);
    path_0.cubicTo(
        size.width * 0.4634259,
        size.height * 0.5317593,
        size.width * 0.4686111,
        size.height * 0.5362037,
        size.width * 0.4741667,
        size.height * 0.5409259);
    path_0.cubicTo(
        size.width * 0.4731481,
        size.height * 0.5425000,
        size.width * 0.4725926,
        size.height * 0.5445370,
        size.width * 0.4712963,
        size.height * 0.5455556);
    path_0.cubicTo(
        size.width * 0.4623148,
        size.height * 0.5524074,
        size.width * 0.4513889,
        size.height * 0.5565741,
        size.width * 0.4444444,
        size.height * 0.5664815);
    path_0.cubicTo(
        size.width * 0.4434259,
        size.height * 0.5679630,
        size.width * 0.4368519,
        size.height * 0.5667593,
        size.width * 0.4336111,
        size.height * 0.5652778);
    path_0.cubicTo(
        size.width * 0.4285185,
        size.height * 0.5628704,
        size.width * 0.4239815,
        size.height * 0.5591667,
        size.width * 0.4191667,
        size.height * 0.5559259);
    path_0.cubicTo(
        size.width * 0.4185185,
        size.height * 0.5563889,
        size.width * 0.4181481,
        size.height * 0.5568519,
        size.width * 0.4177778,
        size.height * 0.5574074);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5163889, size.height * 0.5411111);
    path_1.cubicTo(
        size.width * 0.5150000,
        size.height * 0.5380556,
        size.width * 0.5138889,
        size.height * 0.5356481,
        size.width * 0.5125000,
        size.height * 0.5327778);
    path_1.cubicTo(
        size.width * 0.5110185,
        size.height * 0.5329630,
        size.width * 0.5095370,
        size.height * 0.5335185,
        size.width * 0.5080556,
        size.height * 0.5333333);
    path_1.cubicTo(
        size.width * 0.5056481,
        size.height * 0.5329630,
        size.width * 0.5032407,
        size.height * 0.5322222,
        size.width * 0.5008333,
        size.height * 0.5315741);
    path_1.cubicTo(
        size.width * 0.5020370,
        size.height * 0.5297222,
        size.width * 0.5031481,
        size.height * 0.5276852,
        size.width * 0.5044444,
        size.height * 0.5259259);
    path_1.cubicTo(
        size.width * 0.5075926,
        size.height * 0.5217593,
        size.width * 0.5107407,
        size.height * 0.5175926,
        size.width * 0.5140741,
        size.height * 0.5136111);
    path_1.cubicTo(
        size.width * 0.5175926,
        size.height * 0.5094444,
        size.width * 0.5212963,
        size.height * 0.5053704,
        size.width * 0.5251852,
        size.height * 0.5009259);
    path_1.cubicTo(
        size.width * 0.5514815,
        size.height * 0.5259259,
        size.width * 0.5681481,
        size.height * 0.5556481,
        size.width * 0.5813889,
        size.height * 0.5876852);
    path_1.cubicTo(
        size.width * 0.5844444,
        size.height * 0.5951852,
        size.width * 0.5870370,
        size.height * 0.6028704,
        size.width * 0.5902778,
        size.height * 0.6102778);
    path_1.cubicTo(
        size.width * 0.5944444,
        size.height * 0.6194444,
        size.width * 0.6028704,
        size.height * 0.6245370,
        size.width * 0.6123148,
        size.height * 0.6216667);
    path_1.cubicTo(
        size.width * 0.6170370,
        size.height * 0.6202778,
        size.width * 0.6204630,
        size.height * 0.6146296,
        size.width * 0.6250000,
        size.height * 0.6105556);
    path_1.cubicTo(
        size.width * 0.6285185,
        size.height * 0.6159259,
        size.width * 0.6266667,
        size.height * 0.6206481,
        size.width * 0.6226852,
        size.height * 0.6250926);
    path_1.cubicTo(
        size.width * 0.6162963,
        size.height * 0.6321296,
        size.width * 0.6027778,
        size.height * 0.6331481,
        size.width * 0.5939815,
        size.height * 0.6296296);
    path_1.cubicTo(
        size.width * 0.5814815,
        size.height * 0.6245370,
        size.width * 0.5771296,
        size.height * 0.6122222,
        size.width * 0.5687037,
        size.height * 0.6036111);
    path_1.cubicTo(
        size.width * 0.5631481,
        size.height * 0.5978704,
        size.width * 0.5613889,
        size.height * 0.5884259,
        size.width * 0.5576852,
        size.height * 0.5808333);
    path_1.cubicTo(
        size.width * 0.5568519,
        size.height * 0.5790741,
        size.width * 0.5542593,
        size.height * 0.5782407,
        size.width * 0.5530556,
        size.height * 0.5766667);
    path_1.cubicTo(
        size.width * 0.5501852,
        size.height * 0.5730556,
        size.width * 0.5464815,
        size.height * 0.5694444,
        size.width * 0.5453704,
        size.height * 0.5652778);
    path_1.cubicTo(
        size.width * 0.5440741,
        size.height * 0.5601852,
        size.width * 0.5425926,
        size.height * 0.5580556,
        size.width * 0.5370370,
        size.height * 0.5575000);
    path_1.cubicTo(
        size.width * 0.5341667,
        size.height * 0.5572222,
        size.width * 0.5292593,
        size.height * 0.5529630,
        size.width * 0.5293519,
        size.height * 0.5506481);
    path_1.cubicTo(
        size.width * 0.5294444,
        size.height * 0.5407407,
        size.width * 0.5262963,
        size.height * 0.5369444,
        size.width * 0.5163889,
        size.height * 0.5411111);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6585185, size.height * 0.7065741);
    path_2.cubicTo(
        size.width * 0.6399074,
        size.height * 0.6885185,
        size.width * 0.6125926,
        size.height * 0.6818519,
        size.width * 0.5926852,
        size.height * 0.6896296);
    path_2.cubicTo(
        size.width * 0.5810185,
        size.height * 0.6807407,
        size.width * 0.5740741,
        size.height * 0.6646296,
        size.width * 0.5549074,
        size.height * 0.6686111);
    path_2.cubicTo(
        size.width * 0.5490741,
        size.height * 0.6698148,
        size.width * 0.5425000,
        size.height * 0.6679630,
        size.width * 0.5363889,
        size.height * 0.6666667);
    path_2.cubicTo(
        size.width * 0.5250000,
        size.height * 0.6642593,
        size.width * 0.5171296,
        size.height * 0.6550926,
        size.width * 0.5155556,
        size.height * 0.6429630);
    path_2.cubicTo(
        size.width * 0.5150000,
        size.height * 0.6386111,
        size.width * 0.5143519,
        size.height * 0.6342593,
        size.width * 0.5140741,
        size.height * 0.6299074);
    path_2.cubicTo(
        size.width * 0.5137963,
        size.height * 0.6259259,
        size.width * 0.5139815,
        size.height * 0.6218519,
        size.width * 0.5139815,
        size.height * 0.6175000);
    path_2.cubicTo(
        size.width * 0.5090741,
        size.height * 0.6163889,
        size.width * 0.5049074,
        size.height * 0.6155556,
        size.width * 0.5007407,
        size.height * 0.6146296);
    path_2.cubicTo(
        size.width * 0.4857407,
        size.height * 0.6112963,
        size.width * 0.4763889,
        size.height * 0.6014815,
        size.width * 0.4730556,
        size.height * 0.5872222);
    path_2.cubicTo(
        size.width * 0.4712037,
        size.height * 0.5793519,
        size.width * 0.4687037,
        size.height * 0.5759259,
        size.width * 0.4605556,
        size.height * 0.5762963);
    path_2.cubicTo(
        size.width * 0.4565741,
        size.height * 0.5764815,
        size.width * 0.4525926,
        size.height * 0.5750000,
        size.width * 0.4486111,
        size.height * 0.5742593);
    path_2.cubicTo(
        size.width * 0.4502778,
        size.height * 0.5720370,
        size.width * 0.4542593,
        size.height * 0.5712963,
        size.width * 0.4693519,
        size.height * 0.5705556);
    path_2.cubicTo(
        size.width * 0.4663889,
        size.height * 0.5668519,
        size.width * 0.4639815,
        size.height * 0.5637963,
        size.width * 0.4614815,
        size.height * 0.5607407);
    path_2.cubicTo(
        size.width * 0.4662037,
        size.height * 0.5562963,
        size.width * 0.4703704,
        size.height * 0.5576852,
        size.width * 0.4725926,
        size.height * 0.5628704);
    path_2.cubicTo(
        size.width * 0.4761111,
        size.height * 0.5711111,
        size.width * 0.4825926,
        size.height * 0.5742593,
        size.width * 0.4907407,
        size.height * 0.5765741);
    path_2.cubicTo(
        size.width * 0.5036111,
        size.height * 0.5803704,
        size.width * 0.5119444,
        size.height * 0.5893519,
        size.width * 0.5155556,
        size.height * 0.6024074);
    path_2.cubicTo(
        size.width * 0.5168519,
        size.height * 0.6072222,
        size.width * 0.5188889,
        size.height * 0.6099074,
        size.width * 0.5245370,
        size.height * 0.6112963);
    path_2.cubicTo(
        size.width * 0.5411111,
        size.height * 0.6154630,
        size.width * 0.5526852,
        size.height * 0.6269444,
        size.width * 0.5623148,
        size.height * 0.6403704);
    path_2.cubicTo(
        size.width * 0.5700000,
        size.height * 0.6510185,
        size.width * 0.5775926,
        size.height * 0.6616667,
        size.width * 0.5852778,
        size.height * 0.6723148);
    path_2.cubicTo(
        size.width * 0.5901852,
        size.height * 0.6790741,
        size.width * 0.5969444,
        size.height * 0.6807407,
        size.width * 0.6050000,
        size.height * 0.6806481);
    path_2.cubicTo(
        size.width * 0.6143519,
        size.height * 0.6805556,
        size.width * 0.6237963,
        size.height * 0.6808333,
        size.width * 0.6329630,
        size.height * 0.6824074);
    path_2.cubicTo(
        size.width * 0.6460185,
        size.height * 0.6844444,
        size.width * 0.6544444,
        size.height * 0.6925000,
        size.width * 0.6585185,
        size.height * 0.7065741);
    path_2.close();
    path_2.moveTo(size.width * 0.5198148, size.height * 0.6183333);
    path_2.cubicTo(
        size.width * 0.5155556,
        size.height * 0.6547222,
        size.width * 0.5236111,
        size.height * 0.6696296,
        size.width * 0.5702778,
        size.height * 0.6653704);
    path_2.cubicTo(
        size.width * 0.5569444,
        size.height * 0.6458333,
        size.width * 0.5456481,
        size.height * 0.6250926,
        size.width * 0.5198148,
        size.height * 0.6183333);
    path_2.close();
    path_2.moveTo(size.width * 0.5119444, size.height * 0.6079630);
    path_2.cubicTo(
        size.width * 0.5084259,
        size.height * 0.5906481,
        size.width * 0.4984259,
        size.height * 0.5816667,
        size.width * 0.4806481,
        size.height * 0.5794444);
    path_2.cubicTo(
        size.width * 0.4806481,
        size.height * 0.5964815,
        size.width * 0.4917593,
        size.height * 0.6067593,
        size.width * 0.5119444,
        size.height * 0.6079630);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6395370, size.height * 0.5638889);
    path_3.cubicTo(
        size.width * 0.6407407,
        size.height * 0.5717593,
        size.width * 0.6427778,
        size.height * 0.5797222,
        size.width * 0.6430556,
        size.height * 0.5875926);
    path_3.cubicTo(
        size.width * 0.6433333,
        size.height * 0.5970370,
        size.width * 0.6425926,
        size.height * 0.6059259,
        size.width * 0.6526852,
        size.height * 0.6118519);
    path_3.cubicTo(
        size.width * 0.6621296,
        size.height * 0.6174074,
        size.width * 0.6632407,
        size.height * 0.6270370,
        size.width * 0.6625000,
        size.height * 0.6372222);
    path_3.cubicTo(
        size.width * 0.6620370,
        size.height * 0.6437963,
        size.width * 0.6620370,
        size.height * 0.6503704,
        size.width * 0.6624074,
        size.height * 0.6569444);
    path_3.cubicTo(
        size.width * 0.6632407,
        size.height * 0.6702778,
        size.width * 0.6695370,
        size.height * 0.6806481,
        size.width * 0.6803704,
        size.height * 0.6885185);
    path_3.cubicTo(
        size.width * 0.6693519,
        size.height * 0.6863889,
        size.width * 0.6614815,
        size.height * 0.6800000,
        size.width * 0.6588889,
        size.height * 0.6695370);
    path_3.cubicTo(
        size.width * 0.6564815,
        size.height * 0.6597222,
        size.width * 0.6550926,
        size.height * 0.6491667,
        size.width * 0.6557407,
        size.height * 0.6390741);
    path_3.cubicTo(
        size.width * 0.6563889,
        size.height * 0.6285185,
        size.width * 0.6534259,
        size.height * 0.6205556,
        size.width * 0.6453704,
        size.height * 0.6145370);
    path_3.cubicTo(
        size.width * 0.6353704,
        size.height * 0.6070370,
        size.width * 0.6248148,
        size.height * 0.6003704,
        size.width * 0.6146296,
        size.height * 0.5930556);
    path_3.cubicTo(
        size.width * 0.5998148,
        size.height * 0.5823148,
        size.width * 0.5887963,
        size.height * 0.5687963,
        size.width * 0.5842593,
        size.height * 0.5504630);
    path_3.cubicTo(
        size.width * 0.5836111,
        size.height * 0.5479630,
        size.width * 0.5805556,
        size.height * 0.5450000,
        size.width * 0.5779630,
        size.height * 0.5441667);
    path_3.cubicTo(
        size.width * 0.5633333,
        size.height * 0.5395370,
        size.width * 0.5541667,
        size.height * 0.5300926,
        size.width * 0.5492593,
        size.height * 0.5157407);
    path_3.cubicTo(
        size.width * 0.5482407,
        size.height * 0.5126852,
        size.width * 0.5450926,
        size.height * 0.5101852,
        size.width * 0.5425000,
        size.height * 0.5078704);
    path_3.cubicTo(
        size.width * 0.5389815,
        size.height * 0.5048148,
        size.width * 0.5344444,
        size.height * 0.5027778,
        size.width * 0.5315741,
        size.height * 0.4992593);
    path_3.cubicTo(
        size.width * 0.5296296,
        size.height * 0.4968519,
        size.width * 0.5297222,
        size.height * 0.4927778,
        size.width * 0.5289815,
        size.height * 0.4894444);
    path_3.cubicTo(
        size.width * 0.5302778,
        size.height * 0.4887037,
        size.width * 0.5316667,
        size.height * 0.4880556,
        size.width * 0.5329630,
        size.height * 0.4873148);
    path_3.cubicTo(
        size.width * 0.5358333,
        size.height * 0.4925000,
        size.width * 0.5387037,
        size.height * 0.4975926,
        size.width * 0.5415741,
        size.height * 0.5027778);
    path_3.cubicTo(
        size.width * 0.5426852,
        size.height * 0.5017593,
        size.width * 0.5438889,
        size.height * 0.5007407,
        size.width * 0.5450000,
        size.height * 0.4996296);
    path_3.cubicTo(
        size.width * 0.5439815,
        size.height * 0.4898148,
        size.width * 0.5430556,
        size.height * 0.4800000,
        size.width * 0.5420370,
        size.height * 0.4701852);
    path_3.cubicTo(
        size.width * 0.5434259,
        size.height * 0.4700000,
        size.width * 0.5448148,
        size.height * 0.4698148,
        size.width * 0.5462963,
        size.height * 0.4696296);
    path_3.cubicTo(
        size.width * 0.5481481,
        size.height * 0.4802778,
        size.width * 0.5500926,
        size.height * 0.4910185,
        size.width * 0.5521296,
        size.height * 0.5025926);
    path_3.cubicTo(
        size.width * 0.5744444,
        size.height * 0.5055556,
        size.width * 0.5886111,
        size.height * 0.5178704,
        size.width * 0.5911111,
        size.height * 0.5420370);
    path_3.cubicTo(
        size.width * 0.6090741,
        size.height * 0.5439815,
        size.width * 0.6297222,
        size.height * 0.5385185,
        size.width * 0.6393519,
        size.height * 0.5605556);
    path_3.cubicTo(
        size.width * 0.6270370,
        size.height * 0.5451852,
        size.width * 0.6106481,
        size.height * 0.5443519,
        size.width * 0.5924074,
        size.height * 0.5471296);
    path_3.cubicTo(
        size.width * 0.5972222,
        size.height * 0.5758333,
        size.width * 0.6200926,
        size.height * 0.5871296,
        size.width * 0.6421296,
        size.height * 0.6024074);
    path_3.cubicTo(
        size.width * 0.6411111,
        size.height * 0.5880556,
        size.width * 0.6402778,
        size.height * 0.5760185,
        size.width * 0.6395370,
        size.height * 0.5638889);
    path_3.close();
    path_3.moveTo(size.width * 0.5828704, size.height * 0.5389815);
    path_3.cubicTo(
        size.width * 0.5800926,
        size.height * 0.5211111,
        size.width * 0.5693519,
        size.height * 0.5110185,
        size.width * 0.5550000,
        size.height * 0.5120370);
    path_3.cubicTo(
        size.width * 0.5575000,
        size.height * 0.5267593,
        size.width * 0.5662963,
        size.height * 0.5355556,
        size.width * 0.5828704,
        size.height * 0.5389815);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5551852, size.height * 0.6085185);
    path_4.cubicTo(
        size.width * 0.5442593,
        size.height * 0.5850926,
        size.width * 0.5198148,
        size.height * 0.5834259,
        size.width * 0.5008333,
        size.height * 0.5727778);
    path_4.cubicTo(
        size.width * 0.4914815,
        size.height * 0.5675000,
        size.width * 0.4826852,
        size.height * 0.5612963,
        size.width * 0.4736111,
        size.height * 0.5554630);
    path_4.cubicTo(
        size.width * 0.4735185,
        size.height * 0.5540741,
        size.width * 0.4734259,
        size.height * 0.5526852,
        size.width * 0.4734259,
        size.height * 0.5512963);
    path_4.cubicTo(
        size.width * 0.4802778,
        size.height * 0.5466667,
        size.width * 0.4869444,
        size.height * 0.5416667,
        size.width * 0.4942593,
        size.height * 0.5377778);
    path_4.cubicTo(
        size.width * 0.4952778,
        size.height * 0.5372222,
        size.width * 0.5007407,
        size.height * 0.5417593,
        size.width * 0.5015741,
        size.height * 0.5446296);
    path_4.cubicTo(
        size.width * 0.5030556,
        size.height * 0.5499074,
        size.width * 0.5030556,
        size.height * 0.5541667,
        size.width * 0.5107407,
        size.height * 0.5529630);
    path_4.cubicTo(
        size.width * 0.5130556,
        size.height * 0.5525926,
        size.width * 0.5174074,
        size.height * 0.5571296,
        size.width * 0.5187963,
        size.height * 0.5602778);
    path_4.cubicTo(
        size.width * 0.5207407,
        size.height * 0.5649074,
        size.width * 0.5226852,
        size.height * 0.5671296,
        size.width * 0.5281481,
        size.height * 0.5675000);
    path_4.cubicTo(
        size.width * 0.5312963,
        size.height * 0.5676852,
        size.width * 0.5343519,
        size.height * 0.5710185,
        size.width * 0.5372222,
        size.height * 0.5731481);
    path_4.cubicTo(
        size.width * 0.5410185,
        size.height * 0.5760185,
        size.width * 0.5459259,
        size.height * 0.5784259,
        size.width * 0.5481481,
        size.height * 0.5822222);
    path_4.cubicTo(
        size.width * 0.5524074,
        size.height * 0.5897222,
        size.width * 0.5550926,
        size.height * 0.5981481,
        size.width * 0.5583333,
        size.height * 0.6062037);
    path_4.cubicTo(
        size.width * 0.5573148,
        size.height * 0.6070370,
        size.width * 0.5562037,
        size.height * 0.6077778,
        size.width * 0.5551852,
        size.height * 0.6085185);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
