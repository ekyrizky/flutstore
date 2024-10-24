import 'package:flutstore/features/authentication/controllers/signup/signup_controller.dart';
import 'package:flutstore/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());

    return Form(
      key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => FValidator.validateEmptyText('First name', value),
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
                  controller: controller.lastName,
                  validator: (value) => FValidator.validateEmptyText('Last name', value),
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
            controller: controller.username,
            validator: (value) => FValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          TextFormField(
            controller: controller.email,
            validator: (value) => FValidator.validateEmail(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => FValidator.validatePhoneNumber(value),
            expands: false,
            decoration: const InputDecoration(
              labelText: FTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwItems),
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => FValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: FTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                ),
              ),
            ),
          ),
          const SizedBox(height: FSizes.spaceBtwSection),
          const TermsAndConditionCheckBox(),
          const SizedBox(height: FSizes.spaceBtwSection),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(FTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
