

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/routing/routes.dart';
import 'package:fruithub/features/details/details_screen.dart';

import 'package:fruithub/features/onbording/onboarding_screen.dart';

import '../../features/button_navigation_bar.dart';
import '../../features/home/home_Screen.dart';
import '../../test/search_screen.dart';

class AppRouter {

  /*  final arguments =settings.arguments;*/
  Route ? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen (),
        );
        case Routes.home:
          return MaterialPageRoute(builder:(_) =>  BottomNavBarCustom() ,);
      case Routes.detailsScreen:
        return MaterialPageRoute(builder:(_) =>  const DetailsScreen() ,);
        case Routes.searchScreen:
        return MaterialPageRoute(builder:(_) =>  const SearchScreen() ,);
      default:
        return null;
    }

  }
}