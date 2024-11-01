import 'package:flutter/material.dart';

import '/config/_config.dart';

class TSliverAppBarMedium extends StatelessWidget {
  const TSliverAppBarMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      toolbarHeight: 110,
      automaticallyImplyLeading: false,
      title: const Row(
        children: [
          SizedBox(width: 40),
          LogoWidget(),
          Spacer(),
          HeaderTabsHorizontalWidget(),
          Spacer(),
          SizedBox(width: 40),
        ],
      ),
      bottom: bottom(context),
      actions: [
        const ChangeThemeButtonWidget(),
        Builder(
          builder: (context) => Padding(
            padding: const EdgeInsetsDirectional.only(end: 40),
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ),
      ],
    );
  }
}
