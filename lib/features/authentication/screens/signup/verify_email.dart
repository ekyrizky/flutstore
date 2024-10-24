import 'package:flutstore/data/repositories/auth/auth_repository.dart';
import 'package:flutstore/features/authentication/controllers/signup/verify_email_controller.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => AuthRepository.instance.logout()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          children: [
            Image(
              width: FDeviceUtility.getScreenWidth() * 0.6,
              image: const AssetImage(FImages.deliveredEmailIllustration),
            ),
            const SizedBox(height: FSizes.spaceBtwSection),
            Text(
              FTexts.confirmEmailTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: FSizes.spaceBtwItems),
            Text(
              email ?? '',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: FSizes.spaceBtwItems),
            Text(
              FTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: FSizes.spaceBtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.checkEmailVerificationStatus(),
                child: const Text(FTexts.fContinue),
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => controller.sendEmailVerification(),
                child: const Text(FTexts.resendEmail),
              ),
            )
          ],
        ),
      ),
    );
  }
}
