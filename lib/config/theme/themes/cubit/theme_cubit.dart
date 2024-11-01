import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/_core.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  ThemeStyle? initialValue = ThemeStyle.system;

  void switchTheme(ThemeStyle t) {
    switch (t) {
      // .
      case ThemeStyle.system:
        initialValue = ThemeStyle.system;
        emit(ThemeMode.system);

      // .
      case ThemeStyle.light:
        initialValue = ThemeStyle.light;
        emit(ThemeMode.light);

      // .
      case ThemeStyle.dark:
        initialValue = ThemeStyle.dark;
        emit(ThemeMode.dark);

      // . By default use System theme
      default:
        initialValue = ThemeStyle.system;
        emit(ThemeMode.system);
    }
  }
}
