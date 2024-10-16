import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/features/personalization/screens/address/add_new_address.dart';
import 'package:flutstore/features/personalization/screens/address/widgets/single_address.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        backgroundColor: FColors.primary,
        child: const Icon(Iconsax.add, color: FColors.white),
      ),
      appBar: FAppBar(
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: false),
              SingleAddress(selectedAddress: true),
            ],
          ),
        ),
      ),
    );
  }
}
