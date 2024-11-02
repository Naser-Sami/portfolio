import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class PortfolioBodySmall extends StatelessWidget {
  const PortfolioBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListView(
        shrinkWrap: true,
        children: [
          const PortfolioEndDrawer(),
          TSize.s16.toHeight,
          const WhoIAmSmallLayout(),
          TSize.s143.toHeight,
          const ContactMeWidget(),
          TSize.s143.toHeight,
        ],
      ),
    );
  }
}
