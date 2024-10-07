import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/constants/sizes.dart';
import 'package:flutstore/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FCircularImage extends StatelessWidget {
  const FCircularImage({
    super.key,
    required this.image,
    this.width = 56,
    this.height = 56,
    this.padding = FSizes.sm,
    this.fit = BoxFit.cover,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
  });

  final String image;
  final double width, height, padding;
  final BoxFit? fit;
  final bool isNetworkImage;
  final Color? overlayColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = FDeviceUtility.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (dark ? FColors.black : FColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          image: isNetworkImage ? AssetImage(image) : AssetImage(image) as ImageProvider,
          fit: fit,
          color: overlayColor,
        ),
      ),
    );
  }
}
