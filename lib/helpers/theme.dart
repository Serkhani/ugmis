import 'package:flutter/material.dart';
import '../resources/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData();

  static ThemeData appTheme = ThemeData(
    primarySwatch: AppColors.appSwatch,
    scaffoldBackgroundColor: AppColors.white,
  );

  static ThemeMode switchTheme() {
    return ThemeMode.system;
  }
}
