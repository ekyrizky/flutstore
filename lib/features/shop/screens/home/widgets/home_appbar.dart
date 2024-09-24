import 'package:flutstore/common/widgets/app_bar/appbar.dart';
import 'package:flutstore/common/widgets/products/cart.icon.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            FTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(color: FColors.grey),
          ),
          Text(
            FTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: FColors.white),
          ),
        ],
      ),
      actions: [CartCounterIcon(color: FColors.white, onPressed: () {})],
    );
  }
}
