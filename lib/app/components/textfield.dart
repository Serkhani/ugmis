import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/app_colors.dart';
import '../../resources/sizes.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {super.key, required this.labelText, required this.hintText, this.obscureText=false});
  final String labelText;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 8,
      obscureText: obscureText,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      keyboardType: TextInputType.number,
      buildCounter: (context,
          {required currentLength, required isFocused, maxLength}) {
        return Container();
      },
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        hintText: hintText,
        hintStyle: const TextStyle(fontStyle: FontStyle.italic),
        fillColor: AppColors.textInputField,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Sizes.radiusMini),
          borderSide: const BorderSide(color: AppColors.textInputFieldBorder),
        ),
      ),
      scrollPadding: const EdgeInsets.all(10.0),
    );
  }
}
