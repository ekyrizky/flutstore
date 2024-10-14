import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/images/circular_image.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(FSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const FCircularImage(image: FImages.user, width: 80, height: 80),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture'))
                  ],
                ),
              ),
              const SizedBox(height: FSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: FSizes.spaceBtwItems),
              const SectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: FSizes.spaceBtwItems),
              ProfileMenu(title: 'Name', value: 'Rizky Ananda', onPressed: () {}),
              ProfileMenu(title: 'Username', value: 'Ekyrizky', onPressed: () {}),
              const SizedBox(height: FSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: FSizes.spaceBtwItems),
              const SectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: FSizes.spaceBtwItems),
              ProfileMenu(title: 'User ID', value: '1234', icon: Iconsax.copy, onPressed: () {}),
              ProfileMenu(title: 'E-Mail', value: 'ekyrizky.com', onPressed: () {}),
              ProfileMenu(title: 'Phone Number', value: '+6285637462718', onPressed: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(title: 'Date of Birth', value: '20 Oct, 1996', onPressed: () {}),
              const Divider(),
              const SizedBox(height: FSizes.spaceBtwItems),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Close Account',
                      style: TextStyle(color: Colors.red),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
