import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ugmis/resources/app_styles.dart';

import '../../resources/app_colors.dart';
import '../../resources/sizes.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.textEdCon,
      this.maxLength = 200,
      required this.obscureText});
  final String labelText;
  final String hintText;
  final RxBool obscureText;
  final int maxLength;
  final TextEditingController textEdCon;

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextFormField(
          controller: textEdCon,
          enableSuggestions: true,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLength: maxLength,
          obscureText: obscureText.value,
          // obscureText: controller.obscurePinTextField.value,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          inputFormatters: maxLength<=8
              ? [FilteringTextInputFormatter.digitsOnly]
              : null,
          keyboardType: TextInputType.number,
          buildCounter: (context,
              {required currentLength, required isFocused, maxLength}) {
            return null;
          },
          decoration: InputDecoration(
            suffixIcon: obscureText.value | (maxLength<=5)
            // suffixIcon: controller.obscurePinTextField.value
            ? IconButton(
                splashRadius: 2.0,
                onPressed: () {
                  obscureText.value = !obscureText.value;
                  // controller.obscurePinTextField.value =
                  //     !controller.obscurePinTextField.value;
                },
                icon: obscureText.value
                // icon: controller.obscurePinTextField.value
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),)
            : null,
        filled: true,
        labelText: labelText,
        labelStyle: AppStyles.inputTextLabelStyle,
        hintText: hintText,
        hintStyle: const TextStyle(fontStyle: FontStyle.italic),
        fillColor: AppColors.textInputField,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.radiusMini),
          borderSide: const BorderSide(color: AppColors.textInputFieldBorder),
        ),
      ),
      scrollPadding: const EdgeInsets.all(10.0),
    ));
  }
}
