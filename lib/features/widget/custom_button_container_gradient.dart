
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/theming/styles.dart';


class CustomButtonContainerGradientColor extends StatelessWidget {
  const CustomButtonContainerGradientColor({
    super.key, required this.height, required this.width, required this.title, required this.onTap,
  });
  final double   height;
  final double  width;
  final String  title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF4A1192),
              Color(0xFF2CD5C4),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.font16WhiteSemiBold,
          ),
        ),
      ),
    );
  }
}

