import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/config/_config.dart';
import '/core/_core.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (TDeviceUtils.isSmallOrPhysicalDevice()) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int i = 0; i < ThemeStyle.values.length; i++)
            IconButton(
              tooltip: ThemeStyle.values[i].name.toCapitalized,
              onPressed: () => context.read<ThemeCubit>().switchTheme(ThemeStyle.values[i]),
              icon: SvgIconWidget(
                name: '${ThemeStyle.values[i].name}_theme',
                fit: BoxFit.cover,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < ThemeStyle.values.length; i++)
          IconButton(
            tooltip: ThemeStyle.values[i].name.toCapitalized,
            onPressed: () => context.read<ThemeCubit>().switchTheme(ThemeStyle.values[i]),
            icon: SvgIconWidget(
              name: '${ThemeStyle.values[i].name}_theme',
              fit: BoxFit.cover,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
      ],
    );
  }
}
