import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/colors.dart';
import 'features/bag/cubit/counter_cubit.dart';
import 'features/home/cubit_fav/favorites_cubit_populares.dart';

class RestApp extends StatelessWidget {
  final AppRouter appRouter;

  const RestApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        //initialRoute: SplashView.routeName,
        initialRoute: Routes.onBoarding,

        theme: ThemeData(
          primaryColor: ColorsManager.lighterGray,
        ),
      ),
    );
  }
}
