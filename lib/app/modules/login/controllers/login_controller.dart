import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/routes/app_pages.dart';
import 'package:ugmis/resources/sizes.dart';

class LoginController extends GetxController {
  RxBool obscurePinTextField = true.obs;
  RxBool obscureStudentTextField = false.obs;
  RxBool isLoading = false.obs;
  late TextEditingController studentIdCon;
  late TextEditingController pinCon;

  void onRegisterNowClick() {
    Get.toNamed(Routes.REGISTRATION);
  }

  void logIn() async {
      isLoading.value = true;
    if (studentIdCon.text.isEmpty | pinCon.text.isEmpty) {
      await Future.delayed(const Duration(seconds: 2));
      Get.snackbar(
        'Error',
        "Input field(s) missing some values...",
        backgroundColor: Colors.red.shade100,
        borderRadius: Sizes.radiusMini,
        barBlur: 2.6,
        dismissDirection: DismissDirection.horizontal,
        icon: const Icon(
          Icons.dangerous_outlined,
          color: Colors.redAccent,
        ),
      );
    } else {
      await Future.delayed(const Duration(seconds: 2));
      Get.snackbar(
        'Done',
        "Login Successfull",
        backgroundColor: Colors.green.shade50,
        borderRadius: Sizes.radiusMini,
        barBlur: 2.6,
        dismissDirection: DismissDirection.horizontal,
        icon: const Icon(
          Icons.check_circle_outline,
          color: Colors.greenAccent,
        ),
      );
      Get.offNamed(Routes.DASHBOARD);
    }
      isLoading.value = false;

  }

  @override
  void onInit() {
    studentIdCon = TextEditingController();
    pinCon = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    studentIdCon.dispose();
    pinCon.dispose();
    super.onClose();
  }
}
