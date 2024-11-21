import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  AppDoubleText({super.key, required this.smallText, required this.bigText});
  String bigText;
  String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(bigText, style:AppStyles.headLineStyle2),
        InkWell(
          onTap:() {

          },
          child:Text(smallText, style:AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )),
        )
      ],
    );
  }
}
