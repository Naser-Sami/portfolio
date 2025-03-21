import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';
import '/config/_config.dart';
import '/features/_features.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    final data = context.read<PortfolioCubit>().state.experienceData;

    if (widthCondition) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widthCondition ? width * 0.10 : width * 0.15),
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              const ProgressBarWidget(title: "Experience", titleEnd: true),
              for (int i = 0; i < data.length; i++)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExperienceLineWidget(index: i),
                    TSize.s24.toWidth,
                    ExperienceCardWidget(index: i),
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
            for (int i = 0; i < data.length; i++)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  i % 2 == 0
                      ? ExperienceCardWidget(index: i)
                      : const Expanded(child: SizedBox.shrink()),
                  TSize.s76.toWidth,
                  ExperienceLineWidget(index: i),
                  TSize.s76.toWidth,
                  i % 2 != 0
                      ? ExperienceCardWidget(index: i)
                      : const Expanded(child: SizedBox.shrink()),
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
    final data = context.read<PortfolioCubit>().state.experienceData;

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
              boxShadow: const [BoxShadow()],
              borderRadius: BorderRadius.only(
                topLeft: radians(index == 0),
                topRight: radians(index == 0),
                bottomLeft: radians(index == data.length - 1),
                bottomRight: radians(index == data.length - 1),
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
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withValues(alpha: 0.50),
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
  final int index;
  const ExperienceCardWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final smallScreen = TDeviceUtils.isSmallOrPhysicalDevice();
    final widthCondition = MediaQuery.of(context).size.width < 1000;
    final data = context.read<PortfolioCubit>().state.experienceData[index];

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: TPadding.p12,
          top: TPadding.p12,
        ),
        child: SizedBox(
          height: widthCondition ? 224 : 370,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () {},
            onHover: (bool val) =>
                context.read<PortfolioCubit>().onExperienceHover(data.id, val),
            child: BlocBuilder<PortfolioCubit, PortfolioState>(
              builder: (context, state) {
                return NeumorphismContainer(
                  inset: state.experienceData[index].isHovered,
                  child: Padding(
                    padding: EdgeInsets.all(smallScreen ? TPadding.p16 : TPadding.p32),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            textAlign: TextAlign.start,
                            style: smallScreen
                                ? textTheme.labelMedium?.apply(
                                    color: context.isDarkMode
                                        ? DarkThemeColors.text
                                        : LightThemeColors.text,
                                  )
                                : textTheme.headlineMedium,
                            TextSpan(
                              children: [
                                TextSpan(text: data.title),
                                TextSpan(
                                  text: data.focusedTitle,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: context.isDarkMode
                                        ? DarkThemeColors.green
                                        : LightThemeColors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TSize.s16.toHeight,
                          TextWidget(
                            'Date: | ${data.date}',
                            style: smallScreen
                                ? textTheme.labelSmall
                                    ?.copyWith(fontWeight: FontWeight.w500)
                                : textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          TSize.s08.toHeight,
                          Column(
                              children: data.description
                                  .map(
                                    (e) => Text.rich(
                                      textAlign: TextAlign.start,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: e['title'],
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: "${e['description']}\n",
                                            style: Theme.of(context).textTheme.bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList()),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
