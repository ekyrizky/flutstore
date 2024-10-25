import 'package:flutstore/features/authentication/controllers/login/login_controller.dart';
import 'package:flutstore/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:flutstore/features/authentication/screens/signup/signup.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: FSizes.spaceBtwSection),
        child: Column(
          children: [
            TextFormField(
              controller: controller.email,
              validator: (value) => FValidator.validateEmail(value),
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: FTexts.email,
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwInputFields),

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
            const SizedBox(height: FSizes.spaceBtwInputFields / 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value,
                      ),
                    ),
                    const Text(FTexts.rememberMe)
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(FTexts.forgetPassword),
                )
              ],
            ),
            const SizedBox(height: FSizes.spaceBtwSection),

            // SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.emailAndPasswordSignIn(),
                child: const Text(FTexts.signIn),
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUpScreen()),
                child: const Text(FTexts.createAccount),
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwSection),
          ],
        ),
      ),
    );
  }
}
