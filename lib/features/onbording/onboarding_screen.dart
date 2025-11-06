
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/helper/spacing.dart';
import 'package:fruithub/features/onbording/widgets/get_start_button.dart';
import 'package:fruithub/features/onbording/widgets/rest_logo_and_name.dart';

import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0.h),
              child: Column(
                children: [
                 verticalSpacing(50.h),
                    const RestLogoAndName(),
                verticalSpacing(100.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: ( 30.0.w)),
                    child: const GetStartedButton(),
                  )
                ],
              ),
            ),
          )),
    );
  }
}