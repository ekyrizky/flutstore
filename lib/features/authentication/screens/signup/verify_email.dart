import 'package:flutstore/common/widgets/screen_success.dart';
import 'package:flutstore/features/authentication/screens/login/login.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
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
              'ekyrizky.com',
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
                onPressed: () => Get.to(() => SuccessScreen(
                      image: FImages.staticSuccessIllustration,
                      title: FTexts.yourAccountCreatedTitle,
                      subTitle: FTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )),
                child: const Text(FTexts.fContinue),
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(FTexts.resendEmail),
              ),
            )
          ],
        ),
      ),
    );
  }
}
