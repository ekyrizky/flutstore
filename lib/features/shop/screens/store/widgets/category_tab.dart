import 'package:flutstore/common/widgets/brands/brand_show_case.dart';
import 'package:flutstore/common/widgets/layout/gird_layout.dart';
import 'package:flutstore/common/widgets/products/product_cart_vertical.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowcase(images: [FImages.productImage3, FImages.productImage2, FImages.productImage1]),
              const BrandShowcase(images: [FImages.productImage3, FImages.productImage2, FImages.productImage1]),
              const SizedBox(height: FSizes.spaceBtwItems),
              SectionHeading(title: 'You might like', showActionButton: true, onPressed: () {}),
              const SizedBox(height: FSizes.spaceBtwItems),
              GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCartVertical()),
              const SizedBox(height: FSizes.spaceBtwSection),
            ],
          ),
        ),
      ],
    );
  }
}
