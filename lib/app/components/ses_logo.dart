import 'package:flutter/material.dart';

import '../../resources/app_images.dart';
import '../../resources/app_strings.dart';
import '../../resources/app_styles.dart';

class SESLogo extends StatelessWidget {
  const SESLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.sesLogo),
        const Text(
          AppStrings.ses,
          style: AppStyles.sesStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}