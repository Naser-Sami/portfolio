import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1000;
    final width = MediaQuery.of(context).size.width;

    if (widthCondition) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.10),
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              const ProgressBarWidget(title: "Experience", titleEnd: true),
              for (int i = 0; i < 3; i++)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExperienceLineWidget(index: i),
                    TSize.s24.toWidth,
                    const ExperienceCardWidget(),
                  ],
                ),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.15),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            const ProgressBarWidget(title: "Experience", titleEnd: true),
            for (int i = 0; i < 3; i++)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  i % 2 == 0 ? const ExperienceCardWidget() : const Expanded(child: SizedBox.shrink()),
                  TSize.s76.toWidth,
                  ExperienceLineWidget(index: i),
                  TSize.s76.toWidth,
                  i % 2 != 0 ? const ExperienceCardWidget() : const Expanded(child: SizedBox.shrink()),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class ExperienceLineWidget extends StatelessWidget {
  final int index;
  const ExperienceLineWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1000;

    Radius radians(bool val) {
      if (val) {
        return const Radius.circular(4);
      } else {
        return Radius.zero;
      }
    }

    return SizedBox(
      height: widthCondition ? 248 : 394,
      width: 40,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: radians(index == 0),
                topRight: radians(index == 0),
                bottomLeft: radians(index == 2),
                bottomRight: radians(index == 2),
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
    );
  }
}

class ExperienceCardWidget extends StatelessWidget {
  const ExperienceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final smallScreen = TDeviceUtils.isSmallOrPhysicalDevice();
    final widthCondition = MediaQuery.of(context).size.width < 1000;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: TPadding.p12,
          top: TPadding.p12,
        ),
        child: SizedBox(
          height: widthCondition ? 224 : 370,
          child: NeumorphismContainer(
            inset: false,
            child: Padding(
              padding: const EdgeInsets.all(TPadding.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    textAlign: TextAlign.start,
                    style: smallScreen
                        ? textTheme.labelMedium?.apply(
                            color: context.isDarkMode ? DarkThemeColors.text : LightThemeColors.text,
                          )
                        : textTheme.headlineSmall,
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
                        style: textTheme.labelSmall,
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
    );
  }
}
