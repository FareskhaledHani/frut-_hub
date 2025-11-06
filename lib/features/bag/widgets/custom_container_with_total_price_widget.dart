
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../details/widget/custom_widget_text_with_total_price.dart';
import '../../widget/custom_button_container_gradient.dart';
import '../cubit/counter_cubit.dart';
import '../model/item_model.dart';

class CustomContainerWithTotalPriceWidget extends StatelessWidget {
  const CustomContainerWithTotalPriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagCubit, List<ItemModel>>(
      builder: (context, state) {
        final total = context.read<BagCubit>().totalPrice;
        return Container(
          padding: EdgeInsets.all(10.sp),
          height: 175.h,
          width: 368.w,
          decoration: const BoxDecoration(
            color: ColorsManager.grayLight,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Column(
            children: [
              CustomWidgetTextWithTotalPrice(
                text: 'SubTotal:',
                price: '\$${total.toStringAsFixed(2)} usd',
                textStyle: TextStyles.font11NavyBlueRegular,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Envio:',
                    style: TextStyles.font11NavyBlueRegular,
                  ),
                  Text('gratis',
                      style: TextStyles.font11NavyBlueRegular),
                ],
              ),
              verticalSpacing(10.h),
              CustomWidgetTextWithTotalPrice(
                text: 'SubTotal:',
                price: '\$${total.toStringAsFixed(2)} usd',
                textStyle: TextStyles.font17parpleSemiBold,
              ),
              verticalSpacing(18.h),
              CustomButtonContainerGradientColor(
                height: 67.h,
                width: 368.w,
                title: 'Realizar compra',
                onTap: () {},
              )
            ],
          ),
        );
      },
    );
  }
}
