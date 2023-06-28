import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ugmis/app/components/dropdownbutton.dart';
import 'package:ugmis/resources/app_colors.dart';
import 'package:ugmis/resources/app_strings.dart';
import 'package:ugmis/resources/sizes.dart';
import '../../../../app/components/ses_logo.dart';
import '../../../../app/components/textfield.dart';

import '../controllers/registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.marginMedium),
        child: Column(
          children: [
            const SESLogo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: CustomDropDownButton(labelText: AppStrings.year, data: controller.yearDropDownValue, list: controller.yearDropDownMenuList, onPressed: controller.yearSelected)
                  
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
