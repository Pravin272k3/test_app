import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles{
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3B3B3B);

  static TextStyle headLineStyle1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 26,
    color: AppStyles.textColor,
  );
  static TextStyle headLineStyle2 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );
}