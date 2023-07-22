import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/components/ses_logo.dart';

import '../../../../app/components/textfield.dart';
import '../../../../resources/app_strings.dart';
import '../../../../resources/sizes.dart';
import '../../../../resources/app_styles.dart';

import '../../../components/button.dart';
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
              const SESLogo(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 45.0),
                child: Text(AppStrings.welcome,
                style: AppStyles.welcomeStyle,
                textAlign: TextAlign.center,),
              ),
              TextInputField(
                labelText: AppStrings.studentId,
                hintText: AppStrings.studentIdEg,
                textEdCon: controller.studentIdCon,
                maxLength: 8,
                obscureText: controller.obscureStudentTextField,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: TextInputField(
                  labelText: AppStrings.pin,
                  hintText: AppStrings.pinPinEg,
                  textEdCon: controller.pinCon,
                  maxLength: 5,
                  obscureText: controller.obscurePinTextField,
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 45.0),
                child: CustomButtonBar(
                  label: AppStrings.logIn,
                  isLoading: controller.isLoading,
                  onPressed: ()=> controller.logIn(),
                ),
              ),
              // RichText(
              //   textAlign: TextAlign.center,
                
              //   text: TextSpan(
              //     style: AppStyles.inputTextLabelStyle,
              //     children: [
              //       const TextSpan(
              //         text: AppStrings.noAccount,
              //         style: TextStyle(color: Colors.black)
              //       ),
              //       TextSpan(
              //         text: AppStrings.registerNow,
              //         style: const TextStyle(
              //           color: Color(0xff3d55f0),
              //         ),
              //         recognizer: TapGestureRecognizer()
              //           ..onTap = ()=>controller.onRegisterNowClick()
              //       ),
                    
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
