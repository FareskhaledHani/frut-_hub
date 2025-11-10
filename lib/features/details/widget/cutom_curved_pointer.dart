
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

    // نبدأ من أقصى اليمين
    path.moveTo(size.width, size.height / 2-145);

    // 🟢 كيرف بسيط في اليمين
    path.quadraticBezierTo(
      size.width * 0.95.w, // نقطة التحكم قريبة من اليمين
      size.height / 2 -80.h, // عمق الانحناء
      size.width * 0.8.w, // نهاية الكيرف
      size.height / 2-90.h, // نرجع للمنتصف
    );

    // 🟦 خط مستقيم في المنتصف
    path.lineTo(size.width * 0.17.w, size.height /3+55.h);

    // 🔴 كيرف بسيط في الشمال
    path.quadraticBezierTo(
      size.width * 0.01.w, // نقطة التحكم
      size.height *0.37.h, // عمق الكيرف
      0, // نهاية الشكل في الشمال
      size.height.h / 3+120.h, // نفس المستوى
    );

    // نقفل الجزء السفلي
    path.lineTo(0, size.height.h);
    path.lineTo(size.width.w, size.height.h);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
