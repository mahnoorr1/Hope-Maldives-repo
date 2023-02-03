import 'package:flutter/material.dart';

class BigGameFishingPainter extends CustomPainter {
  final Color? color;
  BigGameFishingPainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4718519, size.height * 0.5494444);
    path_0.cubicTo(
        size.width * 0.5242593,
        size.height * 0.5494444,
        size.width * 0.5766667,
        size.height * 0.5494444,
        size.width * 0.6291667,
        size.height * 0.5494444);
    path_0.cubicTo(
        size.width * 0.6308333,
        size.height * 0.5494444,
        size.width * 0.6325000,
        size.height * 0.5494444,
        size.width * 0.6341667,
        size.height * 0.5495370);
    path_0.cubicTo(
        size.width * 0.6376852,
        size.height * 0.5496296,
        size.width * 0.6387963,
        size.height * 0.5513889,
        size.width * 0.6382407,
        size.height * 0.5548148);
    path_0.cubicTo(
        size.width * 0.6354630,
        size.height * 0.5692593,
        size.width * 0.6268519,
        size.height * 0.5797222,
        size.width * 0.6153704,
        size.height * 0.5881481);
    path_0.cubicTo(
        size.width * 0.6137963,
        size.height * 0.5893519,
        size.width * 0.6119444,
        size.height * 0.5890741,
        size.width * 0.6100926,
        size.height * 0.5887963);
    path_0.cubicTo(
        size.width * 0.5977778,
        size.height * 0.5872222,
        size.width * 0.5858333,
        size.height * 0.5886111,
        size.width * 0.5744444,
        size.height * 0.5937963);
    path_0.cubicTo(
        size.width * 0.5709259,
        size.height * 0.5953704,
        size.width * 0.5673148,
        size.height * 0.5966667,
        size.width * 0.5637963,
        size.height * 0.5980556);
    path_0.cubicTo(
        size.width * 0.5533333,
        size.height * 0.6023148,
        size.width * 0.5427778,
        size.height * 0.6026852,
        size.width * 0.5321296,
        size.height * 0.5986111);
    path_0.cubicTo(
        size.width * 0.5259259,
        size.height * 0.5962037,
        size.width * 0.5197222,
        size.height * 0.5937037,
        size.width * 0.5135185,
        size.height * 0.5914815);
    path_0.cubicTo(
        size.width * 0.5006481,
        size.height * 0.5868519,
        size.width * 0.4877778,
        size.height * 0.5868519,
        size.width * 0.4749074,
        size.height * 0.5913889);
    path_0.cubicTo(
        size.width * 0.4692593,
        size.height * 0.5933333,
        size.width * 0.4637037,
        size.height * 0.5955556,
        size.width * 0.4581481,
        size.height * 0.5978704);
    path_0.cubicTo(
        size.width * 0.4464815,
        size.height * 0.6027778,
        size.width * 0.4349074,
        size.height * 0.6025000,
        size.width * 0.4232407,
        size.height * 0.5976852);
    path_0.cubicTo(
        size.width * 0.4137037,
        size.height * 0.5937963,
        size.width * 0.4043519,
        size.height * 0.5895370,
        size.width * 0.3938889,
        size.height * 0.5883333);
    path_0.cubicTo(
        size.width * 0.3824074,
        size.height * 0.5870370,
        size.width * 0.3712963,
        size.height * 0.5889815,
        size.width * 0.3614815,
        size.height * 0.5943519);
    path_0.cubicTo(
        size.width * 0.3500926,
        size.height * 0.6005556,
        size.width * 0.3410185,
        size.height * 0.5984259,
        size.width * 0.3313889,
        size.height * 0.5909259);
    path_0.cubicTo(
        size.width * 0.3212963,
        size.height * 0.5830556,
        size.width * 0.3118519,
        size.height * 0.5749074,
        size.width * 0.3071296,
        size.height * 0.5625000);
    path_0.cubicTo(
        size.width * 0.3067593,
        size.height * 0.5613889,
        size.width * 0.3063889,
        size.height * 0.5602778,
        size.width * 0.3060185,
        size.height * 0.5591667);
    path_0.cubicTo(
        size.width * 0.3037037,
        size.height * 0.5505556,
        size.width * 0.3044444,
        size.height * 0.5495370,
        size.width * 0.3131481,
        size.height * 0.5495370);
    path_0.cubicTo(
        size.width * 0.3659259,
        size.height * 0.5493519,
        size.width * 0.4188889,
        size.height * 0.5494444,
        size.width * 0.4718519,
        size.height * 0.5494444);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6910185, size.height * 0.6452778);
    path_1.cubicTo(
        size.width * 0.6834259,
        size.height * 0.6458333,
        size.width * 0.6763889,
        size.height * 0.6434259,
        size.width * 0.6693519,
        size.height * 0.6409259);
    path_1.cubicTo(
        size.width * 0.6652778,
        size.height * 0.6394444,
        size.width * 0.6612963,
        size.height * 0.6377778,
        size.width * 0.6572222,
        size.height * 0.6364815);
    path_1.cubicTo(
        size.width * 0.6499074,
        size.height * 0.6340741,
        size.width * 0.6425926,
        size.height * 0.6340741,
        size.width * 0.6353704,
        size.height * 0.6364815);
    path_1.cubicTo(
        size.width * 0.6310185,
        size.height * 0.6379630,
        size.width * 0.6266667,
        size.height * 0.6394444,
        size.width * 0.6224074,
        size.height * 0.6412037);
    path_1.cubicTo(
        size.width * 0.6080556,
        size.height * 0.6470370,
        size.width * 0.5937963,
        size.height * 0.6469444,
        size.width * 0.5794444,
        size.height * 0.6410185);
    path_1.cubicTo(
        size.width * 0.5770370,
        size.height * 0.6400000,
        size.width * 0.5746296,
        size.height * 0.6392593,
        size.width * 0.5723148,
        size.height * 0.6382407);
    path_1.cubicTo(
        size.width * 0.5611111,
        size.height * 0.6334259,
        size.width * 0.5500926,
        size.height * 0.6337037,
        size.width * 0.5388889,
        size.height * 0.6385185);
    path_1.cubicTo(
        size.width * 0.5308333,
        size.height * 0.6419444,
        size.width * 0.5226852,
        size.height * 0.6450926,
        size.width * 0.5137037,
        size.height * 0.6455556);
    path_1.cubicTo(
        size.width * 0.5034259,
        size.height * 0.6461111,
        size.width * 0.4937963,
        size.height * 0.6434259,
        size.width * 0.4847222,
        size.height * 0.6392593);
    path_1.cubicTo(
        size.width * 0.4717593,
        size.height * 0.6334259,
        size.width * 0.4591667,
        size.height * 0.6335185,
        size.width * 0.4463889,
        size.height * 0.6394444);
    path_1.cubicTo(
        size.width * 0.4348148,
        size.height * 0.6447222,
        size.width * 0.4227778,
        size.height * 0.6472222,
        size.width * 0.4100926,
        size.height * 0.6445370);
    path_1.cubicTo(
        size.width * 0.4041667,
        size.height * 0.6432407,
        size.width * 0.3984259,
        size.height * 0.6410185,
        size.width * 0.3928704,
        size.height * 0.6386111);
    path_1.cubicTo(
        size.width * 0.3812037,
        size.height * 0.6335185,
        size.width * 0.3696296,
        size.height * 0.6336111,
        size.width * 0.3579630,
        size.height * 0.6387037);
    path_1.cubicTo(
        size.width * 0.3485185,
        size.height * 0.6428704,
        size.width * 0.3387963,
        size.height * 0.6460185,
        size.width * 0.3282407,
        size.height * 0.6454630);
    path_1.cubicTo(
        size.width * 0.3213889,
        size.height * 0.6450926,
        size.width * 0.3150000,
        size.height * 0.6432407,
        size.width * 0.3086111,
        size.height * 0.6408333);
    path_1.cubicTo(
        size.width * 0.3070370,
        size.height * 0.6401852,
        size.width * 0.3055556,
        size.height * 0.6393519,
        size.width * 0.3054630,
        size.height * 0.6375000);
    path_1.cubicTo(
        size.width * 0.3052778,
        size.height * 0.6336111,
        size.width * 0.3052778,
        size.height * 0.6296296,
        size.width * 0.3053704,
        size.height * 0.6257407);
    path_1.cubicTo(
        size.width * 0.3054630,
        size.height * 0.6234259,
        size.width * 0.3069444,
        size.height * 0.6233333,
        size.width * 0.3087963,
        size.height * 0.6239815);
    path_1.cubicTo(
        size.width * 0.3128704,
        size.height * 0.6253704,
        size.width * 0.3169444,
        size.height * 0.6266667,
        size.width * 0.3211111,
        size.height * 0.6279630);
    path_1.cubicTo(
        size.width * 0.3285185,
        size.height * 0.6302778,
        size.width * 0.3357407,
        size.height * 0.6298148,
        size.width * 0.3429630,
        size.height * 0.6272222);
    path_1.cubicTo(
        size.width * 0.3463889,
        size.height * 0.6260185,
        size.width * 0.3498148,
        size.height * 0.6247222,
        size.width * 0.3531481,
        size.height * 0.6232407);
    path_1.cubicTo(
        size.width * 0.3675000,
        size.height * 0.6170370,
        size.width * 0.3823148,
        size.height * 0.6162963,
        size.width * 0.3963889,
        size.height * 0.6229630);
    path_1.cubicTo(
        size.width * 0.4127778,
        size.height * 0.6306481,
        size.width * 0.4282407,
        size.height * 0.6307407,
        size.width * 0.4446296,
        size.height * 0.6229630);
    path_1.cubicTo(
        size.width * 0.4585185,
        size.height * 0.6163889,
        size.width * 0.4729630,
        size.height * 0.6170370,
        size.width * 0.4871296,
        size.height * 0.6229630);
    path_1.cubicTo(
        size.width * 0.4902778,
        size.height * 0.6242593,
        size.width * 0.4934259,
        size.height * 0.6253704,
        size.width * 0.4965741,
        size.height * 0.6265741);
    path_1.cubicTo(
        size.width * 0.5063889,
        size.height * 0.6302778,
        size.width * 0.5161111,
        size.height * 0.6301852,
        size.width * 0.5258333,
        size.height * 0.6262963);
    path_1.cubicTo(
        size.width * 0.5342593,
        size.height * 0.6229630,
        size.width * 0.5425926,
        size.height * 0.6193519,
        size.width * 0.5517593,
        size.height * 0.6186111);
    path_1.cubicTo(
        size.width * 0.5625000,
        size.height * 0.6176852,
        size.width * 0.5725000,
        size.height * 0.6204630,
        size.width * 0.5820370,
        size.height * 0.6248148);
    path_1.cubicTo(
        size.width * 0.5950926,
        size.height * 0.6307407,
        size.width * 0.6077778,
        size.height * 0.6307407,
        size.width * 0.6207407,
        size.height * 0.6246296);
    path_1.cubicTo(
        size.width * 0.6375000,
        size.height * 0.6167593,
        size.width * 0.6543519,
        size.height * 0.6165741,
        size.width * 0.6712037,
        size.height * 0.6243519);
    path_1.cubicTo(
        size.width * 0.6828704,
        size.height * 0.6297222,
        size.width * 0.6947222,
        size.height * 0.6313889,
        size.width * 0.7068519,
        size.height * 0.6262037);
    path_1.cubicTo(
        size.width * 0.7096296,
        size.height * 0.6250000,
        size.width * 0.7109259,
        size.height * 0.6261111,
        size.width * 0.7110185,
        size.height * 0.6290741);
    path_1.cubicTo(
        size.width * 0.7110185,
        size.height * 0.6291667,
        size.width * 0.7110185,
        size.height * 0.6293519,
        size.width * 0.7110185,
        size.height * 0.6294444);
    path_1.cubicTo(
        size.width * 0.7116667,
        size.height * 0.6406481,
        size.width * 0.7085185,
        size.height * 0.6442593,
        size.width * 0.6971296,
        size.height * 0.6452778);
    path_1.cubicTo(
        size.width * 0.6950926,
        size.height * 0.6453704,
        size.width * 0.6930556,
        size.height * 0.6452778,
        size.width * 0.6910185,
        size.height * 0.6452778);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4518519, size.height * 0.5317593);
    path_2.cubicTo(
        size.width * 0.4455556,
        size.height * 0.5317593,
        size.width * 0.4393519,
        size.height * 0.5316667,
        size.width * 0.4330556,
        size.height * 0.5317593);
    path_2.cubicTo(
        size.width * 0.4297222,
        size.height * 0.5317593,
        size.width * 0.4279630,
        size.height * 0.5306481,
        size.width * 0.4274074,
        size.height * 0.5271296);
    path_2.cubicTo(
        size.width * 0.4246296,
        size.height * 0.5079630,
        size.width * 0.4271296,
        size.height * 0.4896296,
        size.width * 0.4354630,
        size.height * 0.4722222);
    path_2.cubicTo(
        size.width * 0.4414815,
        size.height * 0.4597222,
        size.width * 0.4577778,
        size.height * 0.4561111,
        size.width * 0.4695370,
        size.height * 0.4641667);
    path_2.cubicTo(
        size.width * 0.4774074,
        size.height * 0.4696296,
        size.width * 0.4855556,
        size.height * 0.4748148,
        size.width * 0.4931481,
        size.height * 0.4806481);
    path_2.cubicTo(
        size.width * 0.4994444,
        size.height * 0.4855556,
        size.width * 0.5061111,
        size.height * 0.4883333,
        size.width * 0.5141667,
        size.height * 0.4886111);
    path_2.cubicTo(
        size.width * 0.5186111,
        size.height * 0.4887037,
        size.width * 0.5229630,
        size.height * 0.4895370,
        size.width * 0.5274074,
        size.height * 0.4900000);
    path_2.cubicTo(
        size.width * 0.5342593,
        size.height * 0.4907407,
        size.width * 0.5371296,
        size.height * 0.4886111,
        size.width * 0.5393519,
        size.height * 0.4822222);
    path_2.cubicTo(
        size.width * 0.5424074,
        size.height * 0.4735185,
        size.width * 0.5477778,
        size.height * 0.4669444,
        size.width * 0.5564815,
        size.height * 0.4634259);
    path_2.cubicTo(
        size.width * 0.5575000,
        size.height * 0.4630556,
        size.width * 0.5583333,
        size.height * 0.4622222,
        size.width * 0.5591667,
        size.height * 0.4615741);
    path_2.cubicTo(
        size.width * 0.5807407,
        size.height * 0.4436111,
        size.width * 0.6059259,
        size.height * 0.4351852,
        size.width * 0.6337037,
        size.height * 0.4340741);
    path_2.cubicTo(
        size.width * 0.6489815,
        size.height * 0.4334259,
        size.width * 0.6639815,
        size.height * 0.4348148,
        size.width * 0.6788889,
        size.height * 0.4381481);
    path_2.cubicTo(
        size.width * 0.6792593,
        size.height * 0.4382407,
        size.width * 0.6797222,
        size.height * 0.4382407,
        size.width * 0.6800926,
        size.height * 0.4384259);
    path_2.cubicTo(
        size.width * 0.6824074,
        size.height * 0.4391667,
        size.width * 0.6858333,
        size.height * 0.4393519,
        size.width * 0.6850000,
        size.height * 0.4427778);
    path_2.cubicTo(
        size.width * 0.6842593,
        size.height * 0.4458333,
        size.width * 0.6812037,
        size.height * 0.4450926,
        size.width * 0.6789815,
        size.height * 0.4446296);
    path_2.cubicTo(
        size.width * 0.6669444,
        size.height * 0.4421296,
        size.width * 0.6548148,
        size.height * 0.4406481,
        size.width * 0.6425926,
        size.height * 0.4404630);
    path_2.cubicTo(
        size.width * 0.6141667,
        size.height * 0.4400000,
        size.width * 0.5880556,
        size.height * 0.4470370,
        size.width * 0.5653704,
        size.height * 0.4649074);
    path_2.cubicTo(
        size.width * 0.5612037,
        size.height * 0.4681481,
        size.width * 0.5612037,
        size.height * 0.4688889,
        size.width * 0.5652778,
        size.height * 0.4724074);
    path_2.cubicTo(
        size.width * 0.5682407,
        size.height * 0.4750000,
        size.width * 0.5684259,
        size.height * 0.4774074,
        size.width * 0.5658333,
        size.height * 0.4802778);
    path_2.cubicTo(
        size.width * 0.5630556,
        size.height * 0.4833333,
        size.width * 0.5602778,
        size.height * 0.4864815,
        size.width * 0.5575000,
        size.height * 0.4896296);
    path_2.cubicTo(
        size.width * 0.5542593,
        size.height * 0.4932407,
        size.width * 0.5530556,
        size.height * 0.4932407,
        size.width * 0.5490741,
        size.height * 0.4903704);
    path_2.cubicTo(
        size.width * 0.5475926,
        size.height * 0.4892593,
        size.width * 0.5462037,
        size.height * 0.4865741,
        size.width * 0.5437963,
        size.height * 0.4885185);
    path_2.cubicTo(
        size.width * 0.5414815,
        size.height * 0.4903704,
        size.width * 0.5416667,
        size.height * 0.4925000,
        size.width * 0.5432407,
        size.height * 0.4951852);
    path_2.cubicTo(
        size.width * 0.5461111,
        size.height * 0.5002778,
        size.width * 0.5437963,
        size.height * 0.5056481,
        size.width * 0.5381481,
        size.height * 0.5067593);
    path_2.cubicTo(
        size.width * 0.5349074,
        size.height * 0.5074074,
        size.width * 0.5333333,
        size.height * 0.5091667,
        size.width * 0.5323148,
        size.height * 0.5119444);
    path_2.cubicTo(
        size.width * 0.5315741,
        size.height * 0.5140741,
        size.width * 0.5307407,
        size.height * 0.5161111,
        size.width * 0.5297222,
        size.height * 0.5180556);
    path_2.cubicTo(
        size.width * 0.5288889,
        size.height * 0.5197222,
        size.width * 0.5274074,
        size.height * 0.5205556,
        size.width * 0.5255556,
        size.height * 0.5198148);
    path_2.cubicTo(
        size.width * 0.5237037,
        size.height * 0.5190741,
        size.width * 0.5231481,
        size.height * 0.5175000,
        size.width * 0.5235185,
        size.height * 0.5157407);
    path_2.cubicTo(
        size.width * 0.5238889,
        size.height * 0.5141667,
        size.width * 0.5245370,
        size.height * 0.5125926,
        size.width * 0.5250926,
        size.height * 0.5110185);
    path_2.cubicTo(
        size.width * 0.5264815,
        size.height * 0.5076852,
        size.width * 0.5251852,
        size.height * 0.5063889,
        size.width * 0.5218519,
        size.height * 0.5062037);
    path_2.cubicTo(
        size.width * 0.5164815,
        size.height * 0.5059259,
        size.width * 0.5110185,
        size.height * 0.5055556,
        size.width * 0.5056481,
        size.height * 0.5053704);
    path_2.cubicTo(
        size.width * 0.5023148,
        size.height * 0.5052778,
        size.width * 0.4990741,
        size.height * 0.5046296,
        size.width * 0.4959259,
        size.height * 0.5033333);
    path_2.cubicTo(
        size.width * 0.4912037,
        size.height * 0.5012963,
        size.width * 0.4864815,
        size.height * 0.4993519,
        size.width * 0.4816667,
        size.height * 0.4974074);
    path_2.cubicTo(
        size.width * 0.4766667,
        size.height * 0.4953704,
        size.width * 0.4760185,
        size.height * 0.4957407,
        size.width * 0.4744444,
        size.height * 0.5011111);
    path_2.cubicTo(
        size.width * 0.4720370,
        size.height * 0.5092593,
        size.width * 0.4725926,
        size.height * 0.5173148,
        size.width * 0.4744444,
        size.height * 0.5254630);
    path_2.cubicTo(
        size.width * 0.4759259,
        size.height * 0.5321296,
        size.width * 0.4759259,
        size.height * 0.5321296,
        size.width * 0.4689815,
        size.height * 0.5321296);
    path_2.cubicTo(
        size.width * 0.4633333,
        size.height * 0.5317593,
        size.width * 0.4575926,
        size.height * 0.5317593,
        size.width * 0.4518519,
        size.height * 0.5317593);
    path_2.lineTo(size.width * 0.4518519, size.height * 0.5317593);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5322222, size.height * 0.4233333);
    path_3.cubicTo(
        size.width * 0.5070370,
        size.height * 0.4225926,
        size.width * 0.4820370,
        size.height * 0.4212037,
        size.width * 0.4576852,
        size.height * 0.4138889);
    path_3.cubicTo(
        size.width * 0.4511111,
        size.height * 0.4119444,
        size.width * 0.4447222,
        size.height * 0.4097222,
        size.width * 0.4387037,
        size.height * 0.4062963);
    path_3.cubicTo(
        size.width * 0.4371296,
        size.height * 0.4053704,
        size.width * 0.4342593,
        size.height * 0.4046296,
        size.width * 0.4352778,
        size.height * 0.4021296);
    path_3.cubicTo(
        size.width * 0.4363889,
        size.height * 0.3995370,
        size.width * 0.4387037,
        size.height * 0.4012037,
        size.width * 0.4405556,
        size.height * 0.4017593);
    path_3.cubicTo(
        size.width * 0.4447222,
        size.height * 0.4029630,
        size.width * 0.4487963,
        size.height * 0.4043519,
        size.width * 0.4528704,
        size.height * 0.4057407);
    path_3.cubicTo(
        size.width * 0.4577778,
        size.height * 0.4073148,
        size.width * 0.4613889,
        size.height * 0.4057407,
        size.width * 0.4637963,
        size.height * 0.4013889);
    path_3.cubicTo(
        size.width * 0.4660185,
        size.height * 0.3975000,
        size.width * 0.4678704,
        size.height * 0.3933333,
        size.width * 0.4699074,
        size.height * 0.3893519);
    path_3.cubicTo(
        size.width * 0.4737037,
        size.height * 0.3820370,
        size.width * 0.4775000,
        size.height * 0.3801852,
        size.width * 0.4853704,
        size.height * 0.3825926);
    path_3.cubicTo(
        size.width * 0.4937037,
        size.height * 0.3850926,
        size.width * 0.5021296,
        size.height * 0.3869444,
        size.width * 0.5108333,
        size.height * 0.3865741);
    path_3.cubicTo(
        size.width * 0.5153704,
        size.height * 0.3863889,
        size.width * 0.5179630,
        size.height * 0.3887963,
        size.width * 0.5189815,
        size.height * 0.3930556);
    path_3.cubicTo(
        size.width * 0.5201852,
        size.height * 0.3980556,
        size.width * 0.5205556,
        size.height * 0.4032407,
        size.width * 0.5207407,
        size.height * 0.4084259);
    path_3.cubicTo(
        size.width * 0.5209259,
        size.height * 0.4146296,
        size.width * 0.5224074,
        size.height * 0.4163889,
        size.width * 0.5285185,
        size.height * 0.4174074);
    path_3.cubicTo(
        size.width * 0.5329630,
        size.height * 0.4181481,
        size.width * 0.5374074,
        size.height * 0.4183333,
        size.width * 0.5418519,
        size.height * 0.4188889);
    path_3.cubicTo(
        size.width * 0.5435185,
        size.height * 0.4190741,
        size.width * 0.5462963,
        size.height * 0.4187963,
        size.width * 0.5462963,
        size.height * 0.4211111);
    path_3.cubicTo(
        size.width * 0.5462037,
        size.height * 0.4237963,
        size.width * 0.5433333,
        size.height * 0.4231481,
        size.width * 0.5414815,
        size.height * 0.4232407);
    path_3.cubicTo(
        size.width * 0.5385185,
        size.height * 0.4234259,
        size.width * 0.5353704,
        size.height * 0.4233333,
        size.width * 0.5322222,
        size.height * 0.4233333);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4887963, size.height * 0.4553704);
    path_4.cubicTo(
        size.width * 0.4738889,
        size.height * 0.4552778,
        size.width * 0.4612037,
        size.height * 0.4430556,
        size.width * 0.4606481,
        size.height * 0.4284259);
    path_4.cubicTo(
        size.width * 0.4604630,
        size.height * 0.4237037,
        size.width * 0.4616667,
        size.height * 0.4225926,
        size.width * 0.4661111,
        size.height * 0.4235185);
    path_4.cubicTo(
        size.width * 0.4811111,
        size.height * 0.4267593,
        size.width * 0.4962037,
        size.height * 0.4288889,
        size.width * 0.5115741,
        size.height * 0.4295370);
    path_4.cubicTo(
        size.width * 0.5164815,
        size.height * 0.4297222,
        size.width * 0.5174074,
        size.height * 0.4312963,
        size.width * 0.5158333,
        size.height * 0.4360185);
    path_4.cubicTo(
        size.width * 0.5122222,
        size.height * 0.4471296,
        size.width * 0.5005556,
        size.height * 0.4554630,
        size.width * 0.4887963,
        size.height * 0.4553704);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7115741, size.height * 0.6033333);
    path_5.cubicTo(
        size.width * 0.7115741,
        size.height * 0.6044444,
        size.width * 0.7117593,
        size.height * 0.6061111,
        size.width * 0.7101852,
        size.height * 0.6060185);
    path_5.cubicTo(
        size.width * 0.7081481,
        size.height * 0.6060185,
        size.width * 0.7083333,
        size.height * 0.6039815,
        size.width * 0.7080556,
        size.height * 0.6025926);
    path_5.cubicTo(
        size.width * 0.7061111,
        size.height * 0.5888889,
        size.width * 0.7041667,
        size.height * 0.5752778,
        size.width * 0.7022222,
        size.height * 0.5615741);
    path_5.cubicTo(
        size.width * 0.6968519,
        size.height * 0.5231481,
        size.width * 0.6913889,
        size.height * 0.4848148,
        size.width * 0.6862037,
        size.height * 0.4462963);
    path_5.cubicTo(
        size.width * 0.6858333,
        size.height * 0.4438889,
        size.width * 0.6839815,
        size.height * 0.4395370,
        size.width * 0.6867593,
        size.height * 0.4392593);
    path_5.cubicTo(
        size.width * 0.6904630,
        size.height * 0.4388889,
        size.width * 0.6891667,
        size.height * 0.4435185,
        size.width * 0.6895370,
        size.height * 0.4460185);
    path_5.cubicTo(
        size.width * 0.6968519,
        size.height * 0.4969444,
        size.width * 0.7038889,
        size.height * 0.5478704,
        size.width * 0.7110185,
        size.height * 0.5987963);
    path_5.cubicTo(
        size.width * 0.7112963,
        size.height * 0.6003704,
        size.width * 0.7113889,
        size.height * 0.6018519,
        size.width * 0.7115741,
        size.height * 0.6033333);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
