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
      child: NeumorphismContainer(
        inset: false,
        shape: BoxShape.circle,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: const PngImageWidget(
            // name: 'Frame',
            name: 'Naser0',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
