import 'package:flutstore/common/widgets/button_social.dart';
import 'package:flutstore/common/widgets/form_divider.dart';
import 'package:flutstore/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(FTexts.signUpTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: FSizes.spaceBtwSection),
              const FormSignUp(),
              const SizedBox(height: FSizes.spaceBtwSection),
              const FormDivider(dividerText: FTexts.orSignUpWith),
              const SizedBox(height: FSizes.spaceBtwSection),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
