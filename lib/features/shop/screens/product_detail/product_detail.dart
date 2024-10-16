import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/bottom_add_to_cart.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/product_attributes.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:flutstore/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                right: FSizes.defaultSpace,
                left: FSizes.defaultSpace,
                bottom: FSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  const SizedBox(height: FSizes.spaceBtwSection),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: FSizes.spaceBtwSection),
                  const SectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: FSizes.spaceBtwItems),
                  const ReadMoreText(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: FSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionHeading(title: 'Reviews(199)', showActionButton: false),
                      IconButton(
                          onPressed: () => Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(Iconsax.arrow_right_3, size: 18))
                    ],
                  ),
                  const SizedBox(height: FSizes.spaceBtwSection),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
