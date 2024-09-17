import 'package:flutstore/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutstore/common/widgets/custom_shapes/edges/curved_edges.dart';
import 'package:flutstore/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdge(
      child: SizedBox(
        height: 400,
        child: Container(
          color: FColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: FCircularContainer(backgroundColor: FColors.white.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: FCircularContainer(backgroundColor: FColors.white.withOpacity(0.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
