import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class PortfolioBodySmall extends StatelessWidget {
  const PortfolioBodySmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
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
              child: const PngImageWidget(
                name: 'Frame',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
