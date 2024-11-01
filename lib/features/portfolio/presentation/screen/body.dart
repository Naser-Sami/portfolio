import 'package:flutter/material.dart';

import '../widgets/_widgets.dart';
import '/config/_config.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      endDrawer: const Drawer(),
      body: const SafeArea(
        child: NeumorphismContainer(
          userDefaultMargin: true,
          child: ResponsiveLayout(
            smallLayout: PortfolioBodySmall(),
            mediumLayout: PortfolioBodyMedium(),
            largeLayout: PortfolioBodyMedium(),
          ),
        ),
      ),
    );
  }
}
