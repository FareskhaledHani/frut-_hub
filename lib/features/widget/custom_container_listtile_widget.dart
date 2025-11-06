import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/colors.dart';

class CustomContainerTileWidget extends StatelessWidget {
  const CustomContainerTileWidget({
    super.key, required this.colorBackGround, required this.colorIcon, required this.textStylesTitle, required this.textStylesSubTitle,
  });
  final Color colorBackGround;
  final Color colorIcon;
  final TextStyle textStylesTitle;
  final TextStyle textStylesSubTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
          border:  Border.all(color: ColorsManager.gray),
          borderRadius: BorderRadius.circular(10.r),
          color: colorBackGround),
      child: ListTile(
        minTileHeight: 30.h,
        dense: true,
        leading:  ImageIcon(
          const AssetImage('assets/images/home.png'),
          color: colorIcon,
        ),
        //Icon(Icons.home_filled,color: ColorsManager.white,),
        title: Text(
          'Mi casa',

          //style: TextStyles.font10white,
          style: textStylesTitle,
        ),
        subtitle: Text(
          'Direción de ejemplo',
          // style: TextStyles.font9whiteRegular,
          style: textStylesSubTitle,
        ),
      ),
    );
  }
}
