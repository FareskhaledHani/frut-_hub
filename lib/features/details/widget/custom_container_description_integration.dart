import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../Models/model_ingredientes.dart';
import 'custom_catogery_ingredientes.dart';

class CustomContainerDescriptionAndIntegration extends StatelessWidget {
  const CustomContainerDescriptionAndIntegration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 40.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Descripcióna',style: TextStyles.font18NavyBlueSemiBold,),
                verticalSpacing(10.h),
                SizedBox(
                    width: 323.w,
                    child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero ',style: TextStyles.font11NavyBlueLight,)),
                verticalSpacing(30.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Ingredientes',style: TextStyles.font18NavyBlueSemiBold,),
                    horizontalSpacing(160.w),
                    Text('10 ingredientes',textAlign:TextAlign.end ,style: TextStyles.font10greyLight,),

                  ],
                ),
                verticalSpacing(10.h),
                SizedBox(
                  height: 190.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ingredintesCategories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  CustomCatogeryIngredientes(category:  ingredintesCategories[index],);
                    },),
                ),

              ],
            ),
          ),
        ]);
  }
}
