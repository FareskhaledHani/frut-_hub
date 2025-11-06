import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../models/model_small_catogery.dart';

class CustomSmallCatogery extends StatelessWidget {
  const CustomSmallCatogery({
    super.key,  required this.category,
  });
  final SmallCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0.sp),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            margin:EdgeInsets.zero ,
            height: 64.h,
            width: 64.w,
            decoration: BoxDecoration(
                color: category.color,
                borderRadius: BorderRadius.circular(10.r)
            ),
            child: Image.asset(category.image,scale: 1,),
          ),
          verticalSpacing(20.h),
          Text(category.title,style: TextStyles.font12navyblue,)
        ],
      ),
    );
  }
}