import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/app_bar/tabbar.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutstore/common/widgets/layout/gird_layout.dart';
import 'package:flutstore/common/widgets/brands/brand_card.dart';
import 'package:flutstore/common/widgets/products/cart.icon.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/features/shop/screens/store/widgets/category_tab.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: FAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScroller) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: FDeviceUtility.isDarkMode(context) ? FColors.black : FColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(FSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: FSizes.spaceBtwItems),
                      const SearchContainer(
                        text: '',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: FSizes.spaceBtwSection),
                      SectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: FSizes.spaceBtwItems / 1.5),
                      GridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const BrandCard(showBorder: false);
                        },
                      )
                    ],
                  ),
                ),
                bottom: const FTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronic')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
