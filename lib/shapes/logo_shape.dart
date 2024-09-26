import 'package:flutter/material.dart';

class LogoShape extends StatelessWidget {
  final double width;
  final Color color;

  const LogoShape(
      {super.key, required this.width, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width * 1).toDouble()),
      painter: RPSCustomPainter(color: color),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Color color;

  RPSCustomPainter({super.repaint, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8185352, size.height);
    path_0.lineTo(size.width * 0.1814648, size.height);
    path_0.arcToPoint(Offset(0, size.height * 0.8185547),
        radius:
            Radius.elliptical(size.width * 0.1816406, size.height * 0.1816406),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(0, size.height * 0.1814648);
    path_0.arcToPoint(Offset(size.width * 0.1814648, 0),
        radius:
            Radius.elliptical(size.width * 0.1816406, size.height * 0.1816406),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8185352, 0);
    path_0.arcToPoint(Offset(size.width, size.height * 0.1814648),
        radius:
            Radius.elliptical(size.width * 0.1816406, size.height * 0.1816406),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width, size.height * 0.8185547);
    path_0.arcToPoint(Offset(size.width * 0.8185352, size.height),
        radius:
            Radius.elliptical(size.width * 0.1816406, size.height * 0.1816406),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.1814648, size.height * 0.02472656);
    path_0.arcToPoint(Offset(size.width * 0.02472656, size.height * 0.1814648),
        radius:
            Radius.elliptical(size.width * 0.1569141, size.height * 0.1569141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.02472656, size.height * 0.8185547);
    path_0.arcToPoint(Offset(size.width * 0.1814648, size.height * 0.9752734),
        radius:
            Radius.elliptical(size.width * 0.1569141, size.height * 0.1569141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8185352, size.height * 0.9752734);
    path_0.arcToPoint(Offset(size.width * 0.9752734, size.height * 0.8185547),
        radius:
            Radius.elliptical(size.width * 0.1569141, size.height * 0.1569141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.9752734, size.height * 0.1814648);
    path_0.arcToPoint(Offset(size.width * 0.8185352, size.height * 0.02472656),
        radius:
            Radius.elliptical(size.width * 0.1569141, size.height * 0.1569141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5880469, size.height * 0.5163281);
    path_1.lineTo(size.width * 0.5465234, size.height * 0.5474805);
    path_1.lineTo(size.width * 0.4623437, size.height * 0.6106641);
    path_1.lineTo(size.width * 0.4602344, size.height * 0.6121484);
    path_1.arcToPoint(Offset(size.width * 0.2572461, size.height * 0.3415430),
        radius:
            Radius.elliptical(size.width * 0.1691406, size.height * 0.1691406),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path_1.lineTo(size.width * 0.3828125, size.height * 0.2473438);
    path_1.lineTo(size.width * 0.3263477, size.height * 0.1720508);
    path_1.lineTo(size.width * 0.2008789, size.height * 0.2662500);
    path_1.arcToPoint(Offset(size.width * 0.1481445, size.height * 0.6346289),
        radius:
            Radius.elliptical(size.width * 0.2632422, size.height * 0.2632422),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.cubicTo(
        size.width * 0.2262695,
        size.height * 0.7389648,
        size.width * 0.3675586,
        size.height * 0.7686328,
        size.width * 0.4795703,
        size.height * 0.7104102);
    path_1.arcToPoint(Offset(size.width * 0.5166016, size.height * 0.6873047),
        radius:
            Radius.elliptical(size.width * 0.2494922, size.height * 0.2494922),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.lineTo(size.width * 0.5645703, size.height * 0.6513281);
    path_1.lineTo(size.width * 0.6828711, size.height * 0.5626953);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8396094, size.height * 0.4893945);
    path_2.lineTo(size.width * 0.4040625, size.height * 0.2756445);
    path_2.lineTo(size.width * 0.4624219, size.height * 0.6106641);
    path_2.lineTo(size.width * 0.4797266, size.height * 0.7104102);
    path_2.lineTo(size.width * 0.4872656, size.height * 0.7536914);
    path_2.lineTo(size.width * 0.5050586, size.height * 0.8577734);
    path_2.lineTo(size.width * 0.5893750, size.height * 0.7945898);
    path_2.lineTo(size.width * 0.5714453, size.height * 0.6906445);
    path_2.lineTo(size.width * 0.5646484, size.height * 0.6513281);
    path_2.lineTo(size.width * 0.5466016, size.height * 0.5474805);
    path_2.lineTo(size.width * 0.5281836, size.height * 0.4410547);
    path_2.lineTo(size.width * 0.5984961, size.height * 0.4755469);
    path_2.lineTo(size.width * 0.7554883, size.height * 0.5525586);
    path_2.lineTo(size.width * 0.8004102, size.height * 0.5744336);
    path_2.lineTo(size.width * 0.8504687, size.height * 0.5989062);
    path_2.lineTo(size.width * 0.9346484, size.height * 0.5357422);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
