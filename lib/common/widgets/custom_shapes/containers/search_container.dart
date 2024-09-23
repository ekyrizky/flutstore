import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: FSizes.defaultSpace),
      child: Container(
        width: FDeviceUtility.getScreenWidth(),
        padding: EdgeInsets.all(FSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? FColors.dark
                  : FColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(FSizes.md),
          border: showBorder ? Border.all(color: FColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: FColors.darkGrey),
            const SizedBox(width: FSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
