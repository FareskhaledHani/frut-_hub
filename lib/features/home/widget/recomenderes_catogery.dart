
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
      height: 133.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: RecomendesCategories.length,
        scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) {
        final item = RecomendesCategories[index];
        final isFav = cubit.isFavorite(item);

        return   SizedBox(
          height: 135.h,
          width: 240.w,
          child: GestureDetector(
            onTap: () => cubit.toggleFavorite(item),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 104.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: ColorsManager.gray,
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorsManager.white,
                  ),
                ),

                Image.asset(item.image),

                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => cubit.toggleFavorite(item),
                    icon: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color: isFav ? Colors.red : Colors.grey,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 104.h,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('${item.price}', style: TextStyles.font14navyBlue),
                                    const Icon(Icons.navigate_next, color: Colors.amber, size: 20),
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
              ],
            ),
          ),
        );

      },),
    );
  }
}
