import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/data_provider.dart';

class BackButtonShape extends StatelessWidget {
  final double width;

  const BackButtonShape({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: CustomPaint(
        size: Size(width, (width * 1).toDouble()),
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03947368;
    paint0Stroke.color = const Color(0xffD1CCF2).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.01973684, size.height * 0.01973684,
                size.width * 0.9605263, size.height * 0.9605263),
            bottomRight: Radius.circular(size.width * 0.4802632),
            bottomLeft: Radius.circular(size.width * 0.4802632),
            topLeft: Radius.circular(size.width * 0.4802632),
            topRight: Radius.circular(size.width * 0.4802632)),
        paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0x00000000).withOpacity(0.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.01973684, size.height * 0.01973684,
                size.width * 0.9605263, size.height * 0.9605263),
            bottomRight: Radius.circular(size.width * 0.4802632),
            bottomLeft: Radius.circular(size.width * 0.4802632),
            topLeft: Radius.circular(size.width * 0.4802632),
            topRight: Radius.circular(size.width * 0.4802632)),
        paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5657895, size.height * 0.6535053);
    path_1.lineTo(size.width * 0.4122816, size.height * 0.4999947);
    path_1.lineTo(size.width * 0.5657895, size.height * 0.3464868);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03947368;
    paint1Stroke.color = const Color(0xffD1CCF2).withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(0.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
