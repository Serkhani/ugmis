import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF4D4DE9);
  static const Color primaryDark = Color(0xFF010138);
  static const Color appYellow = Color(0xFFFFD37B);
  static const Color appGreen = Color(0xFF056F69);
  static const Color appGreenAlt = Color(0xFF4DD671);
  static const Color appPink = Color(0xFFFD8FC6);
  static const Color cardBackgroundLight = Color(0xFFE6E6FC);
  static const Color cardBackgroundLighter = Color(0xFFEBEBF8);

  static const Color textInputField = Color(0xFFF7F8F9);
  static const Color textInputFieldBorder = Color(0xffE8ECF4);

  static const Color primaryShade400 = Color(0xFF7171F1);
  static const Color primaryShade300 = Color(0xFF9797F6);
  static const Color primaryShade200 = Color(0xFFC4C4FF);
  static const Color primaryShade100 = Color(0xFFD4D4FB);
  static const Color primaryShade50 = Color(0xFFE7E7FD);

  static const Color lightGreen = Color(0xFFE8FFE9);
  static const Color lightYellow = Color(0xFFEFEDC8);
  static const Color lightPink = Color(0xFFF8E7E7);
  static const Color lightRed = Color(0xFFFFDADA);

  // shades of grey
  static const Color greyNormal = Color(0xFFE5E7EC);
  static const Color greyLight = Color(0xFFE8ECFA);
  static const Color greyText = Color(0xFFF7F8F9);

  // normal colors
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFE43427);

  static MaterialColor appSwatch = const MaterialColor(500, <int, Color>{
    50: Color(0xFFededfd),
    100: Color(0xFFdbdbfb),
    200: Color(0xFFb8b8f6),
    300: Color(0xFF9494f2),
    400: Color(0xFF7171ed),
    500: Color(0xFF4d4de9),
    600: Color(0xFF3e3eba),
    700: Color(0xFF2e2e8c),
    800: Color(0xFF1f1f5d),
    900: Color(0xFF0f0f2f),
  });
}
