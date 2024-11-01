import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/_core.dart';

import '../controllers/_controllers.dart';
import '/config/_config.dart';

class PortfolioBodyMedium extends StatelessWidget {
  const PortfolioBodyMedium({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: SizedBox(
        width: TDeviceUtils.getScreenWidth(),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: ListView(
            shrinkWrap: true,
            children: [
              TSize.s48.toHeight,
              Center(
                child: Wrap(
                  spacing: 32,
                  runSpacing: 32,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: context
                      .watch<PortfolioCubit>()
                      .state
                      .headerData
                      .map(
                        (e) => NeumorphismButton(
                          isHovered: e.isHovered,
                          text: e.title,
                          onTap: () {},
                          onHover: (bool val) => context.read<PortfolioCubit>().onButtonHover(e.id, val),
                        ),
                      )
                      .toList(),
                ),
              ),
              TSize.s96.toHeight,
              SizedBox(
                width: 350,
                height: 350,
                child: NeumorphismContainer(
                  inset: false,
                  shape: BoxShape.circle,
                  child: Center(child: Text(MediaQuery.of(context).size.width.toString())),
                ),
              ),
              TSize.s55.toHeight,
              TextWidget(
                'Hey',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              TSize.s24.toHeight,
              TextWidget(
                "I'm Naser S. Ebedo",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              TSize.s24.toHeight,
              Text.rich(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
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
              const TextWidget(
                  textAlign: TextAlign.center,
                  "A highly motivated student studying Artificial Intelligence and Machine Learning. Actively seeking opportunities to apply my skills and knowledge to real-world projects and contribute to the advancement of the industry."),
              TSize.s45.toHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NeumorphismButton(
                    isHovered: false,
                    text: 'Learn More',
                    onTap: () {},
                    onHover: (bool val) {},
                  ),
                  SizedBox(width: TDeviceUtils.getScreenWidth() * 0.05),
                  NeumorphismButton(
                    isHovered: false,
                    text: 'Contact me',
                    onTap: () {},
                    onHover: (bool val) {},
                  ),
                ],
              ),
              TSize.s143.toHeight,
            ],
          ),
        ),
      ),
    );
  }
}
