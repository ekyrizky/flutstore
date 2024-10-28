import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/features/personalization/controllers/update_name_controller.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutstore/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());

    return Scaffold(
      appBar: FAppBar(
        title: Text('Change Name', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                'Use real name for easy verification. This name will appear on several pages.',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: FSizes.spaceBtwSection),
              Form(
                key: controller.updateUserNameFormKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) => FValidator.validateEmptyText('First Name', value),
                      expands: false,
                      decoration: const InputDecoration(labelText: FTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(height: FSizes.spaceBtwInputFields),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) => FValidator.validateEmptyText('Last Name', value),
                      expands: false,
                      decoration: const InputDecoration(labelText: FTexts.lastName, prefixIcon: Icon(Iconsax.user)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: FSizes.spaceBtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => controller.updateUserName(), child: const Text('Save')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
