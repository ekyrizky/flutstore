import 'package:flutstore/common/widgets/products/cart/add_remove_button.dart';
import 'package:flutstore/common/widgets/products/cart/cart_item.dart';
import 'package:flutstore/common/widgets/products/product_cards/product_price.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: FSizes.spaceBtwSection),
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButtons) const SizedBox(height: FSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    ProductQuantityWithAddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '256'),
              ],
            )
        ],
      ),
    );
  }
}
