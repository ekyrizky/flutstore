import 'package:flutstore/common/styles/spacing_styles.dart';
import 'package:flutstore/common/widgets/button_social.dart';
import 'package:flutstore/common/widgets/form_divider.dart';
import 'package:flutstore/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutstore/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              DividerForm(dividerText: FTexts.orSignInWith),
              SizedBox(height: FSizes.spaceBtwSection),
              SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
