import 'package:flutter/material.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class WhoIAmInfo extends StatelessWidget {
  const WhoIAmInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final smallScreen = TDeviceUtils.isSmallOrPhysicalDevice();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextWidget(
          'Hey',
          textAlign: TextAlign.center,
          style: smallScreen ? textTheme.headlineSmall : textTheme.headlineMedium,
        ),
        TSize.s24.toHeight,
        TextWidget(
          "I'm Naser S. Ebedo",
          textAlign: TextAlign.center,
          style: smallScreen ? textTheme.displaySmall : textTheme.displayMedium,
        ),
        TSize.s24.toHeight,
        Text.rich(
          textAlign: TextAlign.center,
          style: smallScreen ? textTheme.headlineSmall : textTheme.headlineLarge,
          const TextSpan(
            children: [
              TextSpan(text: "Software Developer "),
              TextSpan(
                text: "Engineer|",
                style: TextStyle(color: LightThemeColors.red),
              ),
            ],
          ),
        ),
        TSize.s24.toHeight,
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: TextWidget(
              textAlign: TextAlign.center,
              "A highly motivated student studying Artificial Intelligence and Machine Learning. Actively seeking opportunities to apply my skills and knowledge to real-world projects and contribute to the advancement of the industry."),
        ),
        TSize.s45.toHeight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: NeumorphismButton(
                  isHovered: false,
                  text: 'Learn More',
                  onTap: () {},
                  onHover: (bool val) {},
                ),
              ),
              SizedBox(width: TDeviceUtils.getScreenWidth() * 0.05),
              Flexible(
                child: NeumorphismButton(
                  isHovered: false,
                  text: 'Contact me',
                  onTap: () {},
                  onHover: (bool val) {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
