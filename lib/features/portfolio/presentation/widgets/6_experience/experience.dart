import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    final smallScreen = TDeviceUtils.isSmallOrPhysicalDevice();

    Radius radians(bool val) {
      if (val) {
        return const Radius.circular(4);
      } else {
        return Radius.zero;
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            const ProgressBarWidget(title: "Experience", titleEnd: true),
            for (int i = 0; i < 3; i++)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 248,
                    width: 40,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: radians(i == 0),
                              topRight: radians(i == 0),
                              bottomLeft: radians(i == 2),
                              bottomRight: radians(i == 2),
                            ),
                            color: Theme.of(context).dividerColor,
                          ),
                        ),
                        Center(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Theme.of(context).colorScheme.outlineVariant,
                            child: Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.50),
                                child: const PngImageWidget(
                                  name: 'brain',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TSize.s24.toWidth,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: TPadding.p12,
                        top: TPadding.p12,
                      ),
                      child: SizedBox(
                        height: 224,
                        child: NeumorphismContainer(
                          inset: false,
                          child: Padding(
                            padding: const EdgeInsets.all(TPadding.p16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text.rich(
                                  textAlign: TextAlign.center,
                                  style: smallScreen
                                      ? textTheme.labelMedium?.apply(
                                          color: context.isDarkMode ? DarkThemeColors.text : LightThemeColors.text,
                                        )
                                      : textTheme.headlineLarge,
                                  TextSpan(
                                    children: [
                                      const TextSpan(text: "Lorem ipsum dolor sit "),
                                      TextSpan(
                                        text: "amet",
                                        style: TextStyle(
                                          color: context.isDarkMode ? DarkThemeColors.green : LightThemeColors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                TSize.s04.toHeight,
                                TextWidget(
                                  'Lorem ipsum dolor | 28-12-23',
                                  style: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w500),
                                ),
                                TSize.s08.toHeight,
                                Flexible(
                                  child: SingleChildScrollView(
                                    child: TextWidget(
                                      'Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat ',
                                      style: textTheme.labelSmall?.copyWith(fontSize: 8),
                                      maxLines: 50,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
