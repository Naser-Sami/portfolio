import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/portfolio/_portfolio.dart';

import 'image.dart';
import 'info.dart';

class WhoIAmMediumLayout extends StatelessWidget {
  const WhoIAmMediumLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50,
              child: ThemeWidget(),
            ),
            WhoIAmImage(width: 350, height: 350),
            SizedBox(width: 50),
          ],
        ),
        TSize.s55.toHeight,
        const WhoIAmInfo(),
      ],
    );
  }
}

class WhoIAmSmallLayout extends StatelessWidget {
  const WhoIAmSmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const WhoIAmImage(width: 180, height: 180),
        TSize.s55.toHeight,
        const WhoIAmInfo(),
      ],
    );
  }
}
