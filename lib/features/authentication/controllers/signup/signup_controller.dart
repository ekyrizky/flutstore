import 'package:flutstore/data/repositories/auth/auth_repository.dart';
import 'package:flutstore/data/repositories/user/user_repository.dart';
import 'package:flutstore/features/authentication/models/user_model.dart';
import 'package:flutstore/features/authentication/screens/signup/verify_email.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/helpers/network_manager.dart';
import 'package:flutstore/utils/popups/full_screen_loader.dart';
import 'package:flutstore/utils/popups/loaders.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNumber = TextEditingController();
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      FullScreenLoader.openLoadingDialog('We are processing your information...', FImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }

      if (!signUpFormKey.currentState!.validate()) {
        FullScreenLoader.stopLoading();
        return;
      }

      if (!privacyPolicy.value) {
        FullScreenLoader.stopLoading();

        Loaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use.',
        );
        return;
      }

      final userCredential = await AuthRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepo = Get.put(UserRepository());
      await userRepo.saveUserRecord(newUser);

      FullScreenLoader.stopLoading();
      Loaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue.',
      );

      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      FullScreenLoader.stopLoading();
      Loaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
