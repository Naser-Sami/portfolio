import 'package:flutter/material.dart';

import '/config/_config.dart';
import '/core/_core.dart';

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
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              border: Border.all(
                color: TFunctions.isDarkMode(context) ? Colors.grey.shade800 : Colors.black,
                width: 5,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: TFunctions.isDarkMode(context)
                  ? const PngImageWidget(
                      // name: 'Frame',
                      name: 'Naser0',
                      fit: BoxFit.cover,
                    )
                  : const JpegImageWidget(
                      name: 'Naser2',
                      fit: BoxFit.cover,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
