import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/theming/colors.dart';
import 'package:fruithub/features/home/widget/custom_app_bar_with_search_icon.dart';

import '../../widgets/body_widget_home_screen.dart';
import 'cubit_fav/favoriets_cubit_recomendes.dart';
import 'cubit_fav/favorites_cubit_populares.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavoriteCubit()),
        BlocProvider(create: (context) => FavoriteCubitRecomendes()),
      ],
      child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const CustomAppBarWithSearchIcon(),elevation: 4,toolbarHeight: 131.h,backgroundColor: ColorsManager.white,
            ),
            backgroundColor: ColorsManager.white,
            body: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 7.h),
              child: const BodyWidgetHome(),
            ),
        ),
    );
  }
}





















