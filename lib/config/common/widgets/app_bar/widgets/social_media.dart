import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: TDeviceUtils.size.width * 0.16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: HeaderData.socialMediaLinks
            .map(
              (icon) => Padding(
                padding: const EdgeInsetsDirectional.only(start: 0.0),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgIconWidget(
                    name: icon,
                    width: 18,
                    height: 18,
                    color: TFunctions.isDarkMode(context) ? DarkThemeColors.onSurface : LightThemeColors.onSurface,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
