
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/helper/extentions.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../cubit_fav/favorites_cubit_populares.dart';
import '../models/model_popular_catogery.dart';

class CustomContainerProductsPopularesWidget extends StatelessWidget {
  const CustomContainerProductsPopularesWidget({
    super.key,
    required this.cubit,
    required this.item,
    required this.isFav,
  });

  final FavoriteCubit cubit;
  final PopularCategoryModel item;
  final bool isFav;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(Routes.detailsScreen);
      },
      child: Container(
        margin: EdgeInsets.all(5.sp),
        height: 214.h,
        width: 174.w,
        decoration: BoxDecoration(
            color: ColorsManager.white,
          boxShadow:  [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 0,
                offset: const Offset(0, 3)),

          ],
          borderRadius: BorderRadius.circular(10.r),

        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  alignment: Alignment.topRight,
                  onPressed: () => cubit.toggleFavorite(item),
                  icon: Icon(
                    isFav ? Icons.favorite : Icons.favorite_border,
                    color: isFav ? Colors.red : Colors.grey,

                  ),
                ),
              ],
            ),
            Container(

              height: 90.h,
              width: 90.w,
                decoration: BoxDecoration(
                  color: ColorsManager.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(item.image),
                  scale: 1
                  ),
                  shape: BoxShape.circle,

                ),

            ),
            verticalSpacing(10),
            SizedBox(
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Naturales',
                          style: TextStyles.font12greyRegular),
                      Text('Malteadas tropicales',
                          style: TextStyles.font7greyRegular),
                      verticalSpacing(5.h),
                      Text('\$${item.price}',
                          style: TextStyles.font12navyblue),
                    ],
                  ),
                  Container(
                    height: 29.h,
                    width: 29.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.navigate_next,
                        color: ColorsManager.mainBlue, size: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


