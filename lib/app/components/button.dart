import 'package:flutter/material.dart';
import 'package:ugmis/resources/app_styles.dart';

import '../../resources/app_colors.dart';
import '../../resources/sizes.dart';

class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({super.key, required this.label, required this.onPressed});
  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Sizes.radiusExtraSmall,
          ),
        ),
        fixedSize: Size(
          MediaQuery.of(context).size.width * 0.85,
          Sizes.buttonHeight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Center(
              child: Text(
                label,
                style: AppStyles.buttonLabelStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const CircleAvatar(
            backgroundColor: AppColors.primaryShade400,
            radius: 15.0,
            child: Icon(
              Icons.arrow_forward,
              size: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
