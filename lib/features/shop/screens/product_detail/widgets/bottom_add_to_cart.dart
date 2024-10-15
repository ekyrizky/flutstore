import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: FSizes.defaultSpace, vertical: FSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? FColors.darkerGrey : FColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(FSizes.cardRadiusLg),
          topRight: Radius.circular(FSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircularIcon(
                icon: Iconsax.minus,
                backgroundColor: FColors.darkGrey,
                width: 40,
                height: 40,
                color: FColors.white,
              ),
              const SizedBox(width: FSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: FSizes.spaceBtwItems),
              const CircularIcon(
                icon: Iconsax.add,
                backgroundColor: FColors.black,
                width: 40,
                height: 40,
                color: FColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(FSizes.md),
              backgroundColor: FColors.black,
              side: const BorderSide(color: FColors.black),
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
