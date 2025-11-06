import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/helper/spacing.dart';

import '../../../core/theming/styles.dart';

class RestLogoAndName extends StatelessWidget {
  const RestLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset('assets/images/logo.png',scale: 1,),
        Text(
          'Restaurant APP',
          style: TextStyles.font15DarkBlueMedium,
        ),
        verticalSpacing(10.h),
        Text(
          'Explore and order your favorite food',
          style: TextStyles.font13GrayRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
