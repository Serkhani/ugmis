import 'package:flutter/material.dart';
import 'dart:ui';

class LauncherPainter extends CustomPainter {
  final double? progress;
  LauncherPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3325000, size.height * 0.2580000);
    path0.cubicTo(
        size.width * 0.3556250,
        size.height * 0.1960000,
        size.width * 0.3681250,
        size.height * 0.1940000,
        size.width * 0.3800000,
        size.height * 0.1780000);
    path0.cubicTo(
        size.width * 0.4071875,
        size.height * 0.1955000,
        size.width * 0.3971125,
        size.height * 0.1951200,
        size.width * 0.4123000,
        size.height * 0.2145800);
    path0.cubicTo(
        size.width * 0.4334250,
        size.height * 0.2099200,
        size.width * 0.4454500,
        size.height * 0.1991800,
        size.width * 0.4576875,
        size.height * 0.1845800);
    path0.cubicTo(
        size.width * 0.4595125,
        size.height * 0.1544800,
        size.width * 0.4578500,
        size.height * 0.1537200,
        size.width * 0.4614500,
        size.height * 0.1282600);
    path0.cubicTo(
        size.width * 0.4733000,
        size.height * 0.1126000,
        size.width * 0.5121250,
        size.height * 0.1112000,
        size.width * 0.5337500,
        size.height * 0.1240000);
    path0.cubicTo(
        size.width * 0.5432625,
        size.height * 0.1470400,
        size.width * 0.5328250,
        size.height * 0.1663800,
        size.width * 0.5362500,
        size.height * 0.1820000);
    path0.cubicTo(
        size.width * 0.5493750,
        size.height * 0.1910000,
        size.width * 0.5602625,
        size.height * 0.2090200,
        size.width * 0.5887500,
        size.height * 0.2180000);
    path0.cubicTo(
        size.width * 0.6018000,
        size.height * 0.2043200,
        size.width * 0.5933375,
        size.height * 0.1962200,
        size.width * 0.6130250,
        size.height * 0.1811200);
    path0.cubicTo(
        size.width * 0.6294750,
        size.height * 0.1910600,
        size.width * 0.6497750,
        size.height * 0.1990000,
        size.width * 0.6662500,
        size.height * 0.2600000);
    path0.cubicTo(
        size.width * 0.6630250,
        size.height * 0.2858000,
        size.width * 0.6468375,
        size.height * 0.2804000,
        size.width * 0.6450000,
        size.height * 0.3140000);
    path0.quadraticBezierTo(size.width * 0.6493750, size.height * 0.3305000,
        size.width * 0.6625000, size.height * 0.3800000);
    path0.quadraticBezierTo(size.width * 0.6866750, size.height * 0.3774600,
        size.width * 0.7012500, size.height * 0.3900000);
    path0.cubicTo(
        size.width * 0.7057500,
        size.height * 0.4190000,
        size.width * 0.7168500,
        size.height * 0.4557600,
        size.width * 0.7025000,
        size.height * 0.5060000);
    path0.cubicTo(
        size.width * 0.6889375,
        size.height * 0.5091200,
        size.width * 0.6771625,
        size.height * 0.5064200,
        size.width * 0.6636000,
        size.height * 0.5095400);
    path0.quadraticBezierTo(size.width * 0.6468000, size.height * 0.5337600,
        size.width * 0.6446000, size.height * 0.5806600);
    path0.quadraticBezierTo(size.width * 0.6605500, size.height * 0.6099600,
        size.width * 0.6675000, size.height * 0.6380000);
    path0.cubicTo(
        size.width * 0.6624375,
        size.height * 0.6597600,
        size.width * 0.6411625,
        size.height * 0.6987400,
        size.width * 0.6137500,
        size.height * 0.7160000);
    path0.cubicTo(
        size.width * 0.6069125,
        size.height * 0.7056600,
        size.width * 0.6047500,
        size.height * 0.6874800,
        size.width * 0.5864000,
        size.height * 0.6746400);
    path0.quadraticBezierTo(size.width * 0.5737500, size.height * 0.6800200,
        size.width * 0.5400000, size.height * 0.7040000);
    path0.quadraticBezierTo(size.width * 0.5397500, size.height * 0.7426800,
        size.width * 0.5364000, size.height * 0.7660000);
    path0.cubicTo(
        size.width * 0.5175750,
        size.height * 0.7770200,
        size.width * 0.4966875,
        size.height * 0.7842400,
        size.width * 0.4625000,
        size.height * 0.7608800);
    path0.cubicTo(
        size.width * 0.4588500,
        size.height * 0.7357800,
        size.width * 0.4641000,
        size.height * 0.7330200,
        size.width * 0.4618375,
        size.height * 0.7107000);
    path0.cubicTo(
        size.width * 0.4482500,
        size.height * 0.6951600,
        size.width * 0.4285750,
        size.height * 0.6822400,
        size.width * 0.4102625,
        size.height * 0.6775800);
    path0.cubicTo(
        size.width * 0.3975500,
        size.height * 0.6912000,
        size.width * 0.3966000,
        size.height * 0.7019800,
        size.width * 0.3825000,
        size.height * 0.7086400);
    path0.cubicTo(
        size.width * 0.3680500,
        size.height * 0.6962400,
        size.width * 0.3487125,
        size.height * 0.6750600,
        size.width * 0.3358250,
        size.height * 0.6355600);
    path0.cubicTo(
        size.width * 0.3475375,
        size.height * 0.6035600,
        size.width * 0.3459750,
        size.height * 0.6081600,
        size.width * 0.3582000,
        size.height * 0.5777800);
    path0.cubicTo(
        size.width * 0.3504750,
        size.height * 0.5475000,
        size.width * 0.3483125,
        size.height * 0.5360600,
        size.width * 0.3350000,
        size.height * 0.5080000);
    path0.cubicTo(
        size.width * 0.3111250,
        size.height * 0.4990600,
        size.width * 0.3194500,
        size.height * 0.5109800,
        size.width * 0.2982000,
        size.height * 0.4989200);
    path0.cubicTo(
        size.width * 0.2917625,
        size.height * 0.4394200,
        size.width * 0.2902625,
        size.height * 0.4357800,
        size.width * 0.3025125,
        size.height * 0.3868200);
    path0.cubicTo(
        size.width * 0.3133750,
        size.height * 0.3833200,
        size.width * 0.3297375,
        size.height * 0.3875000,
        size.width * 0.3397375,
        size.height * 0.3840000);
    path0.cubicTo(
        size.width * 0.3477375,
        size.height * 0.3606200,
        size.width * 0.3524125,
        size.height * 0.3303000,
        size.width * 0.3571000,
        size.height * 0.3083000);
    path0.cubicTo(
        size.width * 0.3514750,
        size.height * 0.2988000,
        size.width * 0.3393750,
        size.height * 0.2785000,
        size.width * 0.3325000,
        size.height * 0.2580000);
    path0.close();

    animatePath(path0, paint0, canvas, progress!);
  }

  animatePath(Path path, Paint paint, Canvas canvas, double progress) {
    PathMetrics pathMetrics = path.computeMetrics();
    for (PathMetric pathMetric in pathMetrics) {
      Path path_ = pathMetric.extractPath(0.0, pathMetric.length * progress);
      canvas.drawPath(path_, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
