import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/custom_shapes/edges/curved_edges.dart';
import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return CurvedEdge(
      child: Container(
        color: dark ? FColors.darkerGrey : FColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(FSizes.productImageRadius),
                child: Center(child: Image(image: AssetImage(FImages.productImage5))),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: FSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(width: FSizes.spaceBtwItems),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => RoundedImage(
                    width: 80,
                    backgroundColor: dark ? FColors.dark : FColors.white,
                    border: Border.all(color: FColors.primary),
                    padding: const EdgeInsets.all(FSizes.sm),
                    imageUrl: FImages.productImage6,
                  ),
                ),
              ),
            ),
            const FAppBar(
              showBackArrow: true,
              actions: [
                CircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
