import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/brands/brand_card.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return FRoundedContainer(
      showBorder: true,
      borderColor: FColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: FSizes.spaceBtwItems),
      child: Column(
        children: [
          BrandCard(showBorder: false),
          const SizedBox(height: FSizes.spaceBtwItems),
          Row(children: images.map((image) => brandTopProductImage(image, context)).toList())
        ],
      ),
    );
  }

  Widget brandTopProductImage(String image, context) {
    return Expanded(
      child: FRoundedContainer(
        height: 100,
        backgroundColor: FDeviceUtility.isDarkMode(context) ? FColors.darkerGrey : FColors.light,
        margin: EdgeInsets.only(right: FSizes.sm),
        padding: EdgeInsets.all(FSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
