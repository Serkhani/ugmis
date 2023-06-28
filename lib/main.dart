import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:ugmis/helpers/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 700),
      title: "UGMIS",
      // theme: AppTheme.appTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
