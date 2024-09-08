import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Positioned(
      bottom: FDeviceUtility.getBottomNavigationBarHeight(),
      left: FSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect:
            ExpandingDotsEffect(activeDotColor: dark ? FColors.light : FColors.dark, dotHeight: 6),
      ),
    );
  }
}
