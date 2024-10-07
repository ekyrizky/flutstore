import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FTabBar extends StatelessWidget implements PreferredSizeWidget {
  const FTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Material(
      color: dark ? FColors.black : FColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: FColors.primary,
        labelColor: dark ? FColors.white : FColors.primary,
        unselectedLabelColor: FColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(FDeviceUtility.getAppbarHeight());
}
