import 'package:flutstore/common/widgets/custom_shapes/containers/primary_container.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutstore/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: FSizes.spaceBtwSection),
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: FSizes.spaceBtwSection),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
