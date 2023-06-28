import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscurePinTextField = true.obs;
  RxBool obscureStudentTextField = false.obs;
  late TextEditingController studentIdCon;
  late TextEditingController pinCon;

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
