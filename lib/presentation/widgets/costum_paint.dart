import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.001151628, size.height * 0.4825775);
    path_0.cubicTo(
        size.width * -0.002022749,
        size.height * 0.4632583,
        size.width * 0.005352271,
        size.height * 0.4435192,
        size.width * 0.01686271,
        size.height * 0.4405267);
    path_0.lineTo(size.width * 0.4742860, size.height * 0.3215892);
    path_0.cubicTo(
        size.width * 0.4759005,
        size.height * 0.3211692,
        size.width * 0.4774778,
        size.height * 0.3203983,
        size.width * 0.4789802,
        size.height * 0.3192942);
    path_0.lineTo(size.width * 0.9045507, size.height * 0.006500183);
    path_0.cubicTo(
        size.width * 0.9152609,
        size.height * -0.001370883,
        size.width * 0.9275411,
        size.height * 0.008757000,
        size.width * 0.9307150,
        size.height * 0.02807583);
    path_0.lineTo(size.width * 1.010966, size.height * 0.5164792);
    path_0.cubicTo(
        size.width * 1.014140,
        size.height * 0.5357983,
        size.width * 1.006768,
        size.height * 0.5555375,
        size.width * 0.9952560,
        size.height * 0.5585308);
    path_0.lineTo(size.width * 0.5378357, size.height * 0.6774675);
    path_0.cubicTo(
        size.width * 0.5362174,
        size.height * 0.6778875,
        size.width * 0.5346425,
        size.height * 0.6786583,
        size.width * 0.5331401,
        size.height * 0.6797625);
    path_0.lineTo(size.width * 0.1075696, size.height * 0.9925583);
    path_0.cubicTo(
        size.width * 0.09686087,
        size.height * 1.000425,
        size.width * 0.08457826,
        size.height * 0.9903000,
        size.width * 0.08140386,
        size.height * 0.9709833);
    path_0.lineTo(size.width * 0.001151628, size.height * 0.4825775);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff5BB964).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
