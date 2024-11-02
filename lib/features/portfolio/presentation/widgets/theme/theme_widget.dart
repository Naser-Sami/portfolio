import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/config/_config.dart';
import '/core/_core.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          tooltip: 'System',
          onPressed: () => context.read<ThemeCubit>().switchTheme(ThemeStyle.system),
          icon: SvgIconWidget(
            name: 'system_theme',
            fit: BoxFit.cover,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        IconButton(
          tooltip: 'Dark',
          onPressed: () => context.read<ThemeCubit>().switchTheme(ThemeStyle.dark),
          icon: SvgIconWidget(
            name: 'dark_theme',
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        IconButton(
          tooltip: 'Light',
          onPressed: () => context.read<ThemeCubit>().switchTheme(ThemeStyle.light),
          icon: SvgIconWidget(
            name: 'light_theme',
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }
}
