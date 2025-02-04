import 'package:flutter/material.dart';

class NotchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height - 50); // Left vertical line
    path.lineTo(size.width / 2 - 20, size.height - 50); // Notch left
    path.lineTo(size.width / 2, size.height - 80); // Notch peak
    path.lineTo(size.width / 2 + 20, size.height - 50); // Notch right
    path.lineTo(size.width, size.height - 50); // Right vertical line
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
