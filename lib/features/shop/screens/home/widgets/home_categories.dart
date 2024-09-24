import 'package:flutstore/common/widgets/image_texts/vertical_image_text.dart';
import 'package:flutstore/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: FImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
