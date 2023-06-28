import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/resources/sizes.dart';

import '../../resources/app_colors.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton(
      {super.key,
      required this.labelText,
      required this.data,
      required this.list,
      required this.onPressed});
  final String labelText;
  final RxString data;
  final List<String> list;
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: labelText,
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: AppColors.greyNormal,
              width: 1.0,
            ),
          ),
        ),
        value: data.value,
        onChanged: (newValue) => onPressed,
        items: list
            .map(
              (String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ),
            )
            .toList(),
      ),
    );
  }
}
