

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/helper/extentions.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class CustomAppBarWithSearchIcon extends StatelessWidget {
  const CustomAppBarWithSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            context.pushNamed(Routes.searchScreen);
          },
          child: Container(
            margin: EdgeInsets.only(left: 10.w),
            height: 33.h,
            width: 132.w,
            decoration:   BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: ColorsManager.gray
                ),
                color: ColorsManager.white
            ),
            child: Row(
              children: [
                horizontalSpacing(10.w),
                const Icon(Icons.search,color: ColorsManager.parple,),
              ],
            ),
          ),
        ),
        horizontalSpacing(5.w),
        Text('Inicio',style:TextStyles.font22White600),
        horizontalSpacing(100.w),
        const Icon(Icons.notifications_none,color: ColorsManager.greenwhite,),
        horizontalSpacing(5.w),
        const ImageIcon(AssetImage('assets/images/percient.png'),color: ColorsManager.red,)
      ],
    );
  }
}



