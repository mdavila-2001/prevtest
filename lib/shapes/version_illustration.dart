import 'package:flutter/material.dart';

class VersionIllustration extends StatelessWidget {
  final double width;

  const VersionIllustration({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width * 1.1342592592592593).toDouble()),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2680282, size.height * 0.2286180);
    path_0.cubicTo(
        size.width * 0.2680282,
        size.height * 0.2286180,
        size.width * 0.4070273,
        size.height * 0.3216139,
        size.width * 0.6183426,
        size.height * 0.1477282);
    path_0.cubicTo(
        size.width * 0.8060093,
        size.height * -0.006695224,
        size.width * 0.9592407,
        size.height * 0.2369502,
        size.width * 0.9603148,
        size.height * 0.3536282);
    path_0.cubicTo(
        size.width * 0.9617037,
        size.height * 0.5047714,
        size.width * 0.7726481,
        size.height * 0.6257102,
        size.width * 0.8643981,
        size.height * 0.7249837);
    path_0.cubicTo(
        size.width * 0.9561435,
        size.height * 0.8242531,
        size.width * 0.6824444,
        size.height * 0.9881878,
        size.width * 0.5349352,
        size.height * 0.8463143);
    path_0.cubicTo(
        size.width * 0.3514356,
        size.height * 0.6698286,
        size.width * 0.3017241,
        size.height * 0.8132245,
        size.width * 0.1971310,
        size.height * 0.8132245);
    path_0.cubicTo(
        size.width * 0.1220634,
        size.height * 0.8132245,
        size.width * -0.03205792,
        size.height * 0.6487796,
        size.width * 0.07201852,
        size.height * 0.5264367);
    path_0.cubicTo(
        size.width * 0.1595977,
        size.height * 0.4234857,
        size.width * 0.1118333,
        size.height * 0.3893196,
        size.width * 0.08870324,
        size.height * 0.3536282);
    path_0.cubicTo(
        size.width * 0.05533704,
        size.height * 0.3021531,
        size.width * 0.1345750,
        size.height * 0.1624363,
        size.width * 0.2680282,
        size.height * 0.2286180);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff9D90E2).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.6737269, size.height * 0.1451506);
    path_1.lineTo(size.width * 0.3323977, size.height * 0.1420641);
    path_1.cubicTo(
        size.width * 0.3073630,
        size.height * 0.1418376,
        size.width * 0.2868606,
        size.height * 0.1595465,
        size.width * 0.2866037,
        size.height * 0.1816176);
    path_1.lineTo(size.width * 0.2792134, size.height * 0.8168204);
    path_1.cubicTo(
        size.width * 0.2789569,
        size.height * 0.8388939,
        size.width * 0.2990431,
        size.height * 0.8569673,
        size.width * 0.3240778,
        size.height * 0.8571959);
    path_1.lineTo(size.width * 0.6654074, size.height * 0.8602816);
    path_1.cubicTo(
        size.width * 0.6904444,
        size.height * 0.8605061,
        size.width * 0.7109444,
        size.height * 0.8428000,
        size.width * 0.7112037,
        size.height * 0.8207265);
    path_1.lineTo(size.width * 0.7185926, size.height * 0.1855241);
    path_1.cubicTo(
        size.width * 0.7188472,
        size.height * 0.1634527,
        size.width * 0.6987639,
        size.height * 0.1453771,
        size.width * 0.6737269,
        size.height * 0.1451506);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.6658102, size.height * 0.1640947);
    path_2.lineTo(size.width * 0.3398620, size.height * 0.1611469);
    path_2.cubicTo(
        size.width * 0.3231722,
        size.height * 0.1609963,
        size.width * 0.3095037,
        size.height * 0.1728020,
        size.width * 0.3093329,
        size.height * 0.1875163);
    path_2.lineTo(size.width * 0.3020750, size.height * 0.8113347);
    path_2.cubicTo(
        size.width * 0.3019042,
        size.height * 0.8260490,
        size.width * 0.3152949,
        size.height * 0.8381020,
        size.width * 0.3319847,
        size.height * 0.8382531);
    path_2.lineTo(size.width * 0.6579352, size.height * 0.8412000);
    path_2.cubicTo(
        size.width * 0.6746250,
        size.height * 0.8413510,
        size.width * 0.6882917,
        size.height * 0.8295429,
        size.width * 0.6884630,
        size.height * 0.8148286);
    path_2.lineTo(size.width * 0.6957222, size.height * 0.1910102);
    path_2.cubicTo(
        size.width * 0.6958935,
        size.height * 0.1762959,
        size.width * 0.6825000,
        size.height * 0.1642457,
        size.width * 0.6658102,
        size.height * 0.1640947);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffD1CCF2).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.5591898, size.height * 0.5611388);
    path_3.cubicTo(
        size.width * 0.5729630,
        size.height * 0.5498041,
        size.width * 0.5821481,
        size.height * 0.5364490,
        size.width * 0.5865880,
        size.height * 0.5206612);
    path_3.cubicTo(
        size.width * 0.5982176,
        size.height * 0.4782939,
        size.width * 0.5685278,
        size.height * 0.4349796,
        size.width * 0.5204722,
        size.height * 0.4244571);
    path_3.cubicTo(
        size.width * 0.5155741,
        size.height * 0.4233755,
        size.width * 0.5114398,
        size.height * 0.4214857,
        size.width * 0.5099120,
        size.height * 0.4169020);
    path_3.cubicTo(
        size.width * 0.5074630,
        size.height * 0.4098816,
        size.width * 0.5143472,
        size.height * 0.4025976,
        size.width * 0.5226111,
        size.height * 0.4043514);
    path_3.cubicTo(
        size.width * 0.5308750,
        size.height * 0.4061057,
        size.width * 0.5392963,
        size.height * 0.4082653,
        size.width * 0.5469491,
        size.height * 0.4116367);
    path_3.cubicTo(
        size.width * 0.5836759,
        size.height * 0.4276939,
        size.width * 0.6055648,
        size.height * 0.4538694,
        size.width * 0.6107685,
        size.height * 0.4896286);
    path_3.cubicTo(
        size.width * 0.6155093,
        size.height * 0.5218776,
        size.width * 0.6038796,
        size.height * 0.5498041,
        size.width * 0.5780139,
        size.height * 0.5730122);
    path_3.cubicTo(
        size.width * 0.5774028,
        size.height * 0.5735551,
        size.width * 0.5767917,
        size.height * 0.5740939,
        size.width * 0.5761806,
        size.height * 0.5746327);
    path_3.cubicTo(
        size.width * 0.5760278,
        size.height * 0.5747673,
        size.width * 0.5760278,
        size.height * 0.5749020,
        size.width * 0.5757176,
        size.height * 0.5751714);
    path_3.cubicTo(
        size.width * 0.5761806,
        size.height * 0.5757143,
        size.width * 0.5767917,
        size.height * 0.5762531,
        size.width * 0.5774028,
        size.height * 0.5767918);
    path_3.cubicTo(
        size.width * 0.5816898,
        size.height * 0.5805714,
        size.width * 0.5859722,
        size.height * 0.5844816,
        size.width * 0.5904120,
        size.height * 0.5882612);
    path_3.cubicTo(
        size.width * 0.5922500,
        size.height * 0.5898816,
        size.width * 0.5931667,
        size.height * 0.5916327,
        size.width * 0.5920972,
        size.height * 0.5939265);
    path_3.cubicTo(
        size.width * 0.5910231,
        size.height * 0.5962204,
        size.width * 0.5888796,
        size.height * 0.5971673,
        size.width * 0.5861250,
        size.height * 0.5971673);
    path_3.cubicTo(
        size.width * 0.5703611,
        size.height * 0.5971673,
        size.width * 0.5544444,
        size.height * 0.5971673,
        size.width * 0.5386806,
        size.height * 0.5971673);
    path_3.cubicTo(
        size.width * 0.5343981,
        size.height * 0.5971673,
        size.width * 0.5322546,
        size.height * 0.5951429,
        size.width * 0.5322546,
        size.height * 0.5914980);
    path_3.cubicTo(
        size.width * 0.5322546,
        size.height * 0.5776000,
        size.width * 0.5322546,
        size.height * 0.5635673,
        size.width * 0.5322546,
        size.height * 0.5496694);
    path_3.cubicTo(
        size.width * 0.5322546,
        size.height * 0.5472408,
        size.width * 0.5333241,
        size.height * 0.5453551,
        size.width * 0.5359259,
        size.height * 0.5444082);
    path_3.cubicTo(
        size.width * 0.5385278,
        size.height * 0.5434653,
        size.width * 0.5406713,
        size.height * 0.5442735,
        size.width * 0.5426620,
        size.height * 0.5460286);
    path_3.cubicTo(
        size.width * 0.5480185,
        size.height * 0.5511551,
        size.width * 0.5535278,
        size.height * 0.5560122,
        size.width * 0.5591898,
        size.height * 0.5611388);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4206861, size.height * 0.4285020);
    path_4.cubicTo(
        size.width * 0.4167069,
        size.height * 0.4249959,
        size.width * 0.4125750,
        size.height * 0.4214857,
        size.width * 0.4084426,
        size.height * 0.4179796);
    path_4.cubicTo(
        size.width * 0.4073713,
        size.height * 0.4170367,
        size.width * 0.4063000,
        size.height * 0.4160898,
        size.width * 0.4052287,
        size.height * 0.4151469);
    path_4.cubicTo(
        size.width * 0.4038514,
        size.height * 0.4136612,
        size.width * 0.4032389,
        size.height * 0.4120408,
        size.width * 0.4040042,
        size.height * 0.4101551);
    path_4.cubicTo(
        size.width * 0.4049227,
        size.height * 0.4081294,
        size.width * 0.4064532,
        size.height * 0.4070502,
        size.width * 0.4087486,
        size.height * 0.4067804);
    path_4.cubicTo(
        size.width * 0.4096671,
        size.height * 0.4067804,
        size.width * 0.4104324,
        size.height * 0.4067804,
        size.width * 0.4111972,
        size.height * 0.4067804);
    path_4.cubicTo(
        size.width * 0.4261958,
        size.height * 0.4067804,
        size.width * 0.4411944,
        size.height * 0.4067804,
        size.width * 0.4561931,
        size.height * 0.4067804);
    path_4.cubicTo(
        size.width * 0.4620088,
        size.height * 0.4067804,
        size.width * 0.4638472,
        size.height * 0.4084000,
        size.width * 0.4638472,
        size.height * 0.4135265);
    path_4.cubicTo(
        size.width * 0.4638472,
        size.height * 0.4267510,
        size.width * 0.4638472,
        size.height * 0.4399714,
        size.width * 0.4638472,
        size.height * 0.4531959);
    path_4.cubicTo(
        size.width * 0.4638472,
        size.height * 0.4558939,
        size.width * 0.4635370,
        size.height * 0.4583224,
        size.width * 0.4603250,
        size.height * 0.4594041);
    path_4.cubicTo(
        size.width * 0.4571111,
        size.height * 0.4606163,
        size.width * 0.4548153,
        size.height * 0.4591347,
        size.width * 0.4526727,
        size.height * 0.4571102);
    path_4.cubicTo(
        size.width * 0.4474694,
        size.height * 0.4523878,
        size.width * 0.4422657,
        size.height * 0.4478000,
        size.width * 0.4369093,
        size.height * 0.4430776);
    path_4.cubicTo(
        size.width * 0.4284917,
        size.height * 0.4498245,
        size.width * 0.4219106,
        size.height * 0.4573796,
        size.width * 0.4170130,
        size.height * 0.4660163);
    path_4.cubicTo(
        size.width * 0.3906894,
        size.height * 0.5118898,
        size.width * 0.4193088,
        size.height * 0.5670776,
        size.width * 0.4757824,
        size.height * 0.5796245);
    path_4.cubicTo(
        size.width * 0.4806806,
        size.height * 0.5807061,
        size.width * 0.4848102,
        size.height * 0.5827306,
        size.width * 0.4863426,
        size.height * 0.5873184);
    path_4.cubicTo(
        size.width * 0.4887917,
        size.height * 0.5950082,
        size.width * 0.4809861,
        size.height * 0.6018898,
        size.width * 0.4719583,
        size.height * 0.5995959);
    path_4.cubicTo(
        size.width * 0.4646111,
        size.height * 0.5978408,
        size.width * 0.4572644,
        size.height * 0.5959510,
        size.width * 0.4503773,
        size.height * 0.5929837);
    path_4.cubicTo(
        size.width * 0.4130338,
        size.height * 0.5769265,
        size.width * 0.3906894,
        size.height * 0.5507510,
        size.width * 0.3853329,
        size.height * 0.5143184);
    path_4.cubicTo(
        size.width * 0.3805884,
        size.height * 0.4819347,
        size.width * 0.3923727,
        size.height * 0.4540041,
        size.width * 0.4183907,
        size.height * 0.4307959);
    path_4.cubicTo(
        size.width * 0.4190028,
        size.height * 0.4302571,
        size.width * 0.4194620,
        size.height * 0.4298531,
        size.width * 0.4200741,
        size.height * 0.4293143);
    path_4.cubicTo(
        size.width * 0.4202273,
        size.height * 0.4291796,
        size.width * 0.4202273,
        size.height * 0.4290449,
        size.width * 0.4206861,
        size.height * 0.4285020);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.4819028, size.height * 0.5201224);
    path_5.cubicTo(
        size.width * 0.4845046,
        size.height * 0.5176939,
        size.width * 0.4866481,
        size.height * 0.5155347,
        size.width * 0.4890972,
        size.height * 0.5135102);
    path_5.cubicTo(
        size.width * 0.5053194,
        size.height * 0.4992082,
        size.width * 0.5215417,
        size.height * 0.4847714,
        size.width * 0.5379167,
        size.height * 0.4704653);
    path_5.cubicTo(
        size.width * 0.5412870,
        size.height * 0.4676327,
        size.width * 0.5451111,
        size.height * 0.4665551,
        size.width * 0.5495509,
        size.height * 0.4677673);
    path_5.cubicTo(
        size.width * 0.5539861,
        size.height * 0.4689837,
        size.width * 0.5565880,
        size.height * 0.4718163,
        size.width * 0.5575093,
        size.height * 0.4758653);
    path_5.cubicTo(
        size.width * 0.5581204,
        size.height * 0.4786980,
        size.width * 0.5572037,
        size.height * 0.4812612,
        size.width * 0.5552130,
        size.height * 0.4835551);
    path_5.cubicTo(
        size.width * 0.5544491,
        size.height * 0.4843633,
        size.width * 0.5536806,
        size.height * 0.4850408,
        size.width * 0.5529167,
        size.height * 0.4857143);
    path_5.cubicTo(
        size.width * 0.5322546,
        size.height * 0.5037959,
        size.width * 0.5118981,
        size.height * 0.5217388,
        size.width * 0.4913935,
        size.height * 0.5398204);
    path_5.cubicTo(
        size.width * 0.4849630,
        size.height * 0.5454898,
        size.width * 0.4789954,
        size.height * 0.5454898,
        size.width * 0.4724167,
        size.height * 0.5398204);
    path_5.cubicTo(
        size.width * 0.4623134,
        size.height * 0.5309143,
        size.width * 0.4523653,
        size.height * 0.5221469,
        size.width * 0.4422644,
        size.height * 0.5132408);
    path_5.cubicTo(
        size.width * 0.4393565,
        size.height * 0.5106776,
        size.width * 0.4378259,
        size.height * 0.5077061,
        size.width * 0.4384384,
        size.height * 0.5042000);
    path_5.cubicTo(
        size.width * 0.4392037,
        size.height * 0.5002857,
        size.width * 0.4418051,
        size.height * 0.4974531,
        size.width * 0.4460907,
        size.height * 0.4962408);
    path_5.cubicTo(
        size.width * 0.4503759,
        size.height * 0.4948898,
        size.width * 0.4543551,
        size.height * 0.4958327,
        size.width * 0.4575690,
        size.height * 0.4986694);
    path_5.cubicTo(
        size.width * 0.4629255,
        size.height * 0.5032571,
        size.width * 0.4681296,
        size.height * 0.5079796,
        size.width * 0.4734861,
        size.height * 0.5125673);
    path_5.cubicTo(
        size.width * 0.4762407,
        size.height * 0.5148612,
        size.width * 0.4788426,
        size.height * 0.5172898,
        size.width * 0.4819028,
        size.height * 0.5201224);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
