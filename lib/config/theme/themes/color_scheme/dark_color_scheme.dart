import 'package:flutter/material.dart';

import '../../colors_guidance/dark_theme_colors.dart';

ColorScheme? _colorSchemeDark = const ColorScheme.dark(
  primary: DarkThemeColors.primary,
  onPrimary: DarkThemeColors.onPrimary,
  primaryContainer: DarkThemeColors.primaryContainer,
  onPrimaryContainer: DarkThemeColors.onPrimaryContainer,
  primaryFixed: DarkThemeColors.onPrimaryFixed,
  primaryFixedDim: DarkThemeColors.primaryFixedDim,
  onPrimaryFixedVariant: DarkThemeColors.onPrimaryFixedVariant,

  // -
  secondary: DarkThemeColors.secondary,
  onSecondary: DarkThemeColors.onSecondary,
  secondaryContainer: DarkThemeColors.onSecondaryContainer,
  secondaryFixed: DarkThemeColors.secondaryFixed,
  onSecondaryFixed: DarkThemeColors.onSecondaryFixed,
  secondaryFixedDim: DarkThemeColors.secondaryFixedDim,
  onSecondaryFixedVariant: DarkThemeColors.onSecondaryFixedVariant,

  // --
  tertiary: DarkThemeColors.tertiary,
  onTertiary: DarkThemeColors.onTertiary,
  tertiaryContainer: DarkThemeColors.tertiaryContainer,
  onTertiaryContainer: DarkThemeColors.onTertiaryContainer,
  tertiaryFixed: DarkThemeColors.tertiaryFixed,
  onTertiaryFixed: DarkThemeColors.onTertiaryFixed,
  tertiaryFixedDim: DarkThemeColors.tertiaryFixedDim,
  onTertiaryFixedVariant: DarkThemeColors.onTertiaryFixedVariant,

  // ---
  error: DarkThemeColors.error,
  onError: DarkThemeColors.onError,
  errorContainer: DarkThemeColors.errorContainer,
  onErrorContainer: DarkThemeColors.onErrorContainer,

  // ----
  outline: DarkThemeColors.outline,
  outlineVariant: DarkThemeColors.outlineVariant,

  // --
  surface: DarkThemeColors.surface,
  onSurface: DarkThemeColors.onSurface,
  onSecondaryContainer: DarkThemeColors.onSurface,
  surfaceContainerHighest: DarkThemeColors.surfaceContainerHightest,
  surfaceContainerHigh: DarkThemeColors.surfaceContainerHight,
  surfaceContainer: DarkThemeColors.surfaceContainer,
  surfaceContainerLow: DarkThemeColors.surfaceContainerLow,
  surfaceContainerLowest: DarkThemeColors.surfaceContainerLowest,
  surfaceTint: DarkThemeColors.surfaceTint,
  surfaceDim: DarkThemeColors.surfaceDim,
  surfaceBright: DarkThemeColors.surfaceBright,

  // --
  inversePrimary: DarkThemeColors.inversePrimary,
  inverseSurface: DarkThemeColors.inverseSurface,
  onInverseSurface: DarkThemeColors.inverseOnSurface,

  shadow: DarkThemeColors.shadow,
  scrim: DarkThemeColors.scrim,
);

ColorScheme? get colorSchemeDark => _colorSchemeDark;
