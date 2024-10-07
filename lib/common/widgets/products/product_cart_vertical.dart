import 'package:flutstore/common/styles/shadows.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/common/widgets/products/product_price.dart';
import 'package:flutstore/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:flutstore/common/widgets/texts/product_title_text.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCartVertical extends StatelessWidget {
  const ProductCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [FShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(FSizes.productImageRadius),
          color: dark ? FColors.darkerGrey : FColors.white,
        ),
        child: Column(
          children: [
            FRoundedContainer(
              width: 180,
              padding: const EdgeInsets.all(FSizes.sm),
              backgroundColor: dark ? FColors.dark : FColors.light,
              child: Stack(
                children: [
                  const RoundedImage(imageUrl: FImages.productImage1, applyImageRadius: true),
                  Positioned(
                    top: 12,
                    child: FRoundedContainer(
                      radius: FSizes.sm,
                      backgroundColor: FColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: FSizes.sm, vertical: FSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(color: FColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems / 2),
            const Padding(
              padding: EdgeInsets.only(left: FSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: FSizes.spaceBtwItems / 2),
                  BrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: FSizes.sm),
                  child: ProductPrice(price: '35.5'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: FColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(FSizes.cardRadiusMd),
                      bottomRight: Radius.circular(FSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: FSizes.iconLg * 1.2,
                    height: FSizes.iconLg * 1.2,
                    child: Center(child: Icon(Iconsax.add, color: FColors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
