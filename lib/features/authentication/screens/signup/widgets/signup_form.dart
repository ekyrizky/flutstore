import 'package:flutstore/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FormSignUp extends StatelessWidget {
  const FormSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: FTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: FSizes.spaceBtwItems),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: FTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: FTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwSection),
          const TermsAndConditionCheckBox(),
          const SizedBox(height: FSizes.spaceBtwSection),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(FTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
