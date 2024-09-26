import 'package:flutter/material.dart';

class BannerShape extends StatelessWidget {
  final double width;
  final Color color;

  const BannerShape({super.key, required this.width, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (width * 0.38060000000000005).toDouble()),
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
    path_0.moveTo(size.width * 0.3842200, size.height * 0.7142932);
    path_0.lineTo(size.width * 0.4023400, size.height * 0.7142932);
    path_0.lineTo(size.width * 0.4348000, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.4198200, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.4125600, size.height * 0.8913820);
    path_0.lineTo(size.width * 0.3737400, size.height * 0.8913820);
    path_0.lineTo(size.width * 0.3665000, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.3515200, size.height * 0.9439306);
    path_0.close();
    path_0.moveTo(size.width * 0.4077000, size.height * 0.8565423);
    path_0.lineTo(size.width * 0.3932200, size.height * 0.7509196);
    path_0.lineTo(size.width * 0.3786200, size.height * 0.8565423);
    path_0.close();
    path_0.moveTo(size.width * 0.5212600, size.height * 0.8048870);
    path_0.lineTo(size.width * 0.5074000, size.height * 0.8250131);
    path_0.arcToPoint(Offset(size.width * 0.4996800, size.height * 0.8100893),
        radius: Radius.elliptical(
            size.width * 0.02362000, size.height * 0.06205991),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4907400, size.height * 0.8059380),
        radius: Radius.elliptical(
            size.width * 0.02324000, size.height * 0.06106148),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4756200, size.height * 0.8205465),
        radius: Radius.elliptical(
            size.width * 0.02088000, size.height * 0.05486075),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4698600, size.height * 0.8580662),
        radius: Radius.elliptical(
            size.width * 0.01902000, size.height * 0.04997373),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4754200, size.height * 0.8943773),
        radius: Radius.elliptical(
            size.width * 0.01828000, size.height * 0.04802943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4900000, size.height * 0.9084603),
        radius: Radius.elliptical(
            size.width * 0.02000000, size.height * 0.05254861),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5074000, size.height * 0.8884393),
        radius: Radius.elliptical(
            size.width * 0.02124000, size.height * 0.05580662),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.5205200, size.height * 0.9120336);
    path_0.quadraticBezierTo(size.width * 0.5098400, size.height * 0.9485024,
        size.width * 0.4904000, size.height * 0.9485024);
    path_0.quadraticBezierTo(size.width * 0.4729200, size.height * 0.9485024,
        size.width * 0.4630000, size.height * 0.9212822);
    path_0.arcToPoint(Offset(size.width * 0.4713600, size.height * 0.7774041),
        radius: Radius.elliptical(
            size.width * 0.03446000, size.height * 0.09054125),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4906400, size.height * 0.7652654),
        radius:
            Radius.elliptical(size.width * 0.04016000, size.height * 0.1055176),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5084000, size.height * 0.7757751),
        radius:
            Radius.elliptical(size.width * 0.03922000, size.height * 0.1030478),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5212600, size.height * 0.8048870),
        radius: Radius.elliptical(
            size.width * 0.03372000, size.height * 0.08859695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.6006400, size.height * 0.9245402);
    path_0.arcToPoint(Offset(size.width * 0.5904000, size.height * 0.9419338),
        radius: Radius.elliptical(
            size.width * 0.03146000, size.height * 0.08265896),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5777800, size.height * 0.9481871),
        radius: Radius.elliptical(
            size.width * 0.03342000, size.height * 0.08780872),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5475600, size.height * 0.9017341),
        radius: Radius.elliptical(
            size.width * 0.03374000, size.height * 0.08864950),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5475600, size.height * 0.8071466),
        radius:
            Radius.elliptical(size.width * 0.03842000, size.height * 0.1009459),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5600000, size.height * 0.7729900),
        radius: Radius.elliptical(
            size.width * 0.03368000, size.height * 0.08849185),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5778000, size.height * 0.7605360),
        radius: Radius.elliptical(
            size.width * 0.03400000, size.height * 0.08933263),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5904200, size.height * 0.7667367),
        radius: Radius.elliptical(
            size.width * 0.03340000, size.height * 0.08775617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6006600, size.height * 0.7841303),
        radius: Radius.elliptical(
            size.width * 0.03180000, size.height * 0.08355229),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.6006600, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.6145200, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.6145200, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.6006600, size.height * 0.9439306);
    path_0.close();
    path_0.moveTo(size.width * 0.5900000, size.height * 0.9060431);
    path_0.arcToPoint(Offset(size.width * 0.5978000, size.height * 0.8850236),
        radius: Radius.elliptical(
            size.width * 0.02142000, size.height * 0.05627956),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5978000, size.height * 0.8239622),
        radius: Radius.elliptical(
            size.width * 0.02488000, size.height * 0.06537047),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5900000, size.height * 0.8029427),
        radius: Radius.elliptical(
            size.width * 0.02150000, size.height * 0.05648975),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5789400, size.height * 0.7952181),
        radius: Radius.elliptical(
            size.width * 0.02122000, size.height * 0.05575407),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5677800, size.height * 0.8029427),
        radius: Radius.elliptical(
            size.width * 0.02174000, size.height * 0.05712034),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5597800, size.height * 0.8239622),
        radius: Radius.elliptical(
            size.width * 0.02114000, size.height * 0.05554388),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5597800, size.height * 0.8850236),
        radius: Radius.elliptical(
            size.width * 0.02504000, size.height * 0.06579086),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5677800, size.height * 0.9060431),
        radius: Radius.elliptical(
            size.width * 0.02106000, size.height * 0.05533368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5789400, size.height * 0.9137152),
        radius: Radius.elliptical(
            size.width * 0.02200000, size.height * 0.05780347),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5900000, size.height * 0.9060431),
        radius: Radius.elliptical(
            size.width * 0.02140000, size.height * 0.05622701),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.6940000, size.height * 0.9245402);
    path_0.arcToPoint(Offset(size.width * 0.6837600, size.height * 0.9419338),
        radius: Radius.elliptical(
            size.width * 0.03146000, size.height * 0.08265896),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6711400, size.height * 0.9481871),
        radius: Radius.elliptical(
            size.width * 0.03342000, size.height * 0.08780872),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6409200, size.height * 0.9017341),
        radius: Radius.elliptical(
            size.width * 0.03374000, size.height * 0.08864950),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6409200, size.height * 0.8071466),
        radius:
            Radius.elliptical(size.width * 0.03842000, size.height * 0.1009459),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6533400, size.height * 0.7732002),
        radius: Radius.elliptical(
            size.width * 0.03368000, size.height * 0.08849185),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6711400, size.height * 0.7607462),
        radius: Radius.elliptical(
            size.width * 0.03400000, size.height * 0.08933263),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6837600, size.height * 0.7669469),
        radius: Radius.elliptical(
            size.width * 0.03340000, size.height * 0.08775617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6940000, size.height * 0.7843405),
        radius: Radius.elliptical(
            size.width * 0.03180000, size.height * 0.08355229),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.6940000, size.height * 0.7017867);
    path_0.lineTo(size.width * 0.7077200, size.height * 0.7017867);
    path_0.lineTo(size.width * 0.7077200, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.6940000, size.height * 0.9439306);
    path_0.close();
    path_0.moveTo(size.width * 0.6833200, size.height * 0.9060431);
    path_0.arcToPoint(Offset(size.width * 0.6911200, size.height * 0.8850236),
        radius: Radius.elliptical(
            size.width * 0.02142000, size.height * 0.05627956),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6911200, size.height * 0.8239622),
        radius: Radius.elliptical(
            size.width * 0.02488000, size.height * 0.06537047),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6833200, size.height * 0.8029427),
        radius: Radius.elliptical(
            size.width * 0.02150000, size.height * 0.05648975),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6722600, size.height * 0.7952181),
        radius: Radius.elliptical(
            size.width * 0.02122000, size.height * 0.05575407),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6611000, size.height * 0.8029427),
        radius: Radius.elliptical(
            size.width * 0.02174000, size.height * 0.05712034),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6531000, size.height * 0.8239622),
        radius: Radius.elliptical(
            size.width * 0.02114000, size.height * 0.05554388),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6531000, size.height * 0.8850236),
        radius: Radius.elliptical(
            size.width * 0.02488000, size.height * 0.06537047),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6611000, size.height * 0.9060431),
        radius: Radius.elliptical(
            size.width * 0.02106000, size.height * 0.05533368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6722600, size.height * 0.9137152),
        radius: Radius.elliptical(
            size.width * 0.02200000, size.height * 0.05780347),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.6833600, size.height * 0.9060431),
        radius: Radius.elliptical(
            size.width * 0.02140000, size.height * 0.05622701),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.7474800, size.height * 0.9357331);
    path_0.arcToPoint(Offset(size.width * 0.7344800, size.height * 0.9017341),
        radius: Radius.elliptical(
            size.width * 0.03480000, size.height * 0.09143458),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7344800, size.height * 0.8071466),
        radius: Radius.elliptical(
            size.width * 0.03670000, size.height * 0.09642669),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7474800, size.height * 0.7732002),
        radius: Radius.elliptical(
            size.width * 0.03474000, size.height * 0.09127693),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7655800, size.height * 0.7607462),
        radius: Radius.elliptical(
            size.width * 0.03560000, size.height * 0.09353652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7829400, size.height * 0.7732002),
        radius: Radius.elliptical(
            size.width * 0.03306000, size.height * 0.08686285),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7953600, size.height * 0.8071466),
        radius: Radius.elliptical(
            size.width * 0.03426000, size.height * 0.09001576),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7999200, size.height * 0.8544404),
        radius: Radius.elliptical(
            size.width * 0.03642000, size.height * 0.09569101),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7991800, size.height * 0.8712034),
        radius: Radius.elliptical(
            size.width * 0.02964000, size.height * 0.07787704),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.7444800, size.height * 0.8712034);
    path_0.arcToPoint(Offset(size.width * 0.7521600, size.height * 0.9019968),
        radius: Radius.elliptical(
            size.width * 0.02094000, size.height * 0.05501839),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7655800, size.height * 0.9138203),
        radius: Radius.elliptical(
            size.width * 0.02126000, size.height * 0.05585917),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7755800, size.height * 0.9066211),
        radius: Radius.elliptical(
            size.width * 0.01934000, size.height * 0.05081450),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7822800, size.height * 0.8875985),
        radius: Radius.elliptical(
            size.width * 0.01576000, size.height * 0.04140830),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.7977600, size.height * 0.8875985);
    path_0.arcToPoint(Offset(size.width * 0.7860200, size.height * 0.9315292),
        radius: Radius.elliptical(
            size.width * 0.03000000, size.height * 0.07882291),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7655400, size.height * 0.9482922),
        radius: Radius.elliptical(
            size.width * 0.03414000, size.height * 0.08970047),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7474800, size.height * 0.9357331),
        radius: Radius.elliptical(
            size.width * 0.03560000, size.height * 0.09353652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.7853000, size.height * 0.8382554);
    path_0.arcToPoint(Offset(size.width * 0.7781200, size.height * 0.8067262),
        radius: Radius.elliptical(
            size.width * 0.02162000, size.height * 0.05680504),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7655800, size.height * 0.7947451),
        radius: Radius.elliptical(
            size.width * 0.01892000, size.height * 0.04971098),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7443600, size.height * 0.8380452),
        radius: Radius.elliptical(
            size.width * 0.02154000, size.height * 0.05659485),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.8980000, size.height * 0.8049921);
    path_0.arcToPoint(Offset(size.width * 0.8890000, size.height * 0.7949553),
        radius: Radius.elliptical(
            size.width * 0.01200000, size.height * 0.03152916),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8792200, size.height * 0.8049921),
        radius: Radius.elliptical(
            size.width * 0.01350000, size.height * 0.03547031),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8752200, size.height * 0.8307409),
        radius: Radius.elliptical(
            size.width * 0.01298000, size.height * 0.03410405),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8752200, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.8616000, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.8616000, size.height * 0.8307409);
    path_0.arcToPoint(Offset(size.width * 0.8579000, size.height * 0.8049921),
        radius: Radius.elliptical(
            size.width * 0.01350000, size.height * 0.03547031),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8488600, size.height * 0.7949553),
        radius: Radius.elliptical(
            size.width * 0.01200000, size.height * 0.03152916),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8391200, size.height * 0.8049921),
        radius: Radius.elliptical(
            size.width * 0.01334000, size.height * 0.03504992),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.8352600, size.height * 0.8307409),
        radius: Radius.elliptical(
            size.width * 0.01314000, size.height * 0.03452444),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.8352600, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.8215200, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.8215200, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.8352600, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.8352600, size.height * 0.7825013);
    path_0.arcToPoint(Offset(size.width * 0.8425600, size.height * 0.7664214),
        radius: Radius.elliptical(
            size.width * 0.02000000, size.height * 0.05254861),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8517400, size.height * 0.7608513),
        radius: Radius.elliptical(
            size.width * 0.02048000, size.height * 0.05380977),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8624000, size.height * 0.7672097),
        radius: Radius.elliptical(
            size.width * 0.02282000, size.height * 0.05995796),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8704000, size.height * 0.7859170),
        radius: Radius.elliptical(
            size.width * 0.02216000, size.height * 0.05822386),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8797600, size.height * 0.7673673),
        radius: Radius.elliptical(
            size.width * 0.02470000, size.height * 0.06489753),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.8918800, size.height * 0.7606411),
        radius: Radius.elliptical(
            size.width * 0.02956000, size.height * 0.07766684),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9040000, size.height * 0.7694693),
        radius: Radius.elliptical(
            size.width * 0.02242000, size.height * 0.05890699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9123600, size.height * 0.7941146),
        radius: Radius.elliptical(
            size.width * 0.02294000, size.height * 0.06027325),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9153600, size.height * 0.8305307),
        radius: Radius.elliptical(
            size.width * 0.03054000, size.height * 0.08024172),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.9153600, size.height * 0.9437204);
    path_0.lineTo(size.width * 0.9016200, size.height * 0.9437204);
    path_0.lineTo(size.width * 0.9016200, size.height * 0.8307409);
    path_0.arcToPoint(Offset(size.width * 0.8980000, size.height * 0.8049921),
        radius: Radius.elliptical(
            size.width * 0.01370000, size.height * 0.03599580),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.9577600, size.height * 0.9439306);
    path_0.lineTo(size.width * 0.9304000, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.9448800, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.9652400, size.height * 0.9018917);
    path_0.lineTo(size.width * 0.9853400, size.height * 0.7647924);
    path_0.lineTo(size.width, size.height * 0.7647924);
    path_0.lineTo(size.width * 0.9636200, size.height * 1.000000);
    path_0.lineTo(size.width * 0.9486400, size.height * 1.000000);
    path_0.close();
    path_0.moveTo(size.width * 0.4152000, size.height * 0.6404624);
    path_0.lineTo(size.width * 0.4152000, 0);
    path_0.lineTo(size.width * 0.4515200, 0);
    path_0.lineTo(size.width * 0.4515200, size.height * 0.2178140);
    path_0.arcToPoint(Offset(size.width * 0.4786200, size.height * 0.1718339),
        radius:
            Radius.elliptical(size.width * 0.08328000, size.height * 0.2188124),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5120000, size.height * 0.1553337),
        radius:
            Radius.elliptical(size.width * 0.08816000, size.height * 0.2316343),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5920000, size.height * 0.2781398),
        radius:
            Radius.elliptical(size.width * 0.08940000, size.height * 0.2348923),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.6039000, size.height * 0.4035208),
        radius:
            Radius.elliptical(size.width * 0.09732000, size.height * 0.2557015),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5920000, size.height * 0.5289543),
        radius:
            Radius.elliptical(size.width * 0.09734000, size.height * 0.2557541),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5591400, size.height * 0.6187599),
        radius:
            Radius.elliptical(size.width * 0.08906000, size.height * 0.2339989),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.5120000, size.height * 0.6516027),
        radius:
            Radius.elliptical(size.width * 0.09000000, size.height * 0.2364687),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4786400, size.height * 0.6351025),
        radius:
            Radius.elliptical(size.width * 0.08816000, size.height * 0.2316343),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.4515400, size.height * 0.5891224),
        radius:
            Radius.elliptical(size.width * 0.08328000, size.height * 0.2188124),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.4515400, size.height * 0.6403048);
    path_0.close();
    path_0.moveTo(size.width * 0.5385600, size.height * 0.5401997);
    path_0.arcToPoint(Offset(size.width * 0.5595400, size.height * 0.4842354),
        radius:
            Radius.elliptical(size.width * 0.05546000, size.height * 0.1457173),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5671400, size.height * 0.4035208),
        radius:
            Radius.elliptical(size.width * 0.06170000, size.height * 0.1621125),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5595400, size.height * 0.3228586),
        radius:
            Radius.elliptical(size.width * 0.06168000, size.height * 0.1620599),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5385600, size.height * 0.2668418),
        radius:
            Radius.elliptical(size.width * 0.05566000, size.height * 0.1462428),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5090000, size.height * 0.2464530),
        radius:
            Radius.elliptical(size.width * 0.05800000, size.height * 0.1523910),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4591200, size.height * 0.3228586),
        radius:
            Radius.elliptical(size.width * 0.05600000, size.height * 0.1471361),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4515200, size.height * 0.4035208),
        radius:
            Radius.elliptical(size.width * 0.06168000, size.height * 0.1620599),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.4591200, size.height * 0.4842354),
        radius:
            Radius.elliptical(size.width * 0.06170000, size.height * 0.1621125),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5090000, size.height * 0.5606411),
        radius:
            Radius.elliptical(size.width * 0.05612000, size.height * 0.1474514),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.5385600, size.height * 0.5401997),
        radius:
            Radius.elliptical(size.width * 0.05782000, size.height * 0.1519180),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.1894800, size.height * 0.04729375);
    path_0.lineTo(size.width * 0.1894800, size.height * 0.1506043);
    path_0.lineTo(size.width * 0.1121600, size.height * 0.1506043);
    path_0.lineTo(size.width * 0.1121600, size.height * 0.1516553);
    path_0.lineTo(size.width * 0.1145400, size.height * 0.1516553);
    path_0.cubicTo(
        size.width * 0.09384000,
        size.height * 0.1516553,
        size.width * 0.07654000,
        size.height * 0.1700998,
        size.width * 0.06234000,
        size.height * 0.2074619);
    path_0.cubicTo(
        size.width * 0.04814000,
        size.height * 0.2448240,
        size.width * 0.04110000,
        size.height * 0.2898581,
        size.width * 0.04110000,
        size.height * 0.3440883);
    path_0.arcToPoint(Offset(size.width * 0.05052000, size.height * 0.4450867),
        radius:
            Radius.elliptical(size.width * 0.07718000, size.height * 0.2027851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.07708000, size.height * 0.5140830),
        radius:
            Radius.elliptical(size.width * 0.06696000, size.height * 0.1759327),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.1129200, size.height * 0.5392538),
        radius:
            Radius.elliptical(size.width * 0.07800000, size.height * 0.2049396),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.1894800, size.height * 0.5392538);
    path_0.lineTo(size.width * 0.1894800, size.height * 0.6431424);
    path_0.lineTo(size.width * 0.1129200, size.height * 0.6431424);
    path_0.cubicTo(
        size.width * 0.08010000,
        size.height * 0.6423542,
        size.width * 0.05314000,
        size.height * 0.6145560,
        size.width * 0.03214000,
        size.height * 0.5590646);
    path_0.quadraticBezierTo(
        0, size.height * 0.4754073, 0, size.height * 0.3442459);
    path_0.cubicTo(
        0,
        size.height * 0.2873883,
        size.width * 0.004860000,
        size.height * 0.2372570,
        size.width * 0.01468000,
        size.height * 0.1934314);
    path_0.arcToPoint(Offset(size.width * 0.05646000, size.height * 0.08728324),
        radius:
            Radius.elliptical(size.width * 0.1075200, size.height * 0.2825013),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.1074400, size.height * 0.04771414),
        radius:
            Radius.elliptical(size.width * 0.1157800, size.height * 0.3042039),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.cubicTo(
        size.width * 0.1090600,
        size.height * 0.04729375,
        size.width * 0.1106200,
        size.height * 0.04729375,
        size.width * 0.1121600,
        size.height * 0.04729375);
    path_0.lineTo(size.width * 0.1151000, size.height * 0.04729375);
    path_0.close();
    path_0.moveTo(size.width * 0.2960000, size.height * 0.1763531);
    path_0.arcToPoint(Offset(size.width * 0.3409600, size.height * 0.2078823),
        radius:
            Radius.elliptical(size.width * 0.08970000, size.height * 0.2356805),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3857000, size.height * 0.4093537),
        radius:
            Radius.elliptical(size.width * 0.08772000, size.height * 0.2304782),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3738200, size.height * 0.5268523),
        radius:
            Radius.elliptical(size.width * 0.08870000, size.height * 0.2330531),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.3414400, size.height * 0.6123489),
        radius:
            Radius.elliptical(size.width * 0.08562000, size.height * 0.2249606),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2962400, size.height * 0.6431950),
        radius:
            Radius.elliptical(size.width * 0.08946000, size.height * 0.2350499),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2342400, size.height * 0.5752496),
        radius:
            Radius.elliptical(size.width * 0.08430000, size.height * 0.2214924),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.2085400, size.height * 0.4101419),
        radius:
            Radius.elliptical(size.width * 0.08578000, size.height * 0.2253810),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.quadraticBezierTo(size.width * 0.2085400, size.height * 0.3060956,
        size.width * 0.2375800, size.height * 0.2367315);
    path_0.arcToPoint(Offset(size.width * 0.2960000, size.height * 0.1763531),
        radius:
            Radius.elliptical(size.width * 0.08486000, size.height * 0.2229637),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.2967000, size.height * 0.2814503);
    path_0.arcToPoint(Offset(size.width * 0.2637800, size.height * 0.3175512),
        radius:
            Radius.elliptical(size.width * 0.04362000, size.height * 0.1146085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.quadraticBezierTo(size.width * 0.2506600, size.height * 0.3536521,
        size.width * 0.2506400, size.height * 0.4099842);
    path_0.quadraticBezierTo(size.width * 0.2506400, size.height * 0.4677877,
        size.width * 0.2636400, size.height * 0.5038360);
    path_0.arcToPoint(Offset(size.width * 0.2965400, size.height * 0.5397267),
        radius:
            Radius.elliptical(size.width * 0.04344000, size.height * 0.1141356),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.3296800, size.height * 0.5034157),
        radius:
            Radius.elliptical(size.width * 0.04400000, size.height * 0.1156069),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.quadraticBezierTo(size.width * 0.3429200, size.height * 0.4670520,
        size.width * 0.3429000, size.height * 0.4099842);
    path_0.quadraticBezierTo(size.width * 0.3428800, size.height * 0.3529164,
        size.width * 0.3300000, size.height * 0.3169207);
    path_0.quadraticBezierTo(size.width * 0.3170200, size.height * 0.2812401,
        size.width * 0.2967800, size.height * 0.2812401);
    path_0.close();
    path_0.moveTo(size.width * 0.7657400, size.height * 0.1859170);
    path_0.lineTo(size.width * 0.8080000, size.height * 0.1859170);
    path_0.lineTo(size.width * 0.8080000, size.height * 0.6282712);
    path_0.lineTo(size.width * 0.7657400, size.height * 0.6282712);
    path_0.lineTo(size.width * 0.7657400, size.height * 0.5815029);
    path_0.arcToPoint(Offset(size.width * 0.7409400, size.height * 0.6260116),
        radius:
            Radius.elliptical(size.width * 0.08300000, size.height * 0.2180767),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7140000, size.height * 0.6396217),
        radius:
            Radius.elliptical(size.width * 0.06944000, size.height * 0.1824488),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.quadraticBezierTo(size.width * 0.6813800, size.height * 0.6396217,
        size.width * 0.6575800, size.height * 0.5731477);
    path_0.quadraticBezierTo(size.width * 0.6337800, size.height * 0.5066737,
        size.width * 0.6337600, size.height * 0.4078823);
    path_0.quadraticBezierTo(size.width * 0.6337600, size.height * 0.3054125,
        size.width * 0.6567800, size.height * 0.2399895);
    path_0.quadraticBezierTo(size.width * 0.6798000, size.height * 0.1745665,
        size.width * 0.7127800, size.height * 0.1745139);
    path_0.arcToPoint(Offset(size.width * 0.7412200, size.height * 0.1895954),
        radius:
            Radius.elliptical(size.width * 0.07106000, size.height * 0.1867052),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.7658000, size.height * 0.2347346),
        radius:
            Radius.elliptical(size.width * 0.07746000, size.height * 0.2035208),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();
    path_0.moveTo(size.width * 0.7213400, size.height * 0.2769837);
    path_0.arcToPoint(Offset(size.width * 0.6888000, size.height * 0.3133999),
        radius:
            Radius.elliptical(size.width * 0.04264000, size.height * 0.1120336),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.quadraticBezierTo(size.width * 0.6758400, size.height * 0.3497635,
        size.width * 0.6758400, size.height * 0.4066737);
    path_0.quadraticBezierTo(size.width * 0.6758400, size.height * 0.4635838,
        size.width * 0.6890200, size.height * 0.5012612);
    path_0.arcToPoint(Offset(size.width * 0.7214800, size.height * 0.5380452),
        radius:
            Radius.elliptical(size.width * 0.04268000, size.height * 0.1121387),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.7544800, size.height * 0.5016290),
        radius:
            Radius.elliptical(size.width * 0.04350000, size.height * 0.1142932),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.quadraticBezierTo(size.width * 0.7676000, size.height * 0.4652654,
        size.width * 0.7675800, size.height * 0.4063058);
    path_0.quadraticBezierTo(size.width * 0.7675800, size.height * 0.3485024,
        size.width * 0.7544800, size.height * 0.3128219);
    path_0.arcToPoint(Offset(size.width * 0.7213400, size.height * 0.2769837),
        radius:
            Radius.elliptical(size.width * 0.04400000, size.height * 0.1156069),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.close();
    path_0.moveTo(size.width * 0.8506800, size.height * 0.1859170);
    path_0.lineTo(size.width * 0.8929200, size.height * 0.1859170);
    path_0.lineTo(size.width * 0.8929200, size.height * 0.2312139);
    path_0.arcToPoint(Offset(size.width * 0.9189200, size.height * 0.1869679),
        radius:
            Radius.elliptical(size.width * 0.1017400, size.height * 0.2673148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9427800, size.height * 0.1745139),
        radius:
            Radius.elliptical(size.width * 0.06290000, size.height * 0.1652654),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.arcToPoint(Offset(size.width * 0.9853200, size.height * 0.2207042),
        radius:
            Radius.elliptical(size.width * 0.05780000, size.height * 0.1518655),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.quadraticBezierTo(size.width * 0.9999800, size.height * 0.2596952,
        size.width, size.height * 0.3363111);
    path_0.lineTo(size.width, size.height * 0.6286390);
    path_0.lineTo(size.width * 0.9582200, size.height * 0.6286390);
    path_0.lineTo(size.width * 0.9582200, size.height * 0.4345244);
    path_0.quadraticBezierTo(size.width * 0.9582200, size.height * 0.3553862,
        size.width * 0.9555200, size.height * 0.3294272);
    path_0.arcToPoint(Offset(size.width * 0.9461000, size.height * 0.2898581),
        radius: Radius.elliptical(
            size.width * 0.02742000, size.height * 0.07204414),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.9295000, size.height * 0.2762480),
        radius: Radius.elliptical(
            size.width * 0.02636000, size.height * 0.06925906),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.arcToPoint(Offset(size.width * 0.9075000, size.height * 0.2987914),
        radius: Radius.elliptical(
            size.width * 0.03106000, size.height * 0.08160799),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.quadraticBezierTo(size.width * 0.8982800, size.height * 0.3212296,
        size.width * 0.8947400, size.height * 0.3611140);
    path_0.quadraticBezierTo(size.width * 0.8929000, size.height * 0.3818707,
        size.width * 0.8929000, size.height * 0.4508145);
    path_0.lineTo(size.width * 0.8929000, size.height * 0.6283237);
    path_0.lineTo(size.width * 0.8506800, size.height * 0.6283237);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
