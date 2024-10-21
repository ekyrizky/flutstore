import 'package:flutstore/common/widgets/layout/gird_layout.dart';
import 'package:flutstore/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
              .map((option) => DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: FSizes.spaceBtwSection),
        GridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => const ProductCardVertical(),
        )
      ],
    );
  }
}