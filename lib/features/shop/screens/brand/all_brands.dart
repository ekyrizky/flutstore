import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/brands/brand_card.dart';
import 'package:flutstore/common/widgets/layout/gird_layout.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/features/shop/screens/brand/brand_products.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: Column(
          children: [
            const SectionHeading(title: 'Brands', showActionButton: false),
            const SizedBox(height: FSizes.spaceBtwItems),
            GridLayout(
              itemCount: 10,
              mainAxisExtent: 80,
              itemBuilder: (context, index) => BrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const BrandProductsScreen()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
