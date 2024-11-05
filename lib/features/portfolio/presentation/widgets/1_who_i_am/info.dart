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
          padding: EdgeInsets.symmetric(horizontal: TPadding.p48),
          child: TextWidget(
              textAlign: TextAlign.center,
              " As a dedicated Flutter developer with 3 years of hands-on experience, I am driven by challenges and continuously strive to advance my skills in software development. I am actively expanding my expertise in C#, .NET, SQL, and Python, with a strong commitment to learning and growth. I am seeking an opportunity within an innovative organization where I can contribute to impactful projects, collaborate with skilled professionals, and further refine my knowledge while sharing my insights to foster a culture of continuous improvement in technology."),
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
