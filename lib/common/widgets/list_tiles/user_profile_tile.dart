import 'package:flutstore/common/widgets/images/circular_image.dart';
import 'package:flutstore/features/personalization/controllers/user_controller.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return ListTile(
      leading: const FCircularImage(
        image: FImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        controller.user.value.fullName,
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: FColors.white),
      ),
      subtitle: Text(
        controller.user.value.email,
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: FColors.white),
      ),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: FColors.white)),
    );
  }
}
