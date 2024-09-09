import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckBox extends StatelessWidget {
  const TermsAndConditionCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: FSizes.spaceBtwItems),
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '${FTexts.iAggreeTo} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: '${FTexts.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? FColors.white : FColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? FColors.white : FColors.primary),
            ),
            TextSpan(
              text: '${FTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: FTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? FColors.white : FColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? FColors.white : FColors.primary),
            ),
          ],
        ))
      ],
    );
  }
}
