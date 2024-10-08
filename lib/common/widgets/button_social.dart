import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: FSizes.iconMd,
              height: FSizes.iconMd,
              image: AssetImage(FImages.google),
            ),
          ),
        ),
        const SizedBox(width: FSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: FColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: FSizes.iconMd,
              height: FSizes.iconMd,
              image: AssetImage(FImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
