import 'package:flutter/material.dart';

import '/config/_config.dart';

class TSliverAppBarSmall extends StatelessWidget {
  const TSliverAppBarSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      toolbarHeight: 110,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          const LogoWidget(),
          const IconButton(onPressed: null, icon: SizedBox())
        ],
      ),
      actions: const [ChangeThemeButtonWidget()],
      bottom: bottom(context),
    );
  }
}
