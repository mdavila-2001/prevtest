import 'package:flutter/material.dart';

class MaintenanceIllustration extends StatelessWidget {
  final double width;

  const MaintenanceIllustration({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width * 1).toDouble()),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3019864, size.height * 0.2638786);
    path_0.cubicTo(
        size.width * 0.3019864,
        size.height * 0.2638786,
        size.width * 0.4092143,
        size.height * 0.3452500,
        size.width * 0.5722286,
        size.height * 0.1931000);
    path_0.cubicTo(
        size.width * 0.7170000,
        size.height * 0.05797964,
        size.width * 0.8352107,
        size.height * 0.2711696,
        size.width * 0.8360357,
        size.height * 0.3732607);
    path_0.cubicTo(
        size.width * 0.8371071,
        size.height * 0.5055107,
        size.width * 0.6912643,
        size.height * 0.6113321,
        size.width * 0.7620429,
        size.height * 0.6981964);
    path_0.cubicTo(
        size.width * 0.8328179,
        size.height * 0.7850607,
        size.width * 0.6216786,
        size.height * 0.9285036,
        size.width * 0.5078857,
        size.height * 0.8043643);
    path_0.cubicTo(
        size.width * 0.3663286,
        size.height * 0.6499393,
        size.width * 0.3279804,
        size.height * 0.7754071,
        size.width * 0.2472943,
        size.height * 0.7754071);
    path_0.cubicTo(
        size.width * 0.1893850,
        size.height * 0.7754071,
        size.width * 0.07049143,
        size.height * 0.6315179,
        size.width * 0.1507789,
        size.height * 0.5244679);
    path_0.cubicTo(
        size.width * 0.2183400,
        size.height * 0.4343893,
        size.width * 0.1814932,
        size.height * 0.4044929,
        size.width * 0.1636500,
        size.height * 0.3732607);
    path_0.cubicTo(
        size.width * 0.1379104,
        size.height * 0.3282218,
        size.width * 0.1990368,
        size.height * 0.2059696,
        size.width * 0.3019864,
        size.height * 0.2638786);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff9D90E2).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.7324750, size.height * 0.4436964);
    path_1.cubicTo(
        size.width * 0.7382357,
        size.height * 0.4458393,
        size.width * 0.7445357,
        size.height * 0.4459821,
        size.width * 0.7505286,
        size.height * 0.4446036);
    path_1.cubicTo(
        size.width * 0.7756357,
        size.height * 0.4388429,
        size.width * 0.8619679,
        size.height * 0.4235821,
        size.width * 0.8469679,
        size.height * 0.4904821);
    path_1.cubicTo(
        size.width * 0.8437000,
        size.height * 0.5037536,
        size.width * 0.7931357,
        size.height * 0.5780857,
        size.width * 0.8651429,
        size.height * 0.6052214);
    path_1.cubicTo(
        size.width * 0.8704214,
        size.height * 0.6072357,
        size.width * 0.8760000,
        size.height * 0.6083357,
        size.width * 0.8816464,
        size.height * 0.6084714);
    path_1.cubicTo(
        size.width * 0.9038143,
        size.height * 0.6089286,
        size.width * 0.9477500,
        size.height * 0.6036929,
        size.width * 0.9661357,
        size.height * 0.5849786);
    path_1.cubicTo(
        size.width * 0.9883464,
        size.height * 0.5623679,
        size.width * 0.9640821,
        size.height * 0.5730893,
        size.width * 0.9640821,
        size.height * 0.5730893);
    path_1.cubicTo(
        size.width * 0.9640821,
        size.height * 0.5730893,
        size.width * 0.8796393,
        size.height * 0.6099393,
        size.width * 0.8498107,
        size.height * 0.5708429);
    path_1.cubicTo(
        size.width * 0.8464929,
        size.height * 0.5664929,
        size.width * 0.8443786,
        size.height * 0.5601750,
        size.width * 0.8437714,
        size.height * 0.5547357);
    path_1.cubicTo(
        size.width * 0.8427214,
        size.height * 0.5453071,
        size.width * 0.8469107,
        size.height * 0.5328464,
        size.width * 0.8524107,
        size.height * 0.5219964);
    path_1.cubicTo(
        size.width * 0.8598571,
        size.height * 0.5073143,
        size.width * 0.8955964,
        size.height * 0.4412679,
        size.width * 0.8179964,
        size.height * 0.4220286);
    path_1.cubicTo(
        size.width * 0.8001214,
        size.height * 0.4177714,
        size.width * 0.7741571,
        size.height * 0.4139500,
        size.width * 0.7406786,
        size.height * 0.4280429);
    path_1.cubicTo(
        size.width * 0.7211536,
        size.height * 0.4362643,
        size.width * 0.7254786,
        size.height * 0.4410964,
        size.width * 0.7324750,
        size.height * 0.4436964);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffD1CCF2).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7497536, size.height * 0.4190393);
    path_2.lineTo(size.width * 0.7272786, size.height * 0.4274536);
    path_2.cubicTo(
        size.width * 0.7195179,
        size.height * 0.4303571,
        size.width * 0.7155821,
        size.height * 0.4390000,
        size.width * 0.7184857,
        size.height * 0.4467571);
    path_2.lineTo(size.width * 0.7196000, size.height * 0.4497357);
    path_2.cubicTo(
        size.width * 0.7225036,
        size.height * 0.4574929,
        size.width * 0.7311464,
        size.height * 0.4614286,
        size.width * 0.7389071,
        size.height * 0.4585250);
    path_2.lineTo(size.width * 0.7613821, size.height * 0.4501143);
    path_2.cubicTo(
        size.width * 0.7691429,
        size.height * 0.4472107,
        size.width * 0.7730786,
        size.height * 0.4385679,
        size.width * 0.7701750,
        size.height * 0.4308071);
    path_2.lineTo(size.width * 0.7690607, size.height * 0.4278321);
    path_2.cubicTo(
        size.width * 0.7661571,
        size.height * 0.4200714,
        size.width * 0.7575107,
        size.height * 0.4161357,
        size.width * 0.7497536,
        size.height * 0.4190393);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.6117893, size.height * 0.4433821);
    path_3.lineTo(size.width * 0.5376643, size.height * 0.4711214);
    path_3.cubicTo(
        size.width * 0.5337857,
        size.height * 0.4725750,
        size.width * 0.5318179,
        size.height * 0.4768964,
        size.width * 0.5332679,
        size.height * 0.4807750);
    path_3.lineTo(size.width * 0.5335607, size.height * 0.4815571);
    path_3.cubicTo(
        size.width * 0.5350107,
        size.height * 0.4854357,
        size.width * 0.5393357,
        size.height * 0.4874036,
        size.width * 0.5432143,
        size.height * 0.4859500);
    path_3.lineTo(size.width * 0.6173393, size.height * 0.4582107);
    path_3.cubicTo(
        size.width * 0.6212179,
        size.height * 0.4567571,
        size.width * 0.6231857,
        size.height * 0.4524357,
        size.width * 0.6217321,
        size.height * 0.4485571);
    path_3.lineTo(size.width * 0.6214429, size.height * 0.4477750);
    path_3.cubicTo(
        size.width * 0.6199893,
        size.height * 0.4438964,
        size.width * 0.6156679,
        size.height * 0.4419286,
        size.width * 0.6117893,
        size.height * 0.4433821);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.6324786, size.height * 0.4986571);
    path_4.lineTo(size.width * 0.5583536, size.height * 0.5263964);
    path_4.cubicTo(
        size.width * 0.5544750,
        size.height * 0.5278500,
        size.width * 0.5525071,
        size.height * 0.5321714,
        size.width * 0.5539571,
        size.height * 0.5360500);
    path_4.lineTo(size.width * 0.5542500, size.height * 0.5368321);
    path_4.cubicTo(
        size.width * 0.5557000,
        size.height * 0.5407107,
        size.width * 0.5600250,
        size.height * 0.5426786,
        size.width * 0.5639036,
        size.height * 0.5412250);
    path_4.lineTo(size.width * 0.6380286, size.height * 0.5134857);
    path_4.cubicTo(
        size.width * 0.6419071,
        size.height * 0.5120321,
        size.width * 0.6438750,
        size.height * 0.5077107,
        size.width * 0.6424214,
        size.height * 0.5038321);
    path_4.lineTo(size.width * 0.6421321, size.height * 0.5030500);
    path_4.cubicTo(
        size.width * 0.6406786,
        size.height * 0.4991714,
        size.width * 0.6363571,
        size.height * 0.4972036,
        size.width * 0.6324786,
        size.height * 0.4986571);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7009143, size.height * 0.4056607);
    path_5.lineTo(size.width * 0.6408393, size.height * 0.4281429);
    path_5.cubicTo(
        size.width * 0.6330786,
        size.height * 0.4310464,
        size.width * 0.6291429,
        size.height * 0.4396929,
        size.width * 0.6320464,
        size.height * 0.4474500);
    path_5.lineTo(size.width * 0.6525571, size.height * 0.5022536);
    path_5.cubicTo(
        size.width * 0.6554607,
        size.height * 0.5100107,
        size.width * 0.6641071,
        size.height * 0.5139464,
        size.width * 0.6718643,
        size.height * 0.5110429);
    path_5.lineTo(size.width * 0.7319393, size.height * 0.4885607);
    path_5.cubicTo(
        size.width * 0.7397000,
        size.height * 0.4856571,
        size.width * 0.7436357,
        size.height * 0.4770143,
        size.width * 0.7407321,
        size.height * 0.4692536);
    path_5.lineTo(size.width * 0.7202214, size.height * 0.4144500);
    path_5.cubicTo(
        size.width * 0.7173179,
        size.height * 0.4066929,
        size.width * 0.7086714,
        size.height * 0.4027571,
        size.width * 0.7009143,
        size.height * 0.4056607);
    path_5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xffBBB3EB).withOpacity(1.0);
    canvas.drawPath(path_5, paint5Fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6470429, size.height * 0.4200357);
    path_6.lineTo(size.width * 0.5869679, size.height * 0.4425214);
    path_6.cubicTo(
        size.width * 0.5792071,
        size.height * 0.4454250,
        size.width * 0.5752714,
        size.height * 0.4540679,
        size.width * 0.5781750,
        size.height * 0.4618286);
    path_6.lineTo(size.width * 0.6026464, size.height * 0.5272107);
    path_6.cubicTo(
        size.width * 0.6055500,
        size.height * 0.5349679,
        size.width * 0.6141929,
        size.height * 0.5389036,
        size.width * 0.6219536,
        size.height * 0.5360000);
    path_6.lineTo(size.width * 0.6820286, size.height * 0.5135179);
    path_6.cubicTo(
        size.width * 0.6897857,
        size.height * 0.5106143,
        size.width * 0.6937214,
        size.height * 0.5019679,
        size.width * 0.6908179,
        size.height * 0.4942107);
    path_6.lineTo(size.width * 0.6663500, size.height * 0.4288286);
    path_6.cubicTo(
        size.width * 0.6634464,
        size.height * 0.4210679,
        size.width * 0.6548000,
        size.height * 0.4171321,
        size.width * 0.6470429,
        size.height * 0.4200357);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffBBB3EB).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.6564464, size.height * 0.4067679);
    path_7.lineTo(size.width * 0.6559750, size.height * 0.4069429);
    path_7.cubicTo(
        size.width * 0.6508036,
        size.height * 0.4088786,
        size.width * 0.6481786,
        size.height * 0.4146429,
        size.width * 0.6501143,
        size.height * 0.4198143);
    path_7.lineTo(size.width * 0.6843964, size.height * 0.5114107);
    path_7.cubicTo(
        size.width * 0.6863321,
        size.height * 0.5165821,
        size.width * 0.6920929,
        size.height * 0.5192071,
        size.width * 0.6972679,
        size.height * 0.5172714);
    path_7.lineTo(size.width * 0.6977393, size.height * 0.5170929);
    path_7.cubicTo(
        size.width * 0.7029107,
        size.height * 0.5151571,
        size.width * 0.7055321,
        size.height * 0.5093964,
        size.width * 0.7035964,
        size.height * 0.5042250);
    path_7.lineTo(size.width * 0.6693179, size.height * 0.4126286);
    path_7.cubicTo(
        size.width * 0.6673821,
        size.height * 0.4074571,
        size.width * 0.6616179,
        size.height * 0.4048321,
        size.width * 0.6564464,
        size.height * 0.4067679);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.04386429, size.height * 0.4653286);
    path_8.cubicTo(
        size.width * 0.04386429,
        size.height * 0.4653286,
        size.width * 0.1645182,
        size.height * 0.4314214,
        size.width * 0.1470011,
        size.height * 0.5095429);
    path_8.cubicTo(
        size.width * 0.1439593,
        size.height * 0.5219036,
        size.width * 0.1001696,
        size.height * 0.5855464,
        size.width * 0.1523296,
        size.height * 0.6161036);
    path_8.cubicTo(
        size.width * 0.1635296,
        size.height * 0.6226643,
        size.width * 0.1764546,
        size.height * 0.6255714,
        size.width * 0.1894343,
        size.height * 0.6255036);
    path_8.cubicTo(
        size.width * 0.2127057,
        size.height * 0.6253821,
        size.width * 0.2495982,
        size.height * 0.6209036,
        size.width * 0.2661718,
        size.height * 0.6040357);
    path_8.cubicTo(
        size.width * 0.2883836,
        size.height * 0.5814250,
        size.width * 0.2641175,
        size.height * 0.5921464,
        size.width * 0.2641175,
        size.height * 0.5921464);
    path_8.cubicTo(
        size.width * 0.2641175,
        size.height * 0.5921464,
        size.width * 0.1948243,
        size.height * 0.6206500,
        size.width * 0.1591750,
        size.height * 0.5979286);
    path_8.cubicTo(
        size.width * 0.1470025,
        size.height * 0.5901714,
        size.width * 0.1414850,
        size.height * 0.5751500,
        size.width * 0.1447907,
        size.height * 0.5610964);
    path_8.cubicTo(
        size.width * 0.1464800,
        size.height * 0.5541179,
        size.width * 0.1490529,
        size.height * 0.5473821,
        size.width * 0.1524468,
        size.height * 0.5410536);
    path_8.cubicTo(
        size.width * 0.1601996,
        size.height * 0.5265321,
        size.width * 0.1956325,
        size.height * 0.4603250,
        size.width * 0.1180325,
        size.height * 0.4410857);
    path_8.cubicTo(
        size.width * 0.1001568,
        size.height * 0.4368286,
        size.width * 0.07419321,
        size.height * 0.4330071,
        size.width * 0.04071571,
        size.height * 0.4471000);
    path_8.cubicTo(
        size.width * 0.007238107,
        size.height * 0.4611964,
        size.width * 0.04386429,
        size.height * 0.4653286,
        size.width * 0.04386429,
        size.height * 0.4653286);
    path_8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xffD1CCF2).withOpacity(1.0);
    canvas.drawPath(path_8, paint8Fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.2823946, size.height * 0.5746643);
    path_9.lineTo(size.width * 0.2599189, size.height * 0.5830786);
    path_9.cubicTo(
        size.width * 0.2521604,
        size.height * 0.5859821,
        size.width * 0.2482246,
        size.height * 0.5946250,
        size.width * 0.2511282,
        size.height * 0.6023821);
    path_9.lineTo(size.width * 0.2522425, size.height * 0.6053607);
    path_9.cubicTo(
        size.width * 0.2551461,
        size.height * 0.6131179,
        size.width * 0.2637900,
        size.height * 0.6170536,
        size.width * 0.2715486,
        size.height * 0.6141500);
    path_9.lineTo(size.width * 0.2940243, size.height * 0.6057393);
    path_9.cubicTo(
        size.width * 0.3017832,
        size.height * 0.6028357,
        size.width * 0.3057189,
        size.height * 0.5941929,
        size.width * 0.3028150,
        size.height * 0.5864321);
    path_9.lineTo(size.width * 0.3017007, size.height * 0.5834571);
    path_9.cubicTo(
        size.width * 0.2987971,
        size.height * 0.5756964,
        size.width * 0.2901536,
        size.height * 0.5717607,
        size.width * 0.2823946,
        size.height * 0.5746643);
    path_9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_9, paint9Fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.3203707, size.height * 0.5376857);
    path_10.lineTo(size.width * 0.2870604, size.height * 0.5501536);
    path_10.cubicTo(
        size.width * 0.2793018,
        size.height * 0.5530571,
        size.width * 0.2753661,
        size.height * 0.5617000,
        size.width * 0.2782696,
        size.height * 0.5694607);
    path_10.lineTo(size.width * 0.2943318, size.height * 0.6123750);
    path_10.cubicTo(
        size.width * 0.2972357,
        size.height * 0.6201357,
        size.width * 0.3058793,
        size.height * 0.6240714,
        size.width * 0.3136379,
        size.height * 0.6211679);
    path_10.lineTo(size.width * 0.3469486, size.height * 0.6087000);
    path_10.cubicTo(
        size.width * 0.3547071,
        size.height * 0.6057964,
        size.width * 0.3586429,
        size.height * 0.5971536,
        size.width * 0.3557389,
        size.height * 0.5893929);
    path_10.lineTo(size.width * 0.3396768, size.height * 0.5464750);
    path_10.cubicTo(
        size.width * 0.3367732,
        size.height * 0.5387179,
        size.width * 0.3281293,
        size.height * 0.5347821,
        size.width * 0.3203707,
        size.height * 0.5376857);
    path_10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xffBBB3EB).withOpacity(1.0);
    canvas.drawPath(path_10, paint10Fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.3758214, size.height * 0.5046429);
    path_11.lineTo(size.width * 0.3261471, size.height * 0.5232357);
    path_11.cubicTo(
        size.width * 0.3183886,
        size.height * 0.5261393,
        size.width * 0.3144529,
        size.height * 0.5347821,
        size.width * 0.3173568,
        size.height * 0.5425429);
    path_11.lineTo(size.width * 0.3418271, size.height * 0.6079250);
    path_11.cubicTo(
        size.width * 0.3447311,
        size.height * 0.6156857,
        size.width * 0.3533746,
        size.height * 0.6196214,
        size.width * 0.3611321,
        size.height * 0.6167143);
    path_11.lineTo(size.width * 0.4108071, size.height * 0.5981250);
    path_11.cubicTo(
        size.width * 0.4185679,
        size.height * 0.5952214,
        size.width * 0.4225036,
        size.height * 0.5865786,
        size.width * 0.4196000,
        size.height * 0.5788179);
    path_11.lineTo(size.width * 0.3951286, size.height * 0.5134357);
    path_11.cubicTo(
        size.width * 0.3922250,
        size.height * 0.5056750,
        size.width * 0.3835821,
        size.height * 0.5017393,
        size.width * 0.3758214,
        size.height * 0.5046429);
    path_11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xffBBB3EB).withOpacity(1.0);
    canvas.drawPath(path_11, paint11Fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.3863464, size.height * 0.4911036);
    path_12.lineTo(size.width * 0.3858750, size.height * 0.4912786);
    path_12.cubicTo(
        size.width * 0.3807036,
        size.height * 0.4932143,
        size.width * 0.3780786,
        size.height * 0.4989786,
        size.width * 0.3800143,
        size.height * 0.5041500);
    path_12.lineTo(size.width * 0.4142964, size.height * 0.5957464);
    path_12.cubicTo(
        size.width * 0.4162321,
        size.height * 0.6009179,
        size.width * 0.4219929,
        size.height * 0.6035429,
        size.width * 0.4271679,
        size.height * 0.6016071);
    path_12.lineTo(size.width * 0.4276393, size.height * 0.6014286);
    path_12.cubicTo(
        size.width * 0.4328107,
        size.height * 0.5994929,
        size.width * 0.4354357,
        size.height * 0.5937321,
        size.width * 0.4335000,
        size.height * 0.5885571);
    path_12.lineTo(size.width * 0.3992179, size.height * 0.4969643);
    path_12.cubicTo(
        size.width * 0.3972821,
        size.height * 0.4917929,
        size.width * 0.3915179,
        size.height * 0.4891679,
        size.width * 0.3863464,
        size.height * 0.4911036);
    path_12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xff6C5AD4).withOpacity(1.0);
    canvas.drawPath(path_12, paint12Fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.5131964, size.height * 0.4327500);
    path_13.cubicTo(
        size.width * 0.5114071,
        size.height * 0.4325500,
        size.width * 0.5097679,
        size.height * 0.4316679,
        size.width * 0.5086179,
        size.height * 0.4302821);
    path_13.cubicTo(
        size.width * 0.5074679,
        size.height * 0.4288964,
        size.width * 0.5069000,
        size.height * 0.4271214,
        size.width * 0.5070321,
        size.height * 0.4253250);
    path_13.lineTo(size.width * 0.5107393, size.height * 0.3576250);
    path_13.cubicTo(
        size.width * 0.5109607,
        size.height * 0.3535811,
        size.width * 0.5143750,
        size.height * 0.3505086,
        size.width * 0.5182500,
        size.height * 0.3508661);
    path_13.lineTo(size.width * 0.5236500, size.height * 0.3513661);
    path_13.cubicTo(
        size.width * 0.5275250,
        size.height * 0.3517236,
        size.width * 0.5303000,
        size.height * 0.3553661,
        size.width * 0.5297607,
        size.height * 0.3593821);
    path_13.lineTo(size.width * 0.5206500, size.height * 0.4265821);
    path_13.cubicTo(
        size.width * 0.5204429,
        size.height * 0.4283714,
        size.width * 0.5195500,
        size.height * 0.4300107,
        size.width * 0.5181607,
        size.height * 0.4311607);
    path_13.cubicTo(
        size.width * 0.5167714,
        size.height * 0.4323107,
        size.width * 0.5149964,
        size.height * 0.4328786,
        size.width * 0.5131964,
        size.height * 0.4327500);
    path_13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_13, paint13Fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.4811893, size.height * 0.4385857);
    path_14.cubicTo(
        size.width * 0.4806357,
        size.height * 0.4387500,
        size.width * 0.4800500,
        size.height * 0.4388036,
        size.width * 0.4794750,
        size.height * 0.4387429);
    path_14.cubicTo(
        size.width * 0.4788964,
        size.height * 0.4386786,
        size.width * 0.4783393,
        size.height * 0.4385036,
        size.width * 0.4778286,
        size.height * 0.4382250);
    path_14.cubicTo(
        size.width * 0.4773214,
        size.height * 0.4379500,
        size.width * 0.4768714,
        size.height * 0.4375750,
        size.width * 0.4765071,
        size.height * 0.4371214);
    path_14.cubicTo(
        size.width * 0.4761429,
        size.height * 0.4366714,
        size.width * 0.4758714,
        size.height * 0.4361500,
        size.width * 0.4757107,
        size.height * 0.4355964);
    path_14.lineTo(size.width * 0.4624750, size.height * 0.3934821);
    path_14.cubicTo(
        size.width * 0.4620893,
        size.height * 0.3922857,
        size.width * 0.4621929,
        size.height * 0.3909821,
        size.width * 0.4627679,
        size.height * 0.3898643);
    path_14.cubicTo(
        size.width * 0.4633429,
        size.height * 0.3887429,
        size.width * 0.4643357,
        size.height * 0.3878964,
        size.width * 0.4655321,
        size.height * 0.3875107);
    path_14.lineTo(size.width * 0.4689607, size.height * 0.3864750);
    path_14.cubicTo(
        size.width * 0.4695464,
        size.height * 0.3863036,
        size.width * 0.4701643,
        size.height * 0.3862571,
        size.width * 0.4707714,
        size.height * 0.3863357);
    path_14.cubicTo(
        size.width * 0.4713786,
        size.height * 0.3864143,
        size.width * 0.4719643,
        size.height * 0.3866179,
        size.width * 0.4724893,
        size.height * 0.3869357);
    path_14.cubicTo(
        size.width * 0.4730143,
        size.height * 0.3872500,
        size.width * 0.4734679,
        size.height * 0.3876714,
        size.width * 0.4738179,
        size.height * 0.3881714);
    path_14.cubicTo(
        size.width * 0.4741714,
        size.height * 0.3886714,
        size.width * 0.4744179,
        size.height * 0.3892393,
        size.width * 0.4745429,
        size.height * 0.3898393);
    path_14.lineTo(size.width * 0.4843500, size.height * 0.4329893);
    path_14.cubicTo(
        size.width * 0.4846250,
        size.height * 0.4341464,
        size.width * 0.4844500,
        size.height * 0.4353679,
        size.width * 0.4838643,
        size.height * 0.4364071);
    path_14.cubicTo(
        size.width * 0.4832786,
        size.height * 0.4374429,
        size.width * 0.4823250,
        size.height * 0.4382214,
        size.width * 0.4811893,
        size.height * 0.4385857);
    path_14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_14, paint14Fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.4633321, size.height * 0.4628714);
    path_15.cubicTo(
        size.width * 0.4609607,
        size.height * 0.4658107,
        size.width * 0.4561893,
        size.height * 0.4657750,
        size.width * 0.4525179,
        size.height * 0.4627929);
    path_15.lineTo(size.width * 0.3873321, size.height * 0.4098321);
    path_15.cubicTo(
        size.width * 0.3834393,
        size.height * 0.4066679,
        size.width * 0.3822893,
        size.height * 0.4014321,
        size.width * 0.3848071,
        size.height * 0.3983179);
    path_15.lineTo(size.width * 0.3883143, size.height * 0.3939750);
    path_15.cubicTo(
        size.width * 0.3908286,
        size.height * 0.3908571,
        size.width * 0.3959964,
        size.height * 0.3911143,
        size.width * 0.3996821,
        size.height * 0.3945357);
    path_15.lineTo(size.width * 0.4613607, size.height * 0.4518393);
    path_15.cubicTo(
        size.width * 0.4648321,
        size.height * 0.4550679,
        size.width * 0.4657036,
        size.height * 0.4599357,
        size.width * 0.4633321,
        size.height * 0.4628714);
    path_15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_15, paint15Fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.4934643, size.height * 0.5996643);
    path_16.cubicTo(
        size.width * 0.4951429,
        size.height * 0.6003143,
        size.width * 0.4965036,
        size.height * 0.6015893,
        size.width * 0.4972607,
        size.height * 0.6032214);
    path_16.cubicTo(
        size.width * 0.4980179,
        size.height * 0.6048536,
        size.width * 0.4981143,
        size.height * 0.6067179,
        size.width * 0.4975250,
        size.height * 0.6084179);
    path_16.lineTo(size.width * 0.4766536, size.height * 0.6729250);
    path_16.cubicTo(
        size.width * 0.4754071,
        size.height * 0.6767786,
        size.width * 0.4713179,
        size.height * 0.6788750,
        size.width * 0.4676643,
        size.height * 0.6775393);
    path_16.lineTo(size.width * 0.4625679, size.height * 0.6756786);
    path_16.cubicTo(
        size.width * 0.4589143,
        size.height * 0.6743429,
        size.width * 0.4571571,
        size.height * 0.6701107,
        size.width * 0.4587107,
        size.height * 0.6663714);
    path_16.lineTo(size.width * 0.4846786, size.height * 0.6037250);
    path_16.cubicTo(
        size.width * 0.4853357,
        size.height * 0.6020464,
        size.width * 0.4866179,
        size.height * 0.6006893,
        size.width * 0.4882536,
        size.height * 0.5999321);
    path_16.cubicTo(
        size.width * 0.4898929,
        size.height * 0.5991750,
        size.width * 0.4917571,
        size.height * 0.5990786,
        size.width * 0.4934643,
        size.height * 0.5996643);
    path_16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_16, paint16Fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.5258929, size.height * 0.6021964);
    path_17.cubicTo(
        size.width * 0.5264750,
        size.height * 0.6021786,
        size.width * 0.5270500,
        size.height * 0.6022786,
        size.width * 0.5275929,
        size.height * 0.6024857);
    path_17.cubicTo(
        size.width * 0.5281357,
        size.height * 0.6026929,
        size.width * 0.5286286,
        size.height * 0.6030036,
        size.width * 0.5290500,
        size.height * 0.6034036);
    path_17.cubicTo(
        size.width * 0.5294714,
        size.height * 0.6038000,
        size.width * 0.5298107,
        size.height * 0.6042786,
        size.width * 0.5300464,
        size.height * 0.6048071);
    path_17.cubicTo(
        size.width * 0.5302857,
        size.height * 0.6053357,
        size.width * 0.5304143,
        size.height * 0.6059071,
        size.width * 0.5304321,
        size.height * 0.6064893);
    path_17.lineTo(size.width * 0.5324714, size.height * 0.6505857);
    path_17.cubicTo(
        size.width * 0.5325393,
        size.height * 0.6518429,
        size.width * 0.5321036,
        size.height * 0.6530714,
        size.width * 0.5312643,
        size.height * 0.6540071);
    path_17.cubicTo(
        size.width * 0.5304214,
        size.height * 0.6549464,
        size.width * 0.5292464,
        size.height * 0.6555107,
        size.width * 0.5279893,
        size.height * 0.6555786);
    path_17.lineTo(size.width * 0.5244107, size.height * 0.6557036);
    path_17.cubicTo(
        size.width * 0.5238000,
        size.height * 0.6557179,
        size.width * 0.5231893,
        size.height * 0.6556071,
        size.width * 0.5226214,
        size.height * 0.6553750);
    path_17.cubicTo(
        size.width * 0.5220571,
        size.height * 0.6551429,
        size.width * 0.5215429,
        size.height * 0.6547964,
        size.width * 0.5211179,
        size.height * 0.6543571);
    path_17.cubicTo(
        size.width * 0.5206893,
        size.height * 0.6539179,
        size.width * 0.5203607,
        size.height * 0.6533964,
        size.width * 0.5201464,
        size.height * 0.6528214);
    path_17.cubicTo(
        size.width * 0.5199321,
        size.height * 0.6522464,
        size.width * 0.5198393,
        size.height * 0.6516357,
        size.width * 0.5198714,
        size.height * 0.6510250);
    path_17.lineTo(size.width * 0.5214107, size.height * 0.6068036);
    path_17.cubicTo(
        size.width * 0.5214429,
        size.height * 0.6056107,
        size.width * 0.5219214,
        size.height * 0.6044750,
        size.width * 0.5227500,
        size.height * 0.6036214);
    path_17.cubicTo(
        size.width * 0.5235821,
        size.height * 0.6027679,
        size.width * 0.5247036,
        size.height * 0.6022607,
        size.width * 0.5258929,
        size.height * 0.6021964);
    path_17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_17, paint17Fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.5493643, size.height * 0.5832750);
    path_18.cubicTo(
        size.width * 0.5524071,
        size.height * 0.5810393,
        size.width * 0.5570107,
        size.height * 0.5822929,
        size.width * 0.5598000,
        size.height * 0.5861143);
    path_18.lineTo(size.width * 0.6092964, size.height * 0.6539643);
    path_18.cubicTo(
        size.width * 0.6122536,
        size.height * 0.6580179,
        size.width * 0.6120286,
        size.height * 0.6633714,
        size.width * 0.6087964,
        size.height * 0.6657429);
    path_18.lineTo(size.width * 0.6042964, size.height * 0.6690464);
    path_18.cubicTo(
        size.width * 0.6010679,
        size.height * 0.6714179,
        size.width * 0.5961357,
        size.height * 0.6698500,
        size.width * 0.5934500,
        size.height * 0.6656000);
    path_18.lineTo(size.width * 0.5484500, size.height * 0.5944429);
    path_18.cubicTo(
        size.width * 0.5459179,
        size.height * 0.5904393,
        size.width * 0.5463214,
        size.height * 0.5855107,
        size.width * 0.5493643,
        size.height * 0.5832750);
    path_18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xffF0EFFB).withOpacity(1.0);
    canvas.drawPath(path_18, paint18Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
