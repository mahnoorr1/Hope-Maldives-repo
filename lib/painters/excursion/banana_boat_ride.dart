import 'package:flutter/material.dart';

class BananaBoatRidePainter extends CustomPainter {
  final Color? color;
  BananaBoatRidePainter({this.color});

  static Size size(double width) => Size(width, width);

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3147222, size.height * 0.6095370);
    path_0.cubicTo(
        size.width * 0.3155556,
        size.height * 0.6095370,
        size.width * 0.3141667,
        size.height * 0.6098148,
        size.width * 0.3128704,
        size.height * 0.6094444);
    path_0.cubicTo(
        size.width * 0.3090741,
        size.height * 0.6085185,
        size.width * 0.3036111,
        size.height * 0.6083333,
        size.width * 0.3021296,
        size.height * 0.6058333);
    path_0.cubicTo(
        size.width * 0.3006481,
        size.height * 0.6032407,
        size.width * 0.3025000,
        size.height * 0.5981481,
        size.width * 0.3040741,
        size.height * 0.5946296);
    path_0.cubicTo(
        size.width * 0.3065741,
        size.height * 0.5891667,
        size.width * 0.3098148,
        size.height * 0.5839815,
        size.width * 0.3130556,
        size.height * 0.5788889);
    path_0.cubicTo(
        size.width * 0.3189815,
        size.height * 0.5696296,
        size.width * 0.3273148,
        size.height * 0.5635185,
        size.width * 0.3385185,
        size.height * 0.5626852);
    path_0.cubicTo(
        size.width * 0.3738889,
        size.height * 0.5599074,
        size.width * 0.4092593,
        size.height * 0.5574074,
        size.width * 0.4446296,
        size.height * 0.5547222);
    path_0.cubicTo(
        size.width * 0.4558333,
        size.height * 0.5538889,
        size.width * 0.4671296,
        size.height * 0.5529630,
        size.width * 0.4783333,
        size.height * 0.5524074);
    path_0.cubicTo(
        size.width * 0.4812037,
        size.height * 0.5522222,
        size.width * 0.4841667,
        size.height * 0.5531481,
        size.width * 0.4870370,
        size.height * 0.5534259);
    path_0.cubicTo(
        size.width * 0.4905556,
        size.height * 0.5537037,
        size.width * 0.4948148,
        size.height * 0.5553704,
        size.width * 0.4973148,
        size.height * 0.5538889);
    path_0.cubicTo(
        size.width * 0.5085185,
        size.height * 0.5474074,
        size.width * 0.5209259,
        size.height * 0.5497222,
        size.width * 0.5326852,
        size.height * 0.5484259);
    path_0.cubicTo(
        size.width * 0.5523148,
        size.height * 0.5462963,
        size.width * 0.5721296,
        size.height * 0.5455556,
        size.width * 0.5918519,
        size.height * 0.5439815);
    path_0.cubicTo(
        size.width * 0.5970370,
        size.height * 0.5436111,
        size.width * 0.6038889,
        size.height * 0.5435185,
        size.width * 0.6036111,
        size.height * 0.5493519);
    path_0.cubicTo(
        size.width * 0.6034259,
        size.height * 0.5545370,
        size.width * 0.5989815,
        size.height * 0.5630556,
        size.width * 0.5950000,
        size.height * 0.5639815);
    path_0.cubicTo(
        size.width * 0.5667593,
        size.height * 0.5705556,
        size.width * 0.5402778,
        size.height * 0.5817593,
        size.width * 0.5136111,
        size.height * 0.5926852);
    path_0.cubicTo(
        size.width * 0.5050000,
        size.height * 0.5962037,
        size.width * 0.4949074,
        size.height * 0.5962963,
        size.width * 0.4853704,
        size.height * 0.5970370);
    path_0.cubicTo(
        size.width * 0.4293519,
        size.height * 0.6013889,
        size.width * 0.3731481,
        size.height * 0.6053704,
        size.width * 0.3147222,
        size.height * 0.6095370);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6102778, size.height * 0.5615741);
    path_1.cubicTo(
        size.width * 0.6150000,
        size.height * 0.5452778,
        size.width * 0.6130556,
        size.height * 0.5411111,
        size.width * 0.5977778,
        size.height * 0.5347222);
    path_1.cubicTo(
        size.width * 0.5999074,
        size.height * 0.5263889,
        size.width * 0.5955556,
        size.height * 0.5203704,
        size.width * 0.5901852,
        size.height * 0.5144444);
    path_1.cubicTo(
        size.width * 0.5827778,
        size.height * 0.5063889,
        size.width * 0.5758333,
        size.height * 0.4978704,
        size.width * 0.5673148,
        size.height * 0.4877778);
    path_1.cubicTo(
        size.width * 0.5762037,
        size.height * 0.4867593,
        size.width * 0.5835185,
        size.height * 0.4859259,
        size.width * 0.5909259,
        size.height * 0.4850000);
    path_1.cubicTo(
        size.width * 0.5930556,
        size.height * 0.4847222,
        size.width * 0.5952778,
        size.height * 0.4846296,
        size.width * 0.5973148,
        size.height * 0.4838889);
    path_1.cubicTo(
        size.width * 0.6097222,
        size.height * 0.4791667,
        size.width * 0.6219444,
        size.height * 0.4740741,
        size.width * 0.6344444,
        size.height * 0.4694444);
    path_1.cubicTo(
        size.width * 0.6586111,
        size.height * 0.4605556,
        size.width * 0.6827778,
        size.height * 0.4515741,
        size.width * 0.7071296,
        size.height * 0.4433333);
    path_1.cubicTo(
        size.width * 0.7121296,
        size.height * 0.4416667,
        size.width * 0.7202778,
        size.height * 0.4403704,
        size.width * 0.7228704,
        size.height * 0.4429630);
    path_1.cubicTo(
        size.width * 0.7262037,
        size.height * 0.4462963,
        size.width * 0.7270370,
        size.height * 0.4541667,
        size.width * 0.7258333,
        size.height * 0.4594444);
    path_1.cubicTo(
        size.width * 0.7196296,
        size.height * 0.4872222,
        size.width * 0.7029630,
        size.height * 0.5095370,
        size.width * 0.6864815,
        size.height * 0.5318519);
    path_1.cubicTo(
        size.width * 0.6858333,
        size.height * 0.5327778,
        size.width * 0.6850000,
        size.height * 0.5335185,
        size.width * 0.6843519,
        size.height * 0.5343519);
    path_1.cubicTo(
        size.width * 0.6729630,
        size.height * 0.5493519,
        size.width * 0.6609259,
        size.height * 0.5622222,
        size.width * 0.6390741,
        size.height * 0.5592593);
    path_1.cubicTo(
        size.width * 0.6300000,
        size.height * 0.5580556,
        size.width * 0.6204630,
        size.height * 0.5606481,
        size.width * 0.6102778,
        size.height * 0.5615741);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3058333, size.height * 0.5741667);
    path_2.cubicTo(
        size.width * 0.2926852,
        size.height * 0.5643519,
        size.width * 0.2883333,
        size.height * 0.5481481,
        size.width * 0.2943519,
        size.height * 0.5326852);
    path_2.cubicTo(
        size.width * 0.3000926,
        size.height * 0.5180556,
        size.width * 0.3123148,
        size.height * 0.5106481,
        size.width * 0.3281481,
        size.height * 0.5120370);
    path_2.cubicTo(
        size.width * 0.3434259,
        size.height * 0.5134259,
        size.width * 0.3587963,
        size.height * 0.5162037,
        size.width * 0.3740741,
        size.height * 0.5161111);
    path_2.cubicTo(
        size.width * 0.3954630,
        size.height * 0.5160185,
        size.width * 0.4168519,
        size.height * 0.5142593,
        size.width * 0.4381481,
        size.height * 0.5123148);
    path_2.cubicTo(
        size.width * 0.4453704,
        size.height * 0.5116667,
        size.width * 0.4504630,
        size.height * 0.5124074,
        size.width * 0.4550926,
        size.height * 0.5186111);
    path_2.cubicTo(
        size.width * 0.4613889,
        size.height * 0.5271296,
        size.width * 0.4687963,
        size.height * 0.5348148,
        size.width * 0.4766667,
        size.height * 0.5440741);
    path_2.cubicTo(
        size.width * 0.4646296,
        size.height * 0.5450000,
        size.width * 0.4540741,
        size.height * 0.5458333,
        size.width * 0.4434259,
        size.height * 0.5465741);
    path_2.cubicTo(
        size.width * 0.4102778,
        size.height * 0.5489815,
        size.width * 0.3770370,
        size.height * 0.5514815,
        size.width * 0.3438889,
        size.height * 0.5535185);
    path_2.cubicTo(
        size.width * 0.3279630,
        size.height * 0.5546296,
        size.width * 0.3150000,
        size.height * 0.5608333,
        size.width * 0.3058333,
        size.height * 0.5741667);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5306481, size.height * 0.4123148);
    path_3.cubicTo(
        size.width * 0.5193519,
        size.height * 0.3991667,
        size.width * 0.5189815,
        size.height * 0.3827778,
        size.width * 0.5313889,
        size.height * 0.3716667);
    path_3.cubicTo(
        size.width * 0.5421296,
        size.height * 0.3620370,
        size.width * 0.5577778,
        size.height * 0.3630556,
        size.width * 0.5675000,
        size.height * 0.3739815);
    path_3.cubicTo(
        size.width * 0.5783333,
        size.height * 0.3861111,
        size.width * 0.5762963,
        size.height * 0.4029630,
        size.width * 0.5620370,
        size.height * 0.4156481);
    path_3.cubicTo(
        size.width * 0.5636111,
        size.height * 0.4185185,
        size.width * 0.5652778,
        size.height * 0.4215741,
        size.width * 0.5668519,
        size.height * 0.4245370);
    path_3.cubicTo(
        size.width * 0.5664815,
        size.height * 0.4248148,
        size.width * 0.5662037,
        size.height * 0.4251852,
        size.width * 0.5658333,
        size.height * 0.4254630);
    path_3.cubicTo(
        size.width * 0.5650000,
        size.height * 0.4247222,
        size.width * 0.5641667,
        size.height * 0.4240741,
        size.width * 0.5633333,
        size.height * 0.4233333);
    path_3.cubicTo(
        size.width * 0.5569444,
        size.height * 0.4182407,
        size.width * 0.5499074,
        size.height * 0.4180556,
        size.width * 0.5456481,
        size.height * 0.4231481);
    path_3.cubicTo(
        size.width * 0.5406481,
        size.height * 0.4290741,
        size.width * 0.5432407,
        size.height * 0.4342593,
        size.width * 0.5475926,
        size.height * 0.4392593);
    path_3.cubicTo(
        size.width * 0.5538889,
        size.height * 0.4464815,
        size.width * 0.5600000,
        size.height * 0.4539815,
        size.width * 0.5648148,
        size.height * 0.4597222);
    path_3.cubicTo(
        size.width * 0.5628704,
        size.height * 0.4701852,
        size.width * 0.5612037,
        size.height * 0.4789815,
        size.width * 0.5594444,
        size.height * 0.4887037);
    path_3.cubicTo(
        size.width * 0.5684259,
        size.height * 0.4991667,
        size.width * 0.5780556,
        size.height * 0.5104630,
        size.width * 0.5878704,
        size.height * 0.5215741);
    path_3.cubicTo(
        size.width * 0.5919444,
        size.height * 0.5262037,
        size.width * 0.5940741,
        size.height * 0.5312037,
        size.width * 0.5887037,
        size.height * 0.5359259);
    path_3.cubicTo(
        size.width * 0.5831481,
        size.height * 0.5408333,
        size.width * 0.5787963,
        size.height * 0.5375926,
        size.width * 0.5748148,
        size.height * 0.5329630);
    path_3.cubicTo(
        size.width * 0.5625926,
        size.height * 0.5187963,
        size.width * 0.5506481,
        size.height * 0.5043519,
        size.width * 0.5379630,
        size.height * 0.4906481);
    path_3.cubicTo(
        size.width * 0.5320370,
        size.height * 0.4842593,
        size.width * 0.5361111,
        size.height * 0.4767593,
        size.width * 0.5337037,
        size.height * 0.4705556);
    path_3.cubicTo(
        size.width * 0.5314815,
        size.height * 0.4648148,
        size.width * 0.5209259,
        size.height * 0.4638889,
        size.width * 0.5223148,
        size.height * 0.4552778);
    path_3.cubicTo(
        size.width * 0.5244444,
        size.height * 0.4415741,
        size.width * 0.5275000,
        size.height * 0.4280556,
        size.width * 0.5306481,
        size.height * 0.4123148);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4412037, size.height * 0.4235185);
    path_4.cubicTo(
        size.width * 0.4297222,
        size.height * 0.4102778,
        size.width * 0.4291667,
        size.height * 0.3934259,
        size.width * 0.4409259,
        size.height * 0.3825000);
    path_4.cubicTo(
        size.width * 0.4511111,
        size.height * 0.3730556,
        size.width * 0.4669444,
        size.height * 0.3735185,
        size.width * 0.4764815,
        size.height * 0.3836111);
    path_4.cubicTo(
        size.width * 0.4880556,
        size.height * 0.3957407,
        size.width * 0.4864815,
        size.height * 0.4114815,
        size.width * 0.4721296,
        size.height * 0.4264815);
    path_4.cubicTo(
        size.width * 0.4736111,
        size.height * 0.4292593,
        size.width * 0.4750926,
        size.height * 0.4321296,
        size.width * 0.4766667,
        size.height * 0.4349074);
    path_4.lineTo(size.width * 0.4759259, size.height * 0.4357407);
    path_4.cubicTo(
        size.width * 0.4744444,
        size.height * 0.4346296,
        size.width * 0.4730556,
        size.height * 0.4333333,
        size.width * 0.4714815,
        size.height * 0.4324074);
    path_4.cubicTo(
        size.width * 0.4659259,
        size.height * 0.4288889,
        size.width * 0.4603704,
        size.height * 0.4289815,
        size.width * 0.4557407,
        size.height * 0.4336111);
    path_4.cubicTo(
        size.width * 0.4508333,
        size.height * 0.4385185,
        size.width * 0.4525926,
        size.height * 0.4436111,
        size.width * 0.4564815,
        size.height * 0.4482407);
    path_4.cubicTo(
        size.width * 0.4630556,
        size.height * 0.4560185,
        size.width * 0.4695370,
        size.height * 0.4637963,
        size.width * 0.4751852,
        size.height * 0.4705556);
    path_4.cubicTo(
        size.width * 0.4730556,
        size.height * 0.4804630,
        size.width * 0.4709259,
        size.height * 0.4892593,
        size.width * 0.4694444,
        size.height * 0.4981481);
    path_4.cubicTo(
        size.width * 0.4691667,
        size.height * 0.4994444,
        size.width * 0.4713889,
        size.height * 0.5012963,
        size.width * 0.4725926,
        size.height * 0.5026852);
    path_4.cubicTo(
        size.width * 0.4811111,
        size.height * 0.5126852,
        size.width * 0.4897222,
        size.height * 0.5226852,
        size.width * 0.4984259,
        size.height * 0.5326852);
    path_4.cubicTo(
        size.width * 0.5023148,
        size.height * 0.5372222,
        size.width * 0.5039815,
        size.height * 0.5419444,
        size.width * 0.4987037,
        size.height * 0.5462963);
    path_4.cubicTo(
        size.width * 0.4936111,
        size.height * 0.5505556,
        size.width * 0.4890741,
        size.height * 0.5483333,
        size.width * 0.4851852,
        size.height * 0.5438889);
    path_4.cubicTo(
        size.width * 0.4725926,
        size.height * 0.5293519,
        size.width * 0.4593519,
        size.height * 0.5152778,
        size.width * 0.4476852,
        size.height * 0.5000000);
    path_4.cubicTo(
        size.width * 0.4438889,
        size.height * 0.4950926,
        size.width * 0.4443519,
        size.height * 0.4869444,
        size.width * 0.4425000,
        size.height * 0.4789815);
    path_4.cubicTo(
        size.width * 0.4309259,
        size.height * 0.4716667,
        size.width * 0.4303704,
        size.height * 0.4703704,
        size.width * 0.4337963,
        size.height * 0.4546296);
    path_4.cubicTo(
        size.width * 0.4361111,
        size.height * 0.4446296,
        size.width * 0.4386111,
        size.height * 0.4346296,
        size.width * 0.4412037,
        size.height * 0.4235185);

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.5701852, size.height * 0.5372222);
    path_5.cubicTo(
        size.width * 0.5487037,
        size.height * 0.5387963,
        size.width * 0.5291667,
        size.height * 0.5402778,
        size.width * 0.5121296,
        size.height * 0.5415741);
    path_5.cubicTo(
        size.width * 0.5024074,
        size.height * 0.5290741,
        size.width * 0.4938889,
        size.height * 0.5179630,
        size.width * 0.4848148,
        size.height * 0.5062963);
    path_5.cubicTo(
        size.width * 0.5006481,
        size.height * 0.5031481,
        size.width * 0.5160185,
        size.height * 0.5000926,
        size.width * 0.5314815,
        size.height * 0.4972222);
    path_5.cubicTo(
        size.width * 0.5330556,
        size.height * 0.4969444,
        size.width * 0.5355556,
        size.height * 0.4975926,
        size.width * 0.5365741,
        size.height * 0.4987037);
    path_5.cubicTo(
        size.width * 0.5475000,
        size.height * 0.5109259,
        size.width * 0.5582407,
        size.height * 0.5234259,
        size.width * 0.5701852,
        size.height * 0.5372222);

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6018519, size.height * 0.4771296);
    path_6.cubicTo(
        size.width * 0.5996296,
        size.height * 0.4781481,
        size.width * 0.5974074,
        size.height * 0.4801852,
        size.width * 0.5952778,
        size.height * 0.4800926);
    path_6.cubicTo(
        size.width * 0.5920370,
        size.height * 0.4800000,
        size.width * 0.5877778,
        size.height * 0.4793519,
        size.width * 0.5858333,
        size.height * 0.4772222);
    path_6.cubicTo(
        size.width * 0.5781481,
        size.height * 0.4690741,
        size.width * 0.5711111,
        size.height * 0.4602778,
        size.width * 0.5637963,
        size.height * 0.4516667);
    path_6.cubicTo(
        size.width * 0.5592593,
        size.height * 0.4462037,
        size.width * 0.5542593,
        size.height * 0.4409259,
        size.width * 0.5503704,
        size.height * 0.4350926);
    path_6.cubicTo(
        size.width * 0.5487963,
        size.height * 0.4327778,
        size.width * 0.5495370,
        size.height * 0.4290741,
        size.width * 0.5491667,
        size.height * 0.4260185);
    path_6.cubicTo(
        size.width * 0.5526852,
        size.height * 0.4260185,
        size.width * 0.5562037,
        size.height * 0.4257407,
        size.width * 0.5597222,
        size.height * 0.4261111);
    path_6.cubicTo(
        size.width * 0.5607407,
        size.height * 0.4262037,
        size.width * 0.5616667,
        size.height * 0.4278704,
        size.width * 0.5625926,
        size.height * 0.4288889);
    path_6.cubicTo(
        size.width * 0.5738889,
        size.height * 0.4423148,
        size.width * 0.5851852,
        size.height * 0.4557407,
        size.width * 0.5964815,
        size.height * 0.4691667);
    path_6.cubicTo(
        size.width * 0.5978704,
        size.height * 0.4708333,
        size.width * 0.5988889,
        size.height * 0.4727778,
        size.width * 0.6000000,
        size.height * 0.4745370);
    path_6.cubicTo(
        size.width * 0.6005556,
        size.height * 0.4753704,
        size.width * 0.6012037,
        size.height * 0.4762037,
        size.width * 0.6018519,
        size.height * 0.4771296);

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.5090741, size.height * 0.4845370);
    path_7.cubicTo(
        size.width * 0.5091667,
        size.height * 0.4898148,
        size.width * 0.5044444,
        size.height * 0.4926852,
        size.width * 0.4995370,
        size.height * 0.4905556);
    path_7.cubicTo(
        size.width * 0.4972222,
        size.height * 0.4895370,
        size.width * 0.4950926,
        size.height * 0.4875000,
        size.width * 0.4933333,
        size.height * 0.4854630);
    path_7.cubicTo(
        size.width * 0.4823148,
        size.height * 0.4725000,
        size.width * 0.4712963,
        size.height * 0.4596296,
        size.width * 0.4607407,
        size.height * 0.4462963);
    path_7.cubicTo(
        size.width * 0.4588889,
        size.height * 0.4439815,
        size.width * 0.4595370,
        size.height * 0.4397222,
        size.width * 0.4589815,
        size.height * 0.4363889);
    path_7.cubicTo(
        size.width * 0.4626852,
        size.height * 0.4365741,
        size.width * 0.4680556,
        size.height * 0.4351852,
        size.width * 0.4698148,
        size.height * 0.4371296);
    path_7.cubicTo(
        size.width * 0.4827778,
        size.height * 0.4515741,
        size.width * 0.4950926,
        size.height * 0.4666667,
        size.width * 0.5075926,
        size.height * 0.4815741);
    path_7.cubicTo(
        size.width * 0.5084259,
        size.height * 0.4825926,
        size.width * 0.5087963,
        size.height * 0.4839815,
        size.width * 0.5090741,
        size.height * 0.4845370);

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3440741, size.height * 0.6312037);
    path_8.cubicTo(
        size.width * 0.3582407,
        size.height * 0.6333333,
        size.width * 0.3691667,
        size.height * 0.6377778,
        size.width * 0.3807407,
        size.height * 0.6387963);
    path_8.cubicTo(
        size.width * 0.4165741,
        size.height * 0.6419444,
        size.width * 0.4507407,
        size.height * 0.6337963,
        size.width * 0.4846296,
        size.height * 0.6244444);
    path_8.cubicTo(
        size.width * 0.5192593,
        size.height * 0.6149074,
        size.width * 0.5536111,
        size.height * 0.6046296,
        size.width * 0.5900926,
        size.height * 0.6063889);
    path_8.cubicTo(
        size.width * 0.6170370,
        size.height * 0.6076852,
        size.width * 0.6417593,
        size.height * 0.6150000,
        size.width * 0.6635185,
        size.height * 0.6311111);
    path_8.cubicTo(
        size.width * 0.6662963,
        size.height * 0.6331481,
        size.width * 0.6699074,
        size.height * 0.6344444,
        size.width * 0.6709259,
        size.height * 0.6390741);
    path_8.cubicTo(
        size.width * 0.6185185,
        size.height * 0.6191667,
        size.width * 0.5686111,
        size.height * 0.6351852,
        size.width * 0.5186111,
        size.height * 0.6484259);
    path_8.cubicTo(
        size.width * 0.4959259,
        size.height * 0.6544444,
        size.width * 0.4734259,
        size.height * 0.6606481,
        size.width * 0.4499074,
        size.height * 0.6625000);
    path_8.cubicTo(
        size.width * 0.4118519,
        size.height * 0.6653704,
        size.width * 0.3767593,
        size.height * 0.6578704,
        size.width * 0.3440741,
        size.height * 0.6312037);

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = color ?? const Color(0xffE66155).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
