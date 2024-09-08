import 'package:flutstore/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Positioned(
      right: FSizes.defaultSpace,
      bottom: FDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? FColors.primary : Colors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
