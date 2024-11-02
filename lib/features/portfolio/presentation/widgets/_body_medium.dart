import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/portfolio/_portfolio.dart';

class PortfolioBodyMedium extends StatelessWidget {
  const PortfolioBodyMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          shrinkWrap: true,
          children: [
            TSize.s48.toHeight,
            const HeaderTabsWidget(),
            TSize.s96.toHeight,
            const WhoIAmMediumLayout(),
            TSize.s143.toHeight,
            const AboutMeWidget(),
            TSize.s143.toHeight,
            const ContactMeWidget(),
            TSize.s143.toHeight,
          ],
        ),
      ),
    );
  }
}
