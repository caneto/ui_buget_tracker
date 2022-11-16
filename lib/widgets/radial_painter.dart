// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class RadialPainter extends CustomPainter {
  final Color? bgColor;
  final Color? lineColor;
  final double? percent;
  final double? widget;

  const RadialPainter({ 
    this.bgColor,
    this.lineColor,
    this.percent,
    this.widget,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint bgline = Paint()
      ..color = bgColor!
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = widget!;

      Paint completeLine = Paint()
      ..color = lineColor!
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = widget!;

      Offset center = Offset(size.width / 2, size.height / 2);
      double radius = min(size.width / 2, size.height / 2);
      double sweepAngle = 2 * pi * percent!;
      canvas.drawCircle(center, radius, bgline);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -pi / 2,
        sweepAngle,
        false,
        completeLine,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
