import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/images/circular_image.dart';
import 'package:flutstore/common/widgets/products/product_price.dart';
import 'package:flutstore/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:flutstore/common/widgets/texts/product_title_text.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/enums.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            FRoundedContainer(
              radius: FSizes.sm,
              backgroundColor: FColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: FSizes.sm, vertical: FSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: FColors.black),
              ),
            ),
            const SizedBox(width: FSizes.spaceBtwItems),
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: FSizes.spaceBtwItems),
            const ProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(width: FSizes.spaceBtwItems / 1.5),
        const ProductTitleText(title: 'Green Nike Sport Shirt'),
        const SizedBox(width: FSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: FSizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(width: FSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            FCircularImage(
              width: 32,
              height: 32,
              image: FImages.nike,
              overlayColor: dark ? FColors.white : FColors.black,
            ),
            const BrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
