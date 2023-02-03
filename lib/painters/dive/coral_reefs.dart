import 'package:flutter/material.dart';

class CoralReefsPainter extends CustomPainter {
  final Color? color;
  CoralReefsPainter({this.color});

  static Size size(double width) => Size(width, width);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3199074, size.height * 0.4951852);
    path_0.cubicTo(
        size.width * 0.3287037,
        size.height * 0.4848148,
        size.width * 0.3388889,
        size.height * 0.4812037,
        size.width * 0.3506481,
        size.height * 0.4832407);
    path_0.cubicTo(
        size.width * 0.3634259,
        size.height * 0.4854630,
        size.width * 0.3732407,
        size.height * 0.4922222,
        size.width * 0.3762037,
        size.height * 0.5055556);
    path_0.cubicTo(
        size.width * 0.3774074,
        size.height * 0.5112037,
        size.width * 0.3773148,
        size.height * 0.5174074,
        size.width * 0.3762963,
        size.height * 0.5230556);
    path_0.cubicTo(
        size.width * 0.3750926,
        size.height * 0.5295370,
        size.width * 0.3693519,
        size.height * 0.5329630,
        size.width * 0.3631481,
        size.height * 0.5327778);
    path_0.cubicTo(
        size.width * 0.3575926,
        size.height * 0.5325926,
        size.width * 0.3541667,
        size.height * 0.5287963,
        size.width * 0.3545370,
        size.height * 0.5232407);
    path_0.cubicTo(
        size.width * 0.3556481,
        size.height * 0.5069444,
        size.width * 0.3483333,
        size.height * 0.4986111,
        size.width * 0.3317593,
        size.height * 0.4968519);
    path_0.cubicTo(
        size.width * 0.3281481,
        size.height * 0.4965741,
        size.width * 0.3247222,
        size.height * 0.4959259,
        size.width * 0.3199074,
        size.height * 0.4951852);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3727778, size.height * 0.4284259);
    path_1.cubicTo(
        size.width * 0.3831481,
        size.height * 0.4337963,
        size.width * 0.3911111,
        size.height * 0.4412037,
        size.width * 0.3970370,
        size.height * 0.4509259);
    path_1.cubicTo(
        size.width * 0.3977778,
        size.height * 0.4521296,
        size.width * 0.3976852,
        size.height * 0.4547222,
        size.width * 0.3968519,
        size.height * 0.4557407);
    path_1.cubicTo(
        size.width * 0.3931481,
        size.height * 0.4600000,
        size.width * 0.3893519,
        size.height * 0.4643519,
        size.width * 0.3850926,
        size.height * 0.4679630);
    path_1.cubicTo(
        size.width * 0.3808333,
        size.height * 0.4715741,
        size.width * 0.3761111,
        size.height * 0.4744444,
        size.width * 0.3713889,
        size.height * 0.4774074);
    path_1.cubicTo(
        size.width * 0.3703704,
        size.height * 0.4780556,
        size.width * 0.3685185,
        size.height * 0.4780556,
        size.width * 0.3672222,
        size.height * 0.4775926);
    path_1.cubicTo(
        size.width * 0.3637037,
        size.height * 0.4763889,
        size.width * 0.3603704,
        size.height * 0.4743519,
        size.width * 0.3566667,
        size.height * 0.4736111);
    path_1.cubicTo(
        size.width * 0.3529630,
        size.height * 0.4728704,
        size.width * 0.3521296,
        size.height * 0.4709259,
        size.width * 0.3528704,
        size.height * 0.4679630);
    path_1.cubicTo(
        size.width * 0.3537037,
        size.height * 0.4643519,
        size.width * 0.3544444,
        size.height * 0.4604630,
        size.width * 0.3562037,
        size.height * 0.4572222);
    path_1.cubicTo(
        size.width * 0.3614815,
        size.height * 0.4475926,
        size.width * 0.3671296,
        size.height * 0.4382407,
        size.width * 0.3727778,
        size.height * 0.4284259);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3630556, size.height * 0.4227778);
    path_2.cubicTo(
        size.width * 0.3549074,
        size.height * 0.4402778,
        size.width * 0.3417593,
        size.height * 0.4530556,
        size.width * 0.3418519,
        size.height * 0.4713889);
    path_2.cubicTo(
        size.width * 0.3375000,
        size.height * 0.4734259,
        size.width * 0.3355556,
        size.height * 0.4719444,
        size.width * 0.3341667,
        size.height * 0.4677778);
    path_2.cubicTo(
        size.width * 0.3302778,
        size.height * 0.4558333,
        size.width * 0.3275000,
        size.height * 0.4438889,
        size.width * 0.3287963,
        size.height * 0.4312037);
    path_2.cubicTo(
        size.width * 0.3296296,
        size.height * 0.4234259,
        size.width * 0.3300926,
        size.height * 0.4222222,
        size.width * 0.3375000,
        size.height * 0.4218519);
    path_2.cubicTo(
        size.width * 0.3456481,
        size.height * 0.4214815,
        size.width * 0.3537963,
        size.height * 0.4224074,
        size.width * 0.3630556,
        size.height * 0.4227778);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.3216667, size.height * 0.5396296);
    path_3.cubicTo(
        size.width * 0.3144444,
        size.height * 0.5286111,
        size.width * 0.3113889,
        size.height * 0.5175000,
        size.width * 0.3146296,
        size.height * 0.5051852);
    path_3.cubicTo(
        size.width * 0.3206481,
        size.height * 0.5061111,
        size.width * 0.3263889,
        size.height * 0.5066667,
        size.width * 0.3318519,
        size.height * 0.5080556);
    path_3.cubicTo(
        size.width * 0.3353704,
        size.height * 0.5088889,
        size.width * 0.3390741,
        size.height * 0.5103704,
        size.width * 0.3419444,
        size.height * 0.5125926);
    path_3.cubicTo(
        size.width * 0.3467593,
        size.height * 0.5163889,
        size.width * 0.3451852,
        size.height * 0.5230556,
        size.width * 0.3393519,
        size.height * 0.5249074);
    path_3.cubicTo(
        size.width * 0.3317593,
        size.height * 0.5273148,
        size.width * 0.3265741,
        size.height * 0.5325926,
        size.width * 0.3216667,
        size.height * 0.5396296);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3090741, size.height * 0.4905556);
    path_4.cubicTo(
        size.width * 0.3073148,
        size.height * 0.4951852,
        size.width * 0.3052778,
        size.height * 0.4998148,
        size.width * 0.3037963,
        size.height * 0.5045370);
    path_4.cubicTo(
        size.width * 0.3026852,
        size.height * 0.5079630,
        size.width * 0.3002778,
        size.height * 0.5070370,
        size.width * 0.2981481,
        size.height * 0.5065741);
    path_4.cubicTo(
        size.width * 0.2924074,
        size.height * 0.5053704,
        size.width * 0.2866667,
        size.height * 0.5039815,
        size.width * 0.2802778,
        size.height * 0.5025000);
    path_4.cubicTo(
        size.width * 0.2800926,
        size.height * 0.4937963,
        size.width * 0.2816667,
        size.height * 0.4847222,
        size.width * 0.2853704,
        size.height * 0.4760185);
    path_4.cubicTo(
        size.width * 0.2870370,
        size.height * 0.4722222,
        size.width * 0.2902778,
        size.height * 0.4727778,
        size.width * 0.2929630,
        size.height * 0.4747222);
    path_4.cubicTo(
        size.width * 0.2952778,
        size.height * 0.4763889,
        size.width * 0.2968519,
        size.height * 0.4788889,
        size.width * 0.2989815,
        size.height * 0.4809259);
    path_4.cubicTo(
        size.width * 0.3022222,
        size.height * 0.4842593,
        size.width * 0.3056481,
        size.height * 0.4873148,
        size.width * 0.3090741,
        size.height * 0.4905556);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.3786111, size.height * 0.4856481);
    path_5.cubicTo(
        size.width * 0.3871296,
        size.height * 0.4795370,
        size.width * 0.3957407,
        size.height * 0.4733333,
        size.width * 0.4042593,
        size.height * 0.4671296);
    path_5.cubicTo(
        size.width * 0.4081481,
        size.height * 0.4747222,
        size.width * 0.4089815,
        size.height * 0.4864815,
        size.width * 0.4063889,
        size.height * 0.5003704);
    path_5.cubicTo(
        size.width * 0.4001852,
        size.height * 0.5000000,
        size.width * 0.3939815,
        size.height * 0.4997222,
        size.width * 0.3878704,
        size.height * 0.4991667);
    path_5.cubicTo(
        size.width * 0.3869444,
        size.height * 0.4990741,
        size.width * 0.3856481,
        size.height * 0.4982407,
        size.width * 0.3851852,
        size.height * 0.4973148);
    path_5.cubicTo(
        size.width * 0.3828704,
        size.height * 0.4937037,
        size.width * 0.3809259,
        size.height * 0.4899074,
        size.width * 0.3786111,
        size.height * 0.4856481);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.3251852, size.height * 0.4762037);
    path_6.cubicTo(
        size.width * 0.3175926,
        size.height * 0.4823148,
        size.width * 0.3145370,
        size.height * 0.4819444,
        size.width * 0.3077778,
        size.height * 0.4747222);
    path_6.cubicTo(
        size.width * 0.3035185,
        size.height * 0.4701852,
        size.width * 0.2988889,
        size.height * 0.4662037,
        size.width * 0.2940741,
        size.height * 0.4616667);
    path_6.cubicTo(
        size.width * 0.2973148,
        size.height * 0.4556481,
        size.width * 0.3071296,
        size.height * 0.4490741,
        size.width * 0.3174074,
        size.height * 0.4468519);
    path_6.cubicTo(
        size.width * 0.3200000,
        size.height * 0.4565741,
        size.width * 0.3225926,
        size.height * 0.4663889,
        size.width * 0.3251852,
        size.height * 0.4762037);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.3294444, size.height * 0.5470370);
    path_7.cubicTo(
        size.width * 0.3324074,
        size.height * 0.5437037,
        size.width * 0.3350000,
        size.height * 0.5400000,
        size.width * 0.3383333,
        size.height * 0.5373148);
    path_7.cubicTo(
        size.width * 0.3418519,
        size.height * 0.5344444,
        size.width * 0.3454630,
        size.height * 0.5334259,
        size.width * 0.3493519,
        size.height * 0.5381481);
    path_7.cubicTo(
        size.width * 0.3539815,
        size.height * 0.5437037,
        size.width * 0.3608333,
        size.height * 0.5441667,
        size.width * 0.3677778,
        size.height * 0.5437037);
    path_7.cubicTo(
        size.width * 0.3699074,
        size.height * 0.5435185,
        size.width * 0.3721296,
        size.height * 0.5448148,
        size.width * 0.3754630,
        size.height * 0.5457407);
    path_7.cubicTo(
        size.width * 0.3593519,
        size.height * 0.5576852,
        size.width * 0.3450000,
        size.height * 0.5578704,
        size.width * 0.3294444,
        size.height * 0.5470370);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.2822222, size.height * 0.5140741);
    path_8.cubicTo(
        size.width * 0.2891667,
        size.height * 0.5156481,
        size.width * 0.2955556,
        size.height * 0.5170370,
        size.width * 0.3023148,
        size.height * 0.5186111);
    path_8.cubicTo(
        size.width * 0.3042593,
        size.height * 0.5315741,
        size.width * 0.3089815,
        size.height * 0.5434259,
        size.width * 0.3189815,
        size.height * 0.5529630);
    path_8.cubicTo(
        size.width * 0.3024074,
        size.height * 0.5499074,
        size.width * 0.2838889,
        size.height * 0.5293519,
        size.width * 0.2822222,
        size.height * 0.5140741);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.3830556, size.height * 0.5409259);
    path_9.cubicTo(
        size.width * 0.3824074,
        size.height * 0.5388889,
        size.width * 0.3810185,
        size.height * 0.5366667,
        size.width * 0.3815741,
        size.height * 0.5360185);
    path_9.cubicTo(
        size.width * 0.3876852,
        size.height * 0.5286111,
        size.width * 0.3889815,
        size.height * 0.5199074,
        size.width * 0.3882407,
        size.height * 0.5096296);
    path_9.cubicTo(
        size.width * 0.3934259,
        size.height * 0.5101852,
        size.width * 0.3980556,
        size.height * 0.5106481,
        size.width * 0.4033333,
        size.height * 0.5112963);
    path_9.cubicTo(
        size.width * 0.3990741,
        size.height * 0.5236111,
        size.width * 0.3924074,
        size.height * 0.5326852,
        size.width * 0.3830556,
        size.height * 0.5409259);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.6788889, size.height * 0.5555556);
    path_10.cubicTo(
        size.width * 0.6825926,
        size.height * 0.5612037,
        size.width * 0.6871296,
        size.height * 0.5617593,
        size.width * 0.6925000,
        size.height * 0.5610185);
    path_10.cubicTo(
        size.width * 0.6949074,
        size.height * 0.5606481,
        size.width * 0.6975926,
        size.height * 0.5618519,
        size.width * 0.7000926,
        size.height * 0.5623148);
    path_10.cubicTo(
        size.width * 0.6991667,
        size.height * 0.5647222,
        size.width * 0.6988889,
        size.height * 0.5676852,
        size.width * 0.6973148,
        size.height * 0.5695370);
    path_10.cubicTo(
        size.width * 0.6892593,
        size.height * 0.5791667,
        size.width * 0.6736111,
        size.height * 0.5818519,
        size.width * 0.6609259,
        size.height * 0.5760185);
    path_10.cubicTo(
        size.width * 0.6576852,
        size.height * 0.5745370,
        size.width * 0.6545370,
        size.height * 0.5727778,
        size.width * 0.6513889,
        size.height * 0.5710185);
    path_10.cubicTo(
        size.width * 0.6443519,
        size.height * 0.5669444,
        size.width * 0.6374074,
        size.height * 0.5675926,
        size.width * 0.6300926,
        size.height * 0.5702778);
    path_10.cubicTo(
        size.width * 0.6276852,
        size.height * 0.5711111,
        size.width * 0.6237963,
        size.height * 0.5711111,
        size.width * 0.6220370,
        size.height * 0.5697222);
    path_10.cubicTo(
        size.width * 0.6117593,
        size.height * 0.5615741,
        size.width * 0.6004630,
        size.height * 0.5583333,
        size.width * 0.5874074,
        size.height * 0.5592593);
    path_10.cubicTo(
        size.width * 0.5703704,
        size.height * 0.5604630,
        size.width * 0.5586111,
        size.height * 0.5439815,
        size.width * 0.5598148,
        size.height * 0.5284259);
    path_10.cubicTo(
        size.width * 0.5604630,
        size.height * 0.5204630,
        size.width * 0.5587963,
        size.height * 0.5180556,
        size.width * 0.5511111,
        size.height * 0.5161111);
    path_10.cubicTo(
        size.width * 0.5479630,
        size.height * 0.5153704,
        size.width * 0.5448148,
        size.height * 0.5149074,
        size.width * 0.5417593,
        size.height * 0.5139815);
    path_10.cubicTo(
        size.width * 0.5339815,
        size.height * 0.5117593,
        size.width * 0.5302778,
        size.height * 0.5068519,
        size.width * 0.5300000,
        size.height * 0.4987037);
    path_10.cubicTo(
        size.width * 0.5299074,
        size.height * 0.4950000,
        size.width * 0.5296296,
        size.height * 0.4912037,
        size.width * 0.5298148,
        size.height * 0.4875000);
    path_10.cubicTo(
        size.width * 0.5300000,
        size.height * 0.4837963,
        size.width * 0.5325926,
        size.height * 0.4829630,
        size.width * 0.5351852,
        size.height * 0.4846296);
    path_10.cubicTo(
        size.width * 0.5375000,
        size.height * 0.4860185,
        size.width * 0.5394444,
        size.height * 0.4882407,
        size.width * 0.5410185,
        size.height * 0.4904630);
    path_10.cubicTo(
        size.width * 0.5442593,
        size.height * 0.4950926,
        size.width * 0.5482407,
        size.height * 0.4968519,
        size.width * 0.5538889,
        size.height * 0.4958333);
    path_10.cubicTo(
        size.width * 0.5573148,
        size.height * 0.4951852,
        size.width * 0.5611111,
        size.height * 0.4952778,
        size.width * 0.5646296,
        size.height * 0.4958333);
    path_10.cubicTo(
        size.width * 0.5725000,
        size.height * 0.4971296,
        size.width * 0.5784259,
        size.height * 0.5009259,
        size.width * 0.5799074,
        size.height * 0.5096296);
    path_10.cubicTo(
        size.width * 0.5801852,
        size.height * 0.5111111,
        size.width * 0.5808333,
        size.height * 0.5125000,
        size.width * 0.5813889,
        size.height * 0.5137963);
    path_10.cubicTo(
        size.width * 0.5848148,
        size.height * 0.5058333,
        size.width * 0.5880556,
        size.height * 0.4982407,
        size.width * 0.5912963,
        size.height * 0.4906481);
    path_10.cubicTo(
        size.width * 0.5935185,
        size.height * 0.4854630,
        size.width * 0.5926852,
        size.height * 0.4811111,
        size.width * 0.5886111,
        size.height * 0.4770370);
    path_10.cubicTo(
        size.width * 0.5722222,
        size.height * 0.4607407,
        size.width * 0.5700926,
        size.height * 0.4475000,
        size.width * 0.5801852,
        size.height * 0.4266667);
    path_10.cubicTo(
        size.width * 0.5816667,
        size.height * 0.4236111,
        size.width * 0.5832407,
        size.height * 0.4205556,
        size.width * 0.5847222,
        size.height * 0.4175000);
    path_10.cubicTo(
        size.width * 0.5870370,
        size.height * 0.4127778,
        size.width * 0.5892593,
        size.height * 0.4083333,
        size.width * 0.5863889,
        size.height * 0.4026852);
    path_10.cubicTo(
        size.width * 0.5855556,
        size.height * 0.4010185,
        size.width * 0.5866667,
        size.height * 0.3962963,
        size.width * 0.5876852,
        size.height * 0.3960185);
    path_10.cubicTo(
        size.width * 0.5900926,
        size.height * 0.3953704,
        size.width * 0.5936111,
        size.height * 0.3957407,
        size.width * 0.5956481,
        size.height * 0.3971296);
    path_10.cubicTo(
        size.width * 0.6053704,
        size.height * 0.4040741,
        size.width * 0.6097222,
        size.height * 0.4224074,
        size.width * 0.6043519,
        size.height * 0.4343519);
    path_10.cubicTo(
        size.width * 0.6002778,
        size.height * 0.4434259,
        size.width * 0.6002778,
        size.height * 0.4504630,
        size.width * 0.6084259,
        size.height * 0.4577778);
    path_10.cubicTo(
        size.width * 0.6168519,
        size.height * 0.4652778,
        size.width * 0.6223148,
        size.height * 0.4750926,
        size.width * 0.6207407,
        size.height * 0.4870370);
    path_10.cubicTo(
        size.width * 0.6200000,
        size.height * 0.4922222,
        size.width * 0.6179630,
        size.height * 0.4972222,
        size.width * 0.6170370,
        size.height * 0.5025926);
    path_10.cubicTo(
        size.width * 0.6265741,
        size.height * 0.4940741,
        size.width * 0.6327778,
        size.height * 0.4842593,
        size.width * 0.6300000,
        size.height * 0.4708333);
    path_10.cubicTo(
        size.width * 0.6287037,
        size.height * 0.4645370,
        size.width * 0.6271296,
        size.height * 0.4584259,
        size.width * 0.6255556,
        size.height * 0.4522222);
    path_10.cubicTo(
        size.width * 0.6220370,
        size.height * 0.4383333,
        size.width * 0.6245370,
        size.height * 0.4256481,
        size.width * 0.6328704,
        size.height * 0.4140741);
    path_10.cubicTo(
        size.width * 0.6387963,
        size.height * 0.4059259,
        size.width * 0.6439815,
        size.height * 0.3975926,
        size.width * 0.6467593,
        size.height * 0.3877778);
    path_10.cubicTo(
        size.width * 0.6472222,
        size.height * 0.3860185,
        size.width * 0.6494444,
        size.height * 0.3836111,
        size.width * 0.6509259,
        size.height * 0.3835185);
    path_10.cubicTo(
        size.width * 0.6525000,
        size.height * 0.3834259,
        size.width * 0.6546296,
        size.height * 0.3854630,
        size.width * 0.6559259,
        size.height * 0.3870370);
    path_10.cubicTo(
        size.width * 0.6650926,
        size.height * 0.3989815,
        size.width * 0.6635185,
        size.height * 0.4118519,
        size.width * 0.6583333,
        size.height * 0.4246296);
    path_10.cubicTo(
        size.width * 0.6538889,
        size.height * 0.4356481,
        size.width * 0.6550000,
        size.height * 0.4461111,
        size.width * 0.6588889,
        size.height * 0.4567593);
    path_10.cubicTo(
        size.width * 0.6594444,
        size.height * 0.4582407,
        size.width * 0.6598148,
        size.height * 0.4598148,
        size.width * 0.6603704,
        size.height * 0.4612963);
    path_10.cubicTo(
        size.width * 0.6642593,
        size.height * 0.4728704,
        size.width * 0.6651852,
        size.height * 0.4843519,
        size.width * 0.6585185,
        size.height * 0.4956481);
    path_10.cubicTo(
        size.width * 0.6653704,
        size.height * 0.4942593,
        size.width * 0.6700000,
        size.height * 0.4894444,
        size.width * 0.6707407,
        size.height * 0.4828704);
    path_10.cubicTo(
        size.width * 0.6711111,
        size.height * 0.4797222,
        size.width * 0.6712963,
        size.height * 0.4763889,
        size.width * 0.6708333,
        size.height * 0.4733333);
    path_10.cubicTo(
        size.width * 0.6683333,
        size.height * 0.4558333,
        size.width * 0.6763889,
        size.height * 0.4432407,
        size.width * 0.6891667,
        size.height * 0.4327778);
    path_10.cubicTo(
        size.width * 0.6951852,
        size.height * 0.4278704,
        size.width * 0.7011111,
        size.height * 0.4229630,
        size.width * 0.7072222,
        size.height * 0.4181481);
    path_10.cubicTo(
        size.width * 0.7081481,
        size.height * 0.4174074,
        size.width * 0.7100926,
        size.height * 0.4167593,
        size.width * 0.7109259,
        size.height * 0.4172222);
    path_10.cubicTo(
        size.width * 0.7120370,
        size.height * 0.4178704,
        size.width * 0.7134259,
        size.height * 0.4198148,
        size.width * 0.7132407,
        size.height * 0.4207407);
    path_10.cubicTo(
        size.width * 0.7118519,
        size.height * 0.4264815,
        size.width * 0.7105556,
        size.height * 0.4323148,
        size.width * 0.7081481,
        size.height * 0.4376852);
    path_10.cubicTo(
        size.width * 0.7065741,
        size.height * 0.4412037,
        size.width * 0.7035185,
        size.height * 0.4441667,
        size.width * 0.7008333,
        size.height * 0.4471296);
    path_10.cubicTo(
        size.width * 0.6933333,
        size.height * 0.4553704,
        size.width * 0.6904630,
        size.height * 0.4649074,
        size.width * 0.6916667,
        size.height * 0.4759259);
    path_10.cubicTo(
        size.width * 0.6917593,
        size.height * 0.4764815,
        size.width * 0.6916667,
        size.height * 0.4771296,
        size.width * 0.6917593,
        size.height * 0.4776852);
    path_10.cubicTo(
        size.width * 0.6955556,
        size.height * 0.4993519,
        size.width * 0.6865741,
        size.height * 0.5140741,
        size.width * 0.6670370,
        size.height * 0.5229630);
    path_10.cubicTo(
        size.width * 0.6663889,
        size.height * 0.5232407,
        size.width * 0.6657407,
        size.height * 0.5237963,
        size.width * 0.6650926,
        size.height * 0.5243519);
    path_10.cubicTo(
        size.width * 0.6650000,
        size.height * 0.5244444,
        size.width * 0.6650000,
        size.height * 0.5247222,
        size.width * 0.6649074,
        size.height * 0.5249074);
    path_10.cubicTo(
        size.width * 0.6721296,
        size.height * 0.5280556,
        size.width * 0.6767593,
        size.height * 0.5273148,
        size.width * 0.6817593,
        size.height * 0.5217593);
    path_10.cubicTo(
        size.width * 0.6850926,
        size.height * 0.5180556,
        size.width * 0.6881481,
        size.height * 0.5140741,
        size.width * 0.6907407,
        size.height * 0.5098148);
    path_10.cubicTo(
        size.width * 0.6950926,
        size.height * 0.5026852,
        size.width * 0.7013889,
        size.height * 0.5005556,
        size.width * 0.7092593,
        size.height * 0.5019444);
    path_10.cubicTo(
        size.width * 0.7124074,
        size.height * 0.5025000,
        size.width * 0.7154630,
        size.height * 0.5034259,
        size.width * 0.7186111,
        size.height * 0.5042593);
    path_10.cubicTo(
        size.width * 0.7237963,
        size.height * 0.5056481,
        size.width * 0.7287037,
        size.height * 0.5060185,
        size.width * 0.7334259,
        size.height * 0.5025000);
    path_10.cubicTo(
        size.width * 0.7350000,
        size.height * 0.5013889,
        size.width * 0.7375926,
        size.height * 0.5016667,
        size.width * 0.7397222,
        size.height * 0.5012963);
    path_10.cubicTo(
        size.width * 0.7396296,
        size.height * 0.5035185,
        size.width * 0.7400926,
        size.height * 0.5060185,
        size.width * 0.7392593,
        size.height * 0.5079630);
    path_10.cubicTo(
        size.width * 0.7348148,
        size.height * 0.5187963,
        size.width * 0.7270370,
        size.height * 0.5254630,
        size.width * 0.7148148,
        size.height * 0.5261111);
    path_10.cubicTo(
        size.width * 0.7051852,
        size.height * 0.5265741,
        size.width * 0.6995370,
        size.height * 0.5316667,
        size.width * 0.6970370,
        size.height * 0.5410185);
    path_10.cubicTo(
        size.width * 0.6946296,
        size.height * 0.5497222,
        size.width * 0.6875926,
        size.height * 0.5534259,
        size.width * 0.6788889,
        size.height * 0.5555556);
    path_10.close();
    path_10.moveTo(size.width * 0.6590741, size.height * 0.5667593);
    path_10.lineTo(size.width * 0.6589815, size.height * 0.5665741);
    path_10.cubicTo(
        size.width * 0.6679630,
        size.height * 0.5729630,
        size.width * 0.6795370,
        size.height * 0.5737963,
        size.width * 0.6845370,
        size.height * 0.5692593);
    path_10.cubicTo(
        size.width * 0.6808333,
        size.height * 0.5663889,
        size.width * 0.6767593,
        size.height * 0.5636111,
        size.width * 0.6731481,
        size.height * 0.5604630);
    path_10.cubicTo(
        size.width * 0.6605556,
        size.height * 0.5495370,
        size.width * 0.6469444,
        size.height * 0.5495370,
        size.width * 0.6390741,
        size.height * 0.5595370);
    path_10.cubicTo(
        size.width * 0.6454630,
        size.height * 0.5618519,
        size.width * 0.6522222,
        size.height * 0.5642593,
        size.width * 0.6590741,
        size.height * 0.5667593);
    path_10.close();
    path_10.moveTo(size.width * 0.6700926, size.height * 0.4987963);
    path_10.cubicTo(
        size.width * 0.6696296,
        size.height * 0.4991667,
        size.width * 0.6690741,
        size.height * 0.4995370,
        size.width * 0.6686111,
        size.height * 0.4999074);
    path_10.cubicTo(
        size.width * 0.6642593,
        size.height * 0.5017593,
        size.width * 0.6600000,
        size.height * 0.5045370,
        size.width * 0.6554630,
        size.height * 0.5052778);
    path_10.cubicTo(
        size.width * 0.6496296,
        size.height * 0.5062963,
        size.width * 0.6457407,
        size.height * 0.5093519,
        size.width * 0.6420370,
        size.height * 0.5133333);
    path_10.cubicTo(
        size.width * 0.6347222,
        size.height * 0.5212963,
        size.width * 0.6285185,
        size.height * 0.5300000,
        size.width * 0.6262963,
        size.height * 0.5410185);
    path_10.cubicTo(
        size.width * 0.6323148,
        size.height * 0.5302778,
        size.width * 0.6426852,
        size.height * 0.5259259,
        size.width * 0.6532407,
        size.height * 0.5212963);
    path_10.cubicTo(
        size.width * 0.6608333,
        size.height * 0.5179630,
        size.width * 0.6681481,
        size.height * 0.5136111,
        size.width * 0.6751852,
        size.height * 0.5091667);
    path_10.cubicTo(
        size.width * 0.6822222,
        size.height * 0.5046296,
        size.width * 0.6852778,
        size.height * 0.4975926,
        size.width * 0.6850000,
        size.height * 0.4891667);
    path_10.cubicTo(
        size.width * 0.6847222,
        size.height * 0.4788889,
        size.width * 0.6847222,
        size.height * 0.4685185,
        size.width * 0.6846296,
        size.height * 0.4583333);
    path_10.cubicTo(
        size.width * 0.6832407,
        size.height * 0.4583333,
        size.width * 0.6809259,
        size.height * 0.4582407,
        size.width * 0.6782407,
        size.height * 0.4581481);
    path_10.cubicTo(
        size.width * 0.6762037,
        size.height * 0.4721296,
        size.width * 0.6817593,
        size.height * 0.4873148,
        size.width * 0.6700926,
        size.height * 0.4987963);
    path_10.close();
    path_10.moveTo(size.width * 0.6352778, size.height * 0.4238889);
    path_10.cubicTo(
        size.width * 0.6317593,
        size.height * 0.4301852,
        size.width * 0.6300000,
        size.height * 0.4371296,
        size.width * 0.6312963,
        size.height * 0.4448148);
    path_10.cubicTo(
        size.width * 0.6325000,
        size.height * 0.4516667,
        size.width * 0.6342593,
        size.height * 0.4584259,
        size.width * 0.6359259,
        size.height * 0.4651852);
    path_10.cubicTo(
        size.width * 0.6397222,
        size.height * 0.4799074,
        size.width * 0.6362963,
        size.height * 0.4927778,
        size.width * 0.6262963,
        size.height * 0.5041667);
    path_10.cubicTo(
        size.width * 0.6234259,
        size.height * 0.5075000,
        size.width * 0.6205556,
        size.height * 0.5108333,
        size.width * 0.6181481,
        size.height * 0.5145370);
    path_10.cubicTo(
        size.width * 0.6121296,
        size.height * 0.5239815,
        size.width * 0.6123148,
        size.height * 0.5392593,
        size.width * 0.6183333,
        size.height * 0.5469444);
    path_10.cubicTo(
        size.width * 0.6185185,
        size.height * 0.5304630,
        size.width * 0.6276852,
        size.height * 0.5185185,
        size.width * 0.6381481,
        size.height * 0.5072222);
    path_10.cubicTo(
        size.width * 0.6416667,
        size.height * 0.5034259,
        size.width * 0.6454630,
        size.height * 0.4998148,
        size.width * 0.6489815,
        size.height * 0.4960185);
    path_10.cubicTo(
        size.width * 0.6552778,
        size.height * 0.4889815,
        size.width * 0.6574074,
        size.height * 0.4807407,
        size.width * 0.6550926,
        size.height * 0.4714815);
    path_10.cubicTo(
        size.width * 0.6535185,
        size.height * 0.4650926,
        size.width * 0.6515741,
        size.height * 0.4587963,
        size.width * 0.6497222,
        size.height * 0.4525000);
    path_10.cubicTo(
        size.width * 0.6472222,
        size.height * 0.4436111,
        size.width * 0.6468519,
        size.height * 0.4348148,
        size.width * 0.6501852,
        size.height * 0.4260185);
    path_10.cubicTo(
        size.width * 0.6517593,
        size.height * 0.4219444,
        size.width * 0.6530556,
        size.height * 0.4176852,
        size.width * 0.6539815,
        size.height * 0.4134259);
    path_10.cubicTo(
        size.width * 0.6552778,
        size.height * 0.4075000,
        size.width * 0.6562037,
        size.height * 0.4013889,
        size.width * 0.6516667,
        size.height * 0.3956481);
    path_10.cubicTo(
        size.width * 0.6492593,
        size.height * 0.4007407,
        size.width * 0.6470370,
        size.height * 0.4052778,
        size.width * 0.6451852,
        size.height * 0.4091667);
    path_10.cubicTo(
        size.width * 0.6468519,
        size.height * 0.4112037,
        size.width * 0.6487037,
        size.height * 0.4130556,
        size.width * 0.6498148,
        size.height * 0.4151852);
    path_10.cubicTo(
        size.width * 0.6500926,
        size.height * 0.4157407,
        size.width * 0.6480556,
        size.height * 0.4186111,
        size.width * 0.6473148,
        size.height * 0.4185185);
    path_10.cubicTo(
        size.width * 0.6450926,
        size.height * 0.4182407,
        size.width * 0.6429630,
        size.height * 0.4170370,
        size.width * 0.6402778,
        size.height * 0.4160185);
    path_10.cubicTo(
        size.width * 0.6402778,
        size.height * 0.4160185,
        size.width * 0.6395370,
        size.height * 0.4170370,
        size.width * 0.6390741,
        size.height * 0.4175000);
    path_10.cubicTo(
        size.width * 0.6409259,
        size.height * 0.4192593,
        size.width * 0.6428704,
        size.height * 0.4204630,
        size.width * 0.6437963,
        size.height * 0.4222222);
    path_10.cubicTo(
        size.width * 0.6442593,
        size.height * 0.4229630,
        size.width * 0.6425000,
        size.height * 0.4260185,
        size.width * 0.6419444,
        size.height * 0.4260185);
    path_10.cubicTo(
        size.width * 0.6398148,
        size.height * 0.4257407,
        size.width * 0.6376852,
        size.height * 0.4247222,
        size.width * 0.6352778,
        size.height * 0.4238889);
    path_10.close();
    path_10.moveTo(size.width * 0.5823148, size.height * 0.4413889);
    path_10.cubicTo(
        size.width * 0.5779630,
        size.height * 0.4533333,
        size.width * 0.5839815,
        size.height * 0.4631481,
        size.width * 0.5930556,
        size.height * 0.4716667);
    path_10.cubicTo(
        size.width * 0.5996296,
        size.height * 0.4779630,
        size.width * 0.6013889,
        size.height * 0.4850000,
        size.width * 0.5978704,
        size.height * 0.4933333);
    path_10.cubicTo(
        size.width * 0.5958333,
        size.height * 0.4981481,
        size.width * 0.5928704,
        size.height * 0.5025926,
        size.width * 0.5916667,
        size.height * 0.5075000);
    path_10.cubicTo(
        size.width * 0.5904630,
        size.height * 0.5126852,
        size.width * 0.5894444,
        size.height * 0.5187037,
        size.width * 0.5909259,
        size.height * 0.5237037);
    path_10.cubicTo(
        size.width * 0.5936111,
        size.height * 0.5328704,
        size.width * 0.6008333,
        size.height * 0.5390741,
        size.width * 0.6091667,
        size.height * 0.5461111);
    path_10.cubicTo(
        size.width * 0.6060185,
        size.height * 0.5340741,
        size.width * 0.6054630,
        size.height * 0.5235185,
        size.width * 0.6106481,
        size.height * 0.5133333);
    path_10.cubicTo(
        size.width * 0.6111111,
        size.height * 0.5124074,
        size.width * 0.6110185,
        size.height * 0.5109259,
        size.width * 0.6106481,
        size.height * 0.5099074);
    path_10.cubicTo(
        size.width * 0.6080556,
        size.height * 0.5037963,
        size.width * 0.6100926,
        size.height * 0.4982407,
        size.width * 0.6119444,
        size.height * 0.4924074);
    path_10.cubicTo(
        size.width * 0.6129630,
        size.height * 0.4893519,
        size.width * 0.6132407,
        size.height * 0.4862037,
        size.width * 0.6137963,
        size.height * 0.4837037);
    path_10.cubicTo(
        size.width * 0.6111111,
        size.height * 0.4837963,
        size.width * 0.6089815,
        size.height * 0.4842593,
        size.width * 0.6072222,
        size.height * 0.4836111);
    path_10.cubicTo(
        size.width * 0.6063889,
        size.height * 0.4833333,
        size.width * 0.6055556,
        size.height * 0.4800926,
        size.width * 0.6060185,
        size.height * 0.4796296);
    path_10.cubicTo(
        size.width * 0.6077778,
        size.height * 0.4780556,
        size.width * 0.6100926,
        size.height * 0.4770370,
        size.width * 0.6131481,
        size.height * 0.4753704);
    path_10.cubicTo(
        size.width * 0.6091667,
        size.height * 0.4704630,
        size.width * 0.6052778,
        size.height * 0.4649074,
        size.width * 0.6006481,
        size.height * 0.4600000);
    path_10.cubicTo(
        size.width * 0.5950926,
        size.height * 0.4541667,
        size.width * 0.5922222,
        size.height * 0.4479630,
        size.width * 0.5950000,
        size.height * 0.4399074);
    path_10.cubicTo(
        size.width * 0.5964815,
        size.height * 0.4357407,
        size.width * 0.5979630,
        size.height * 0.4316667,
        size.width * 0.5991667,
        size.height * 0.4274074);
    path_10.cubicTo(
        size.width * 0.6009259,
        size.height * 0.4211111,
        size.width * 0.5995370,
        size.height * 0.4154630,
        size.width * 0.5958333,
        size.height * 0.4102778);
    path_10.cubicTo(
        size.width * 0.5922222,
        size.height * 0.4178704,
        size.width * 0.5888889,
        size.height * 0.4250926,
        size.width * 0.5862963,
        size.height * 0.4304630);
    path_10.cubicTo(
        size.width * 0.5881481,
        size.height * 0.4339815,
        size.width * 0.5892593,
        size.height * 0.4361111,
        size.width * 0.5903704,
        size.height * 0.4381481);
    path_10.cubicTo(
        size.width * 0.5880556,
        size.height * 0.4391667,
        size.width * 0.5858333,
        size.height * 0.4400926,
        size.width * 0.5823148,
        size.height * 0.4413889);
    path_10.close();
    path_10.moveTo(size.width * 0.7272222, size.height * 0.5151852);
    path_10.cubicTo(
        size.width * 0.7270370,
        size.height * 0.5145370,
        size.width * 0.7268519,
        size.height * 0.5137963,
        size.width * 0.7267593,
        size.height * 0.5131481);
    path_10.cubicTo(
        size.width * 0.7198148,
        size.height * 0.5117593,
        size.width * 0.7128704,
        size.height * 0.5102778,
        size.width * 0.7066667,
        size.height * 0.5089815);
    path_10.cubicTo(
        size.width * 0.7068519,
        size.height * 0.5111111,
        size.width * 0.7074074,
        size.height * 0.5132407,
        size.width * 0.7070370,
        size.height * 0.5152778);
    path_10.cubicTo(
        size.width * 0.7069444,
        size.height * 0.5159259,
        size.width * 0.7036111,
        size.height * 0.5169444,
        size.width * 0.7031481,
        size.height * 0.5163889);
    path_10.cubicTo(
        size.width * 0.7015741,
        size.height * 0.5149074,
        size.width * 0.7007407,
        size.height * 0.5126852,
        size.width * 0.6993519,
        size.height * 0.5103704);
    path_10.cubicTo(
        size.width * 0.6978704,
        size.height * 0.5125926,
        size.width * 0.6961111,
        size.height * 0.5151852,
        size.width * 0.6944444,
        size.height * 0.5177778);
    path_10.cubicTo(
        size.width * 0.6832407,
        size.height * 0.5348148,
        size.width * 0.6750926,
        size.height * 0.5373148,
        size.width * 0.6567593,
        size.height * 0.5297222);
    path_10.cubicTo(
        size.width * 0.6557407,
        size.height * 0.5292593,
        size.width * 0.6542593,
        size.height * 0.5288889,
        size.width * 0.6534259,
        size.height * 0.5293519);
    path_10.cubicTo(
        size.width * 0.6475926,
        size.height * 0.5327778,
        size.width * 0.6413889,
        size.height * 0.5357407,
        size.width * 0.6364815,
        size.height * 0.5401852);
    path_10.cubicTo(
        size.width * 0.6325000,
        size.height * 0.5437037,
        size.width * 0.6307407,
        size.height * 0.5492593,
        size.width * 0.6313889,
        size.height * 0.5550926);
    path_10.cubicTo(
        size.width * 0.6322222,
        size.height * 0.5550000,
        size.width * 0.6324074,
        size.height * 0.5550000,
        size.width * 0.6325926,
        size.height * 0.5549074);
    path_10.cubicTo(
        size.width * 0.6337037,
        size.height * 0.5540741,
        size.width * 0.6349074,
        size.height * 0.5533333,
        size.width * 0.6359259,
        size.height * 0.5524074);
    path_10.cubicTo(
        size.width * 0.6444444,
        size.height * 0.5449074,
        size.width * 0.6540741,
        size.height * 0.5438889,
        size.width * 0.6645370,
        size.height * 0.5469444);
    path_10.cubicTo(
        size.width * 0.6675926,
        size.height * 0.5478704,
        size.width * 0.6708333,
        size.height * 0.5484259,
        size.width * 0.6739815,
        size.height * 0.5485185);
    path_10.cubicTo(
        size.width * 0.6821296,
        size.height * 0.5487037,
        size.width * 0.6884259,
        size.height * 0.5451852,
        size.width * 0.6901852,
        size.height * 0.5387037);
    path_10.cubicTo(
        size.width * 0.6936111,
        size.height * 0.5260185,
        size.width * 0.7017593,
        size.height * 0.5198148,
        size.width * 0.7147222,
        size.height * 0.5187037);
    path_10.cubicTo(
        size.width * 0.7188889,
        size.height * 0.5183333,
        size.width * 0.7230556,
        size.height * 0.5163889,
        size.width * 0.7272222,
        size.height * 0.5151852);
    path_10.close();
    path_10.moveTo(size.width * 0.6027778, size.height * 0.5525926);
    path_10.cubicTo(
        size.width * 0.5965741,
        size.height * 0.5439815,
        size.width * 0.5901852,
        size.height * 0.5351852,
        size.width * 0.5837963,
        size.height * 0.5263889);
    path_10.cubicTo(
        size.width * 0.5829630,
        size.height * 0.5252778,
        size.width * 0.5815741,
        size.height * 0.5247222,
        size.width * 0.5807407,
        size.height * 0.5237037);
    path_10.cubicTo(
        size.width * 0.5782407,
        size.height * 0.5204630,
        size.width * 0.5750926,
        size.height * 0.5175000,
        size.width * 0.5737963,
        size.height * 0.5137963);
    path_10.cubicTo(
        size.width * 0.5705556,
        size.height * 0.5046296,
        size.width * 0.5675000,
        size.height * 0.5018519,
        size.width * 0.5577778,
        size.height * 0.5026852);
    path_10.cubicTo(
        size.width * 0.5506481,
        size.height * 0.5033333,
        size.width * 0.5436111,
        size.height * 0.5043519,
        size.width * 0.5375000,
        size.height * 0.4981481);
    path_10.cubicTo(
        size.width * 0.5371296,
        size.height * 0.5038889,
        size.width * 0.5397222,
        size.height * 0.5062037,
        size.width * 0.5437037,
        size.height * 0.5073148);
    path_10.cubicTo(
        size.width * 0.5467593,
        size.height * 0.5081481,
        size.width * 0.5500000,
        size.height * 0.5086111,
        size.width * 0.5530556,
        size.height * 0.5094444);
    path_10.cubicTo(
        size.width * 0.5647222,
        size.height * 0.5125926,
        size.width * 0.5678704,
        size.height * 0.5172222,
        size.width * 0.5670370,
        size.height * 0.5293519);
    path_10.cubicTo(
        size.width * 0.5662963,
        size.height * 0.5402778,
        size.width * 0.5742593,
        size.height * 0.5535185,
        size.width * 0.5885185,
        size.height * 0.5525926);
    path_10.cubicTo(
        size.width * 0.5936111,
        size.height * 0.5522222,
        size.width * 0.5987963,
        size.height * 0.5525926,
        size.width * 0.6027778,
        size.height * 0.5525926);
    path_10.close();
    path_10.moveTo(size.width * 0.6816667, size.height * 0.4494444);
    path_10.cubicTo(
        size.width * 0.6841667,
        size.height * 0.4518519,
        size.width * 0.6854630,
        size.height * 0.4531481,
        size.width * 0.6865741,
        size.height * 0.4542593);
    path_10.cubicTo(
        size.width * 0.6918519,
        size.height * 0.4472222,
        size.width * 0.6969444,
        size.height * 0.4404630,
        size.width * 0.7020370,
        size.height * 0.4337037);
    path_10.cubicTo(
        size.width * 0.7015741,
        size.height * 0.4332407,
        size.width * 0.7011111,
        size.height * 0.4327778,
        size.width * 0.7006481,
        size.height * 0.4324074);
    path_10.cubicTo(
        size.width * 0.6944444,
        size.height * 0.4379630,
        size.width * 0.6882407,
        size.height * 0.4436111,
        size.width * 0.6816667,
        size.height * 0.4494444);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.6396296, size.height * 0.5868519);
    path_11.cubicTo(
        size.width * 0.6342593,
        size.height * 0.5868519,
        size.width * 0.6304630,
        size.height * 0.5868519,
        size.width * 0.6266667,
        size.height * 0.5868519);
    path_11.cubicTo(
        size.width * 0.5404630,
        size.height * 0.5868519,
        size.width * 0.4543519,
        size.height * 0.5868519,
        size.width * 0.3681481,
        size.height * 0.5867593);
    path_11.cubicTo(
        size.width * 0.3620370,
        size.height * 0.5867593,
        size.width * 0.3536111,
        size.height * 0.5884259,
        size.width * 0.3513889,
        size.height * 0.5831481);
    path_11.cubicTo(
        size.width * 0.3491667,
        size.height * 0.5776852,
        size.width * 0.3582407,
        size.height * 0.5773148,
        size.width * 0.3637963,
        size.height * 0.5760185);
    path_11.cubicTo(
        size.width * 0.4143519,
        size.height * 0.5639815,
        size.width * 0.4666667,
        size.height * 0.5575926,
        size.width * 0.5216667,
        size.height * 0.5609259);
    path_11.cubicTo(
        size.width * 0.5630556,
        size.height * 0.5635185,
        size.width * 0.6013889,
        size.height * 0.5713889,
        size.width * 0.6362963,
        size.height * 0.5846296);
    path_11.cubicTo(
        size.width * 0.6369444,
        size.height * 0.5850000,
        size.width * 0.6375000,
        size.height * 0.5855556,
        size.width * 0.6396296,
        size.height * 0.5868519);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.5416667, size.height * 0.3687037);
    path_12.cubicTo(
        size.width * 0.5393519,
        size.height * 0.3999074,
        size.width * 0.5381481,
        size.height * 0.4320370,
        size.width * 0.5187963,
        size.height * 0.4584259);
    path_12.cubicTo(
        size.width * 0.4996296,
        size.height * 0.4845370,
        size.width * 0.5025926,
        size.height * 0.5106481,
        size.width * 0.5203704,
        size.height * 0.5332407);
    path_12.cubicTo(
        size.width * 0.5211111,
        size.height * 0.5341667,
        size.width * 0.5217593,
        size.height * 0.5352778,
        size.width * 0.5236111,
        size.height * 0.5380556);
    path_12.cubicTo(
        size.width * 0.5075926,
        size.height * 0.5394444,
        size.width * 0.4926852,
        size.height * 0.5408333,
        size.width * 0.4778704,
        size.height * 0.5416667);
    path_12.cubicTo(
        size.width * 0.4758333,
        size.height * 0.5417593,
        size.width * 0.4732407,
        size.height * 0.5387963,
        size.width * 0.4715741,
        size.height * 0.5366667);
    path_12.cubicTo(
        size.width * 0.4417593,
        size.height * 0.5003704,
        size.width * 0.4307407,
        size.height * 0.4605556,
        size.width * 0.4481481,
        size.height * 0.4150926);
    path_12.cubicTo(
        size.width * 0.4586111,
        size.height * 0.3877778,
        size.width * 0.4638889,
        size.height * 0.3592593,
        size.width * 0.4641667,
        size.height * 0.3298148);
    path_12.cubicTo(
        size.width * 0.4712037,
        size.height * 0.3474074,
        size.width * 0.4737963,
        size.height * 0.3656481,
        size.width * 0.4718519,
        size.height * 0.3845370);
    path_12.cubicTo(
        size.width * 0.4679630,
        size.height * 0.4221296,
        size.width * 0.4642593,
        size.height * 0.4597222,
        size.width * 0.4709259,
        size.height * 0.4973148);
    path_12.cubicTo(
        size.width * 0.4721296,
        size.height * 0.5043519,
        size.width * 0.4720370,
        size.height * 0.5140741,
        size.width * 0.4826852,
        size.height * 0.5126852);
    path_12.cubicTo(
        size.width * 0.4934259,
        size.height * 0.5112963,
        size.width * 0.4909259,
        size.height * 0.5025000,
        size.width * 0.4894444,
        size.height * 0.4951852);
    path_12.cubicTo(
        size.width * 0.4891667,
        size.height * 0.4937037,
        size.width * 0.4888889,
        size.height * 0.4921296,
        size.width * 0.4886111,
        size.height * 0.4906481);
    path_12.cubicTo(
        size.width * 0.4859259,
        size.height * 0.4767593,
        size.width * 0.4856481,
        size.height * 0.4650000,
        size.width * 0.4990741,
        size.height * 0.4540741);
    path_12.cubicTo(
        size.width * 0.5169444,
        size.height * 0.4396296,
        size.width * 0.5239815,
        size.height * 0.4180556,
        size.width * 0.5287037,
        size.height * 0.3957407);
    path_12.cubicTo(
        size.width * 0.5307407,
        size.height * 0.3862037,
        size.width * 0.5350926,
        size.height * 0.3770370,
        size.width * 0.5384259,
        size.height * 0.3677778);
    path_12.cubicTo(
        size.width * 0.5395370,
        size.height * 0.3679630,
        size.width * 0.5405556,
        size.height * 0.3683333,
        size.width * 0.5416667,
        size.height * 0.3687037);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = color ?? const Color(0xffE2664E).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
