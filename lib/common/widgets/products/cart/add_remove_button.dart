import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: FSizes.md,
          color: dark ? FColors.white : FColors.black,
          backgroundColor: dark ? FColors.darkerGrey : FColors.light,
        ),
        const SizedBox(width: FSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: FSizes.spaceBtwItems),
        const CircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: FSizes.md,
          color: FColors.white,
          backgroundColor: FColors.primary,
        ),
      ],
    );
  }
}
