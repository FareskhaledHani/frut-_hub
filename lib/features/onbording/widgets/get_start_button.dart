import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/helper/extentions.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {

      context.pushNamed(Routes.home);
    },

        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ) ,
          backgroundColor: MaterialStateProperty.all<Color>(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all<Size>(const Size(double.infinity, 52)),
        )
        ,child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}