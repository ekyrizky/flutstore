import 'package:flutstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutstore/utils/helpers/color_helper.dart';
import 'package:flutter/material.dart';

class FChoiceChip extends StatelessWidget {
  const FChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = FColorHelper.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        labelStyle: TextStyle(color: selected ? FColors.white : null),
        onSelected: onSelected,
        avatar:
            isColor ? FCircularContainer(width: 50, height: 50, backgroundColor: FColorHelper.getColor(text)!) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? FColorHelper.getColor(text)! : null,
      ),
    );
  }
}
