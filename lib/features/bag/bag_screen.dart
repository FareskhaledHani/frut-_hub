import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/features/bag/widgets/custom_container_with_total_price_widget.dart';
import 'package:fruithub/features/bag/widgets/custom_list_view_of_page_with_price.dart';
import '../../core/helper/spacing.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../widget/custom_container_listtile_widget.dart';
import 'cubit/counter_cubit.dart';


class BagScreen extends StatelessWidget {
  const BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BagCubit(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Carrito',
            style: TextStyles.font22navyBlue,
          ),
          elevation: 4,
          toolbarHeight: 131.h,
          backgroundColor: ColorsManager.white,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 30.0.h,
            left: 20.0.w,
          ),
          child: Column(
            children: [
              Row(children: [
                CustomContainerTileWidget(
                  colorBackGround: ColorsManager.parple,
                  colorIcon: ColorsManager.gray,
                  textStylesTitle: TextStyles.font10white,
                  textStylesSubTitle: TextStyles.font9whiteRegular,
                ),
                horizontalSpacing(10.w),
                CustomContainerTileWidget(
                  colorBackGround: ColorsManager.white,
                  colorIcon: ColorsManager.parple,
                  textStylesTitle: TextStyles.font10black,
                  textStylesSubTitle: TextStyles.font9grayRegular,
                ),
                horizontalSpacing(20.w),
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: ColorsManager.parple),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: ColorsManager.white,
                    ),
                  ),
                )
              ]),
              verticalSpacing(40.h),
              const CustomListViewOfPageWithPrice(),
              const CustomContainerWithTotalPriceWidget()
            ],
          ),
        ),
      ),
    );
  }
}


