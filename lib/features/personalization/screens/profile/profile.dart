import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/images/circular_image.dart';
import 'package:flutstore/common/widgets/shimmer/shimmer_effect.dart';
import 'package:flutstore/common/widgets/texts/section_heading.dart';
import 'package:flutstore/features/personalization/controllers/user_controller.dart';
import 'package:flutstore/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:flutstore/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

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
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final image = networkImage.isNotEmpty ? networkImage : FImages.user;
                      return controller.imageUploading.value
                          ? const ShimmerEffect(width: 80, height: 80, radius: 80)
                          : FCircularImage(
                              image: image,
                              width: 80,
                              height: 80,
                              padding: 0,
                              isNetworkImage: networkImage.isNotEmpty,
                            );
                    }),
                    TextButton(
                      onPressed: () => controller.uploadUserProfilePicture(),
                      child: const Text('Change Profile Picture'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: FSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: FSizes.spaceBtwItems),
              const SectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: FSizes.spaceBtwItems),
              ProfileMenu(
                title: 'Name',
                value: controller.user.value.fullName,
                onPressed: () => Get.to(() => const ChangeName()),
              ),
              ProfileMenu(title: 'Username', value: controller.user.value.username, onPressed: () {}),
              const SizedBox(height: FSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: FSizes.spaceBtwItems),
              const SectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: FSizes.spaceBtwItems),
              ProfileMenu(title: 'User ID', value: controller.user.value.id, icon: Iconsax.copy, onPressed: () {}),
              ProfileMenu(title: 'E-Mail', value: controller.user.value.email, onPressed: () {}),
              ProfileMenu(title: 'Phone Number', value: controller.user.value.phoneNumber, onPressed: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(title: 'Date of Birth', value: '20 Oct, 1996', onPressed: () {}),
              const Divider(),
              const SizedBox(height: FSizes.spaceBtwItems),
              Center(
                child: TextButton(
                    onPressed: () => controller.deleteAccountWarningPopUp(),
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
