import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return FRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(FSizes.md),
      width: double.infinity,
      backgroundColor: selectedAddress ? FColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? FColors.darkerGrey
              : FColors.grey,
      margin: const EdgeInsets.only(bottom: FSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? FColors.light
                      : FColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rizky Ananda',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: FSizes.sm / 2),
              const Text(
                '+6285647362739',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: FSizes.sm / 2),
              const Text(
                'MNC Center Jalan Kebon Sirih Kav. 17-19, Jakarta',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
