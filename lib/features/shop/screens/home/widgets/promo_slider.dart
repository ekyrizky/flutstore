import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/features/shop/controller/home_controller.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: FSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  FCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i ? FColors.primary : FColors.grey,
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
