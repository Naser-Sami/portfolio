import 'package:flutter/material.dart';

import 'header_tabs.dart';

Widget? drawer(BuildContext context) => const Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16.0),
        child: HeaderTabsVerticalWidget(),
      ),
    );

Widget endDrawer(BuildContext context) => const Drawer();
