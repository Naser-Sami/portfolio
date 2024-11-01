import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class HeaderTabsHorizontalWidget extends StatelessWidget {
  const HeaderTabsHorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: HeaderData.headerMenuItems
          .map((title) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Center(
                    child: TextButton(
                  onPressed: () {},
                  child: Text(title, style: context.bodyLarge),
                )),
              ))
          .toList(),
    );
  }
}

class HeaderTabsVerticalWidget extends StatelessWidget {
  const HeaderTabsVerticalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: HeaderData.headerMenuItems
          .map((title) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      title,
                      style: context.bodyLarge,
                    )),
              ))
          .toList(),
    );
  }
}
