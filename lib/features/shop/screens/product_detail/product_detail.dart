import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/custom_shapes/edges/curved_edges.dart';
import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/common/widgets/images/rounded_image.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/product_detail_image_slider.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/product_meta_data.dart';
import 'package:flutstore/features/shop/screens/product_detail/widgets/rating_share_widget.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: FSizes.defaultSpace,
                left: FSizes.defaultSpace,
                bottom: FSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  RatingAndShare(),
                  ProductMetaData(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
