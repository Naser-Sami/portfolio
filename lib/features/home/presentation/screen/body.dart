import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions/extensions_on_widgets.dart';

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
          child: ResponsiveLayout(
            smallLayout: PortfolioBodySmall(),
            mediumLayout: Center(child: Text('Medium Layout')),
            largeLayout: Center(child: Text('Large Layout')),
          ),
        ),
      ),
    );
  }
}

class PortfolioBodySmall extends StatelessWidget {
  const PortfolioBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  child: const Icon(Icons.menu),
                ),
              ),
            ],
          ),
          TSize.s16.toHeight,
          SizedBox(
            width: 180,
            height: 180,
            child: NeumorphismContainer(
              inset: false,
              shape: BoxShape.circle,
              child: Center(child: Text(MediaQuery.of(context).size.width.toString())),
            ),
          ),
        ],
      ),
    );
  }
}
