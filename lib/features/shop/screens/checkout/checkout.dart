import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/products/cart/coupon_code.dart';
import 'package:flutstore/common/widgets/success_screen/success_screen.dart';
import 'package:flutstore/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:flutstore/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:flutstore/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:flutstore/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:flutstore/navigation_menu.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Scaffold(
      appBar: FAppBar(
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              const CartItems(showAddRemoveButtons: false),
              const SizedBox(height: FSizes.spaceBtwSection),
              const CouponCode(),
              const SizedBox(height: FSizes.spaceBtwSection),
              FRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(FSizes.md),
                backgroundColor: dark ? FColors.black : FColors.white,
                child: Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(height: FSizes.spaceBtwItems),
                    Divider(),
                    SizedBox(height: FSizes.spaceBtwItems),
                    BillingPaymentSection(),
                    SizedBox(height: FSizes.spaceBtwItems),
                    BillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(FSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: FImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
