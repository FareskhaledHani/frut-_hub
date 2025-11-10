
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/features/home/cubit_fav/favoriets_cubit_recomendes.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../models/model_recomend_catogery.dart';

class RecomendersCatogeryWithPhotoAndPrice extends StatelessWidget {
  const RecomendersCatogeryWithPhotoAndPrice({super.key,  required this.cubit});
  final FavoriteCubitRecomendes cubit;


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 142.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: RecomendesCategories.length,
        scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) {
        final item = RecomendesCategories[index];
        final isFav = cubit.isFavorite(item);

        return   SizedBox(
          height: 132.h,
          width: 240.w,
          child: GestureDetector(
            onTap: () => cubit.toggleFavorite(item),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 70.h),
                  margin: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  height: 114.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    boxShadow:  [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 0,
                          offset: const Offset(0, 3)),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorsManager.white,
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 13.0.h,left: 8.0.w),
                  child: Image.asset(item.image,width: 98.w,height: 132.h),
                ),

                Positioned(
                  top: 10.h,
                  right: 10.w,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => cubit.toggleFavorite(item),
                    icon: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.grey,
                    ),
                  ),
                ),




                Padding(
                  padding:  EdgeInsets.only(top: 10.0.h),

                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 100.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100.h,
                            width: 140.w,
                            child: ListTile(
                              minLeadingWidth: 0,
                              horizontalTitleGap: 10.w,
                              dense: true,
                              contentPadding: EdgeInsets.zero,
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  verticalSpacing(5.h),
                                  Text(item.title, style: TextStyles.font10greyLight),
                                  verticalSpacing(10.h),
                                  Text(item.subTitle, style: TextStyles.font10NavyBlue),
                                  Text(item.description, style: TextStyles.font7greyLight),
                                  verticalSpacing(10.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('${item.price}', style: TextStyles.font14navyBlue),
                                          Container(
                                            margin: EdgeInsets.only(right: 25.w),
                                            height: 22.h,
                                              width: 22.w,

                                              decoration: BoxDecoration(
                                                boxShadow:  [
                                                  BoxShadow(
                                                      color: Colors.black.withOpacity(0.1),
                                                      blurRadius: 10.r,
                                                      spreadRadius: 0,
                                                      offset: const Offset(0, 3)),
                                                ],
                                                borderRadius: BorderRadius.circular(30.r),
                                                color: ColorsManager.white,
                                              ),
                                              child:  Icon(Icons.navigate_next, color: ColorsManager.navyblue, size: 20.sp)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

      },),
    );
  }
}
