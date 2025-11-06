import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../cubit/counter_cubit.dart';
import '../model/item_model.dart';
import 'custom_delete_icon_widget.dart';

class CustomListViewOfPageWithPrice extends StatelessWidget {
  const CustomListViewOfPageWithPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagCubit, List<ItemModel>>(
      builder: (context, items) {
        final cubit = context.read<BagCubit>();
        return SizedBox(
          height: 320.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];
              return SizedBox(
                height: 320.h,
                width: 263.w,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.sp),
                      padding: EdgeInsets.all(20.sp),
                      height: 299.h,
                      width: 243.w,
                      decoration: BoxDecoration(
                          color: ColorsManager.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 95.h,
                              width: 95.w,
                              decoration:  BoxDecoration(
                                shape: BoxShape.circle,

                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(item.photo),
                                )
                              ),
                              ),
                          verticalSpacing(10.h),
                          Text(
                           item.title,
                            style: TextStyles.font19NavyBlueSemiBold,
                          ),
                          verticalSpacing(10),
                          Text(
                            item.subTitle,
                            style: TextStyles.font9graylight,
                            textAlign: TextAlign.center,
                          ),
                          verticalSpacing(30.h),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => cubit.decrement(index),
                                child: Container(
                                  height: 22.h,
                                  width: 22.w,
                                  decoration: const BoxDecoration(
                                    color: ColorsManager.grayLightWhite,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: const Center(
                                      child: Icon(
                                        Icons.remove,
                                        color: ColorsManager.parple,
                                      )),
                                ),
                              ),
                              Text(
                                "${item.count}",
                                style:
                                TextStyles.font19NavyBlueSemiBold,
                              ),
                              GestureDetector(
                                onTap: () => cubit.increment(index),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 22.h,
                                  width: 22.w,
                                  decoration: const BoxDecoration(
                                    color: ColorsManager.parple,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: ColorsManager.white,
                                        size: 20,
                                      )),
                                ),
                              ),
                              Text(
                                '\$${item.price * item.count}',
                                style:
                                TextStyles.font19NavyBlueSemiBold,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const CustomDeleteIconWidget()
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
