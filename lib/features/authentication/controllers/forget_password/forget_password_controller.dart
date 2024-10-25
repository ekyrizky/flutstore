import 'package:flutstore/data/repositories/auth/auth_repository.dart';
import 'package:flutstore/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/helpers/network_manager.dart';
import 'package:flutstore/utils/popups/full_screen_loader.dart';
import 'package:flutstore/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      FullScreenLoader.openLoadingDialog('Processing your request...', FImages.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      if (!forgetPasswordFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      await AuthRepository.instance.sendPasswordResetEmail(email.text.trim());
      FullScreenLoader.stopLoading();
      Loaders.successSnackBar(
        title: 'Email Sent',
        message: 'Email link sent to reset your password.',
      );
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      FullScreenLoader.openLoadingDialog('Processing your request...', FImages.docerAnimation);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      await AuthRepository.instance.sendPasswordResetEmail(email);
      FullScreenLoader.stopLoading();
      Loaders.successSnackBar(
        title: 'Email Sent',
        message: 'Email link sent to reset your password.',
      );
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
