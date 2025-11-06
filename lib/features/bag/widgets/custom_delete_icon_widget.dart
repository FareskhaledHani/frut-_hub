

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';

class CustomDeleteIconWidget extends StatelessWidget {
  const CustomDeleteIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5.h,
      right: 5.w,
      child: Container(
        height: 48.h,
        width: 48.w,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsManager.red),
        child: const Center(
            child: Icon(
              Icons.delete_outline,
              color: ColorsManager.white,
            )),
      ),
    );
  }
}