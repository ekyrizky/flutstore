import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/icons/circular_icon.dart';
import 'package:flutstore/common/widgets/layout/gird_layout.dart';
import 'package:flutstore/common/widgets/products/product_cart_vertical.dart';
import 'package:flutstore/features/shop/screens/home/home.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: Text('Whishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(icon: Iconsax.add, onPressed: () => Get.to(() => const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const ProductCartVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
