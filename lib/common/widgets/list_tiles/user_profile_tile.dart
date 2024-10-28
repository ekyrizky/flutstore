import 'package:flutstore/common/widgets/images/circular_image.dart';
import 'package:flutstore/common/widgets/shimmer/shimmer_effect.dart';
import 'package:flutstore/features/personalization/controllers/user_controller.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
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
      leading: Obx(() {
        final networkImage = controller.user.value.profilePicture;
        final image = networkImage.isNotEmpty ? networkImage : FImages.user;
        return controller.imageUploading.value
            ? const ShimmerEffect(width: 50, height: 50, radius: 50)
            : FCircularImage(
                image: image,
                width: 50,
                height: 50,
                padding: 0,
                isNetworkImage: networkImage.isNotEmpty,
              );
      }),
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
