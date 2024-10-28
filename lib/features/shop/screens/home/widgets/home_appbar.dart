import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/products/cart/cart.icon.dart';
import 'package:flutstore/common/widgets/shimmer/shimmer_effect.dart';
import 'package:flutstore/features/personalization/controllers/user_controller.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    
    return FAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: FColors.grey),
          ),
          Obx(
            () {
              if (controller.profileLoading.value) {
                return const ShimmerEffect(width: 80, height: 15);
              } else {
                return Text(
                  controller.user.value.fullName,
                  style: Theme.of(context).textTheme.headlineSmall!.apply(color: FColors.white),
                );
              }
            },
          ),
        ],
      ),
      actions: [CartCounterIcon(color: FColors.white, onPressed: () {})],
    );
  }
}
