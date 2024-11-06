import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/_utils.dart';

import '/config/_config.dart';
import '/features/_features.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final widthCondition = MediaQuery.of(context).size.width < 1100;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthCondition ? width * 0.10 : width * 0.15),
          child: const ProgressBarWidget(title: "Skills", titleEnd: true),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthCondition ? 24 : width * 0.15),
          child: Center(
            child: Wrap(
              spacing: 16,
              runSpacing: 32,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: context.watch<PortfolioCubit>().state.skillsData.map(
                (e) {
                  if (TDeviceUtils.isPhysicalDevice()) {
                    return Listener(
                      onPointerUp: (event) => context.read<PortfolioCubit>().onSkillHover(e.id, false),
                      onPointerDown: (event) => context.read<PortfolioCubit>().onSkillHover(e.id, true),
                      child: NeumorphismButton(
                        width: 100,
                        isHovered: e.isHovered,
                        surfaceColor: e.isHovered ? Theme.of(context).colorScheme.inversePrimary.withOpacity(0.80) : null,
                        text: e.title,
                        onTap: () {},
                        // onHover: (bool val) => context.read<PortfolioCubit>().onSkillSHover(e.id, val),
                      ),
                    );
                  }
                  return NeumorphismButton(
                    width: 100,
                    isHovered: e.isHovered,
                    surfaceColor: e.isHovered ? Theme.of(context).colorScheme.inversePrimary.withOpacity(0.80) : null,
                    text: e.title,
                    onTap: () {},
                    onHover: (bool val) => context.read<PortfolioCubit>().onSkillHover(e.id, val),
                  );
                },
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}
