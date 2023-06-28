import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/components/button.dart';
import 'package:ugmis/app/components/textfield.dart';
import 'package:ugmis/resources/app_styles.dart';

import '../../../../app/components/dropdownbutton.dart';
import '../../../../app/components/ses_logo.dart';
import '../../../../resources/app_strings.dart';
import '../../../../resources/sizes.dart';
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
            const Padding(
              padding:  EdgeInsets.only(bottom: 16.0),
              child: SESLogo(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: Sizes.textInputHeight,
                    child: CustomDropDownButton(
                        labelText: AppStrings.year,
                        data: controller.yearDropDownValue,
                        list: controller.yearDropDownMenuList,
                        onPressed: controller.yearSelected)),
                SizedBox(
                    height: Sizes.textInputHeight,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: CustomDropDownButton(
                        labelText: AppStrings.gender,
                        data: controller.genderDropDownValue,
                        list: controller.genderDropDownMenuList,
                        onPressed: controller.genderSelected)),
              ],
            ),
            TextInputField(
              labelText: AppStrings.contact,
              hintText: AppStrings.contactEg,
              textEdCon: controller.contactEdCon,
              obscureText: RxBool(false),
            ),
            TextInputField(
              labelText: AppStrings.email,
              hintText: AppStrings.emailEg,
              textEdCon: controller.emailEdCon,
              obscureText: RxBool(false),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomDropDownButton(
                labelText: AppStrings.programme,
                data: controller.programmeDropdownValue,
                list: controller.programmeDropDownMenuList,
                onPressed: controller.programmeSelected,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              width: MediaQuery.of(context).size.width,
              child: const Text(
                AppStrings.guardianInfo,
                style: AppStyles.inputTextLabelStyle,
              ),
            ),
            TextInputField(
              labelText: AppStrings.guardianName,
              hintText: AppStrings.guardianName,
              textEdCon: controller.guardianConEdCon,
              obscureText: RxBool(false),
            ),
            TextInputField(
              labelText: AppStrings.email,
              hintText: AppStrings.emailEg,
              textEdCon: controller.guardianEmailEdCon,
              obscureText: RxBool(false),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: CustomButtonBar(
                  label: AppStrings.continueBtnLabel,
                  onPressed: controller.continueBtnClicked),
            ),
          ],
        ),
      ),
    );
  }
}
