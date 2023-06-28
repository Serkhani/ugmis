import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:ugmis/helpers/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UGMIS",
      // theme: AppTheme.appTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
