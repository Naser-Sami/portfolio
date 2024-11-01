import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '/core/_core.dart';

class NeumorphismContainer extends StatelessWidget {
  const NeumorphismContainer({
    super.key,
    this.child,
    this.inset = true,
    this.shape = BoxShape.rectangle,
    this.borderRadius,
  });

  final Widget? child;
  final bool inset;
  final BoxShape shape;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry margin() {
      if (TDeviceUtils.isSmallOrPhysicalDevice()) {
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 24);
      } else {
        return const EdgeInsets.symmetric(horizontal: 80, vertical: 50);
      }
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      margin: margin(),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: (shape == BoxShape.rectangle) ? borderRadius ?? BorderRadius.circular(30) : null,
        shape: shape,
        boxShadow: [
          // Right and Bottom
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(-10, -10),
            spreadRadius: 5,
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.25),
            inset: inset,
          ),
          // Left and Top
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(10, 10),
            spreadRadius: 5,
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.50),
            inset: inset,
          ),
        ],
      ),
      child: child,
    );
  }
}
