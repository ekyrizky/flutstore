import 'package:flutstore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Column(
      children: [
        SectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: FSizes.spaceBtwItems / 2),
        Row(
          children: [
            FRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? FColors.light : FColors.white,
              padding: const EdgeInsets.all(FSizes.sm),
              child: const Image(
                image: AssetImage(FImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: FSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge)
          ],
        ),
      ],
    );
  }
}
