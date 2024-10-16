import 'package:flutstore/common/widgets/chips/choice_chip.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/products/product_cards/product_price.dart';
import 'package:flutstore/common/widgets/texts/product_title_text.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Column(
      children: [
        FRoundedContainer(
          padding: const EdgeInsets.all(FSizes.md),
          backgroundColor: dark ? FColors.darkerGrey : FColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const SectionHeading(title: 'Variation', showActionButton: false),
                  const SizedBox(width: FSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(title: 'Price : ', smallSize: true),
                          Text(
                            '\$25',
                            style:
                                Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: FSizes.spaceBtwItems),
                          const ProductPriceText(
                            price: '20',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const ProductTitleText(
                title: 'This is the Description of the Product nd it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: FSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: FSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                FChoiceChip(text: 'Green', selected: false, onSelected: (value) {}),
                FChoiceChip(text: 'Blue', selected: true, onSelected: (value) {}),
                FChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: FSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                FChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                FChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                FChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
