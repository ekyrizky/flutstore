import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/common/widgets/texts/brand_text_with_verified_icon.dart';
import 'package:flutstore/common/widgets/texts/product_title_text.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Row(
      children: [
        RoundedImage(
          imageUrl: FImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(FSizes.sm),
          backgroundColor: dark ? FColors.darkerGrey : FColors.light,
        ),
        const SizedBox(width: FSizes.spaceBtwItems),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: ProductTitleText(title: 'Black Sport Shoes', maxLines: 1)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
