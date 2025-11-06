
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../Models/model_ingredientes.dart';

class CustomCatogeryIngredientes extends StatelessWidget {
  const CustomCatogeryIngredientes({
    super.key,  required this.category,
  });
  final IngredintesCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(1.0.sp),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
            margin:EdgeInsets.zero ,
            height: 104.h,
            width: 91.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                 image: AssetImage(category.image),
                ),
                borderRadius: BorderRadius.circular(10.r)
            ),
          ),
          Text(category.title,style: TextStyles.font10greyLight,)
        ],
      ),
    );
  }
}