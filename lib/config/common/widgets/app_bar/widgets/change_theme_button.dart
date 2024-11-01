import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';
import '/config/_config.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  const ChangeThemeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: PopupMenuButton<ThemeStyle>(
        icon: const Icon(Icons.theater_comedy),
        initialValue: context.watch<ThemeCubit>().initialValue,
        onSelected: (ThemeStyle value) => context.read<ThemeCubit>().switchTheme(value),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<ThemeStyle>>[
          PopupMenuItem<ThemeStyle>(
            value: ThemeStyle.system,
            child: Text(ThemeStyle.system.name.toCapitalized),
          ),
          PopupMenuItem<ThemeStyle>(
            value: ThemeStyle.light,
            child: Text(ThemeStyle.light.name.toCapitalized),
          ),
          PopupMenuItem<ThemeStyle>(
            value: ThemeStyle.dark,
            child: Text(ThemeStyle.dark.name.toCapitalized),
          ),
        ],
      ),
    );
  }
}
