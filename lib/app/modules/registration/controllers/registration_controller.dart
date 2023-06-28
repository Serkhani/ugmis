import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/sizes.dart';
import '../../../routes/app_pages.dart';

class RegistrationController extends GetxController {
  late TextEditingController contactEdCon;
  late TextEditingController emailEdCon;
  late TextEditingController guardianConEdCon;
  late TextEditingController guardianEmailEdCon;
  final yearDropDownMenuList = ['100', '200', '300', '400', '500', '600'];
  final genderDropDownMenuList = ['Male', 'Female'];
  final programmeDropDownMenuList = [
    'BSc. Computer Engineering',
    'BSc. Biomedical Engineering',
    'BSc. Agricultural Engineering',
    'BSc. Food Processing Engineering',
    'BSc. Material Science Engineering'
  ];

  final genderDropDownValue = RxString("Male");
  final yearDropDownValue = RxString("100");
  final programmeDropdownValue = RxString("BSc. Computer Engineering");

  void yearSelected(String newElement) => yearDropDownValue.value = newElement;
  void genderSelected(String newElement) =>
      genderDropDownValue.value = newElement;
  void programmeSelected(String newElement) =>
      genderDropDownValue.value = newElement;

  void continueBtnClicked(){
      if (contactEdCon.text.isEmpty |
          emailEdCon.text.isEmpty |
          guardianConEdCon.text.isEmpty | guardianEmailEdCon.text.isEmpty) {
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
        Get.offAllNamed(Routes.DASHBOARD);
      
    }

  }

  @override
  void onInit() {
    contactEdCon = TextEditingController();
    emailEdCon = TextEditingController();
    guardianConEdCon = TextEditingController();
    guardianEmailEdCon = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    contactEdCon.dispose();
    emailEdCon.dispose();
    guardianConEdCon.dispose();
    guardianEmailEdCon.dispose();
    super.dispose();
  }
}
