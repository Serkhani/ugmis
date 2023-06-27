import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ugmis/resources/app_colors.dart';
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
          child: TextFormField(
            enableSuggestions: true,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: 8,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            keyboardType: TextInputType.number,
            buildCounter: (context, {required currentLength, required isFocused, maxLength}) {
              return Container();
            },
            decoration: InputDecoration(
              filled: true,
              labelText: 'Name',
              hintText: 'Kwaku Frimpong',
              hintStyle: const TextStyle(fontStyle: FontStyle.italic),
              fillColor: AppColors.textInputField,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Sizes.radiusMini),
                borderSide: const BorderSide(
                  color: AppColors.textInputFieldBorder
                ),
              ),
            ),
            scrollPadding: const EdgeInsets.all(10.0),
          ),
        )
      ),
    );
  }
}
