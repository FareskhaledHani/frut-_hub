
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomPointer extends StatelessWidget {
  const CustomPointer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(414.w, 896.h),
      painter: CurvedPainter(),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width, size.height / 2 -20 );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height / 2 + 50,
      size.width * 0.3,
      size.height / 2+20,
    );


    path.quadraticBezierTo(
      size.width * 0.1,
      size.height / 2 ,
      0,
      size.height / 2 + 40,
    );


    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}