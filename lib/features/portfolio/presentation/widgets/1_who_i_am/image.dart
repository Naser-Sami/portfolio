import 'package:flutter/material.dart';

import '/config/_config.dart';

class WhoIAmImage extends StatelessWidget {
  const WhoIAmImage({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: const NeumorphismContainer(
        inset: false,
        shape: BoxShape.circle,
        child: PngImageWidget(
          name: 'Frame',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
