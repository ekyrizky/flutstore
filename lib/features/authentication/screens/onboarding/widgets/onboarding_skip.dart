import 'package:flutstore/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: FDeviceUtility.getAppbarHeight(),
      right: FSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}
