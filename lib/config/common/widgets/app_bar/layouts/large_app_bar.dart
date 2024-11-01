import 'package:flutter/material.dart';

import '/config/_config.dart';

class TSliverAppBarLarge extends StatelessWidget {
  const TSliverAppBarLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      toolbarHeight: 110,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: const Row(
        children: [
          SizedBox(width: 80),
          LogoWidget(),
          Spacer(),
          HeaderTabsHorizontalWidget(),
          Spacer(),
        ],
      ),
      actions: const [
        ChangeThemeButtonWidget(),
        Padding(
          padding: EdgeInsetsDirectional.only(end: 80),
          child: SocialMediaWidget(),
        ),
      ],
      bottom: bottom(context),
    );
  }
}
