import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final yearDropDownMenuList = ['100', '200', '300', '400', '500', ' 600'];
  final genderDropDownMenuList = ['Male', 'Female'];
  final programmeDropDownMenuList = [
    'BSc. Computer Engineering',
    'BSc. Biomedical Engineering',
    'BSc. Agricultural Engineering',
    'BSc. Food Processing Engineering'
        'BSc. Material Science Engineering'
  ];

  final genderDropDownValue = RxString("Male");
  final yearDropDownValue = RxString("100");

  void yearSelected(String newElement) => yearDropDownValue.value = newElement;
  void genderSelected(String newElement) => genderDropDownValue.value = newElement;
}
