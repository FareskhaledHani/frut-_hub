
import 'package:flutter/cupertino.dart';

class CustomWidgetTextWithTotalPrice extends StatelessWidget {
  const CustomWidgetTextWithTotalPrice({
    super.key, required this.text, required this.price, required this.textStyle,
  });
  final String text ;
  final String price ;
  final  TextStyle  textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: textStyle),
        Text(price,style:textStyle),
      ],
    );
  }
}
