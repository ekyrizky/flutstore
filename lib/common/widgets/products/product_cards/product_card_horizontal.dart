import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/common/widgets/products/product_cards/product_price.dart';
import 'package:flutstore/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:flutstore/common/widgets/texts/product_title_text.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(FSizes.productImageRadius),
        color: dark ? FColors.darkerGrey : FColors.softGrey,
      ),
      child: Row(
        children: [
          FRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(FSizes.sm),
            backgroundColor: dark ? FColors.dark : FColors.white,
            child: Stack(
              children: [
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: RoundedImage(imageUrl: FImages.productImage1, applyImageRadius: true),
                ),
                Positioned(
                  top: 12,
                  child: FRoundedContainer(
                    radius: FSizes.sm,
                    backgroundColor: FColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: FSizes.sm, vertical: FSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: FColors.black)),
                  ),
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: FSizes.sm, left: FSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(title: 'Green Nike Half Sleeves Shirt', smallSize: true),
                      SizedBox(height: FSizes.spaceBtwItems / 2),
                      BrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: ProductPriceText(price: '256.0')),
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
          )
        ],
      ),
    );
  }
}
