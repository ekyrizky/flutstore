import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Rizky Ananda', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: FSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: FSizes.spaceBtwItems),
            Text('+6285647362739', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: FSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: FSizes.spaceBtwItems),
            Expanded(
              child: Text(
                'MNC Center Jalan Kebon Sirih Kav. 17-19, Jakarta',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: false,
              ),
            )
          ],
        ),
      ],
    );
  }
}
