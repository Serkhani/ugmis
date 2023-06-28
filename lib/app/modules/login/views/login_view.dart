import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ugmis/app/components/textfield.dart';
import 'package:ugmis/resources/app_images.dart';
import 'package:ugmis/resources/app_strings.dart';
import 'package:ugmis/resources/sizes.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.marginMedium),
          child: Column(
            children: [
              Image.asset(AppImages.sesLogo),
              Text(AppStrings.ses),
              Text(AppStrings.welcome),
              TextInputField(labelText: AppStrings.studentId, hintText: AppStrings.studentIdEg),
              TextInputField(labelText: AppStrings.pin, hintText: AppStrings.pinPinEg, obscureText: true),
            ],
          )
        )
      ),
    );
  }
}
