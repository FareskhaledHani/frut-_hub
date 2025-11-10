import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/helper/extentions.dart';
import 'package:fruithub/features/details/widget/custom_button_with_text_container.dart';
import 'package:fruithub/features/details/widget/custom_container_description_integration.dart';
import 'package:fruithub/features/details/widget/cutom_curved_pointer.dart';
import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';
import '../../generated/assets.dart';
import 'cubit/favorit_cubit_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoriteCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: ColorsManager.white,
            ),
          ),
          backgroundColor: ColorsManager.darkBlue,
          title: Text(
            'Hamburguesa especial',
            style: TextStyles.font16WhiteSemiBold,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 690.h,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return Stack(
                    children: [
                      ClipRect(
                        child: Align(
                          alignment: Alignment.center,
                          heightFactor: 0.7.h,
                          child: Image.asset(
                            fit: BoxFit.cover,
                            Assets.imagesBurgerDetails,
                          ),
                        ),
                      ),
                      const CustomPointer(),
                      BlocBuilder<FavoriteCubit, bool>(
                        builder: (context, isFavorite) {
                          return Positioned(
                            top: 325.h,
                            right:40.w,
                            child: Container(
                              height: 48.h,
                              width: 48.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorsManager.red,
                              ),
                              child: IconButton(
                                alignment: Alignment.center,
                                iconSize: 30.sp,
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      isFavorite ? Colors.red : Colors.grey,
                                ),
                                onPressed: () {
                                  context
                                      .read<FavoriteCubit>()
                                      .toggleFavorite();
                                },
                              ),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        top: 410.h,
                        child:
                            const CustomContainerDescriptionAndIntegration(),
                      )
                    ],
                  );
                }),
              ),
            ),
            const CustomButtonWithNumberTextContainer()
          ],
        ),
      ),
    );
  }
}
