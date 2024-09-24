import 'package:flutstore/common/widgets/custom_shapes/containers/primary_container.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutstore/common/widgets/layout/gird_layout.dart';
import 'package:flutstore/common/widgets/products/product_cart_vertical.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutstore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutstore/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: FSizes.spaceBtwSection),
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: FSizes.spaceBtwSection),
                  Padding(
                    padding: EdgeInsets.only(left: FSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: FColors.white,
                        ),
                        SizedBox(height: FSizes.spaceBtwItems),
                        HomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(FSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      FImages.promoBanner1,
                      FImages.promoBanner2,
                      FImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: FSizes.spaceBtwSection),
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCartVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
