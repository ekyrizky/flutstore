import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutstore/common/widgets/success_screen/success_screen.dart';
import 'package:flutstore/data/repositories/auth/auth_repository.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/popups/full_screen_loader.dart';
import 'package:flutstore/utils/popups/loaders.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthRepository.instance.sendEmailVerification();
      Loaders.successSnackBar(
        title: 'Email Sent',
        message: 'Please check your inbox and verify your email.',
      );
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  setTimerForAutoRedirect() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) async {
        await FirebaseAuth.instance.currentUser?.reload();
        final user = FirebaseAuth.instance.currentUser;
        if (user?.emailVerified ?? false) {
          timer.cancel();
          Get.off(
            () => SuccessScreen(
              image: FImages.successfulRegisterAnimation,
              title: FTexts.yourAccountCreatedTitle,
              subTitle: FTexts.yourAccountCreatedTitle,
              onPressed: () => AuthRepository.instance.screenRedirect(),
            ),
          );
        }
      },
    );
  }

  checkEmailVerificationStatus() async {
    await FirebaseAuth.instance.currentUser?.reload();
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      Get.off(
        () => SuccessScreen(
          image: FImages.successfulRegisterAnimation,
          title: FTexts.yourAccountCreatedTitle,
          subTitle: FTexts.yourAccountCreatedTitle,
          onPressed: () => AuthRepository.instance.screenRedirect(),
        ),
      );
    }
  }
}
