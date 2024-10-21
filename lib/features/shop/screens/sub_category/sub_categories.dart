import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              const RoundedImage(width: double.infinity, imageUrl: FImages.promoBanner1, applyImageRadius: true),
              const SizedBox(height: FSizes.spaceBtwSection),
              Column(
                children: [
                  SectionHeading(title: 'Sport shirt', onPressed: () {}),
                  const SizedBox(height: FSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => const SizedBox(width: FSizes.spaceBtwItems),
                      itemBuilder: (_, index) => const ProductCardHorizontal(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
