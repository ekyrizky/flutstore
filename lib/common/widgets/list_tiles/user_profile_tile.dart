import 'package:flutstore/common/widgets/images/circular_image.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const FCircularImage(
        image: FImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Ekyrizky',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: FColors.white),
      ),
      subtitle: Text(
        'Ekyrizky@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: FColors.white),
      ),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit, color: FColors.white)),
    );
  }
}
