import 'package:flutter/material.dart';

import '../../colors_guidance/light_theme_colors.dart';

ColorScheme? _colorSchemeLight = const ColorScheme.light(
  // brightness: Brightness.light,
  onSurface: LightThemeColors.onSurface,

  primary: LightThemeColors.primary,
  onPrimary: LightThemeColors.onPrimary,
  primaryContainer: LightThemeColors.primaryContainer,
  onPrimaryContainer: LightThemeColors.onPrimaryContainer,
  primaryFixed: LightThemeColors.onPrimaryFixed,
  primaryFixedDim: LightThemeColors.primaryFixedDim,
  onPrimaryFixedVariant: LightThemeColors.onPrimaryFixedVariant,

  // -
  secondary: LightThemeColors.secondary,
  onSecondary: LightThemeColors.onSecondary,
  secondaryContainer: LightThemeColors.onSecondaryContainer,
  secondaryFixed: LightThemeColors.secondaryFixed,
  onSecondaryFixed: LightThemeColors.onSecondaryFixed,
  secondaryFixedDim: LightThemeColors.secondaryFixedDim,
  onSecondaryFixedVariant: LightThemeColors.onSecondaryFixedVariant,

  // --
  tertiary: LightThemeColors.tertiary,
  onTertiary: LightThemeColors.onTertiary,
  tertiaryContainer: LightThemeColors.tertiaryContainer,
  onTertiaryContainer: LightThemeColors.onTertiaryContainer,
  tertiaryFixed: LightThemeColors.tertiaryFixed,
  onTertiaryFixed: LightThemeColors.onTertiaryFixed,
  tertiaryFixedDim: LightThemeColors.tertiaryFixedDim,
  onTertiaryFixedVariant: LightThemeColors.onTertiaryFixedVariant,

  // ---
  error: LightThemeColors.error,
  onError: LightThemeColors.onError,
  errorContainer: LightThemeColors.errorContainer,
  onErrorContainer: LightThemeColors.onErrorContainer,

  // ----
  outline: LightThemeColors.outline,
  outlineVariant: LightThemeColors.outlineVariant,

  // --
  surface: LightThemeColors.surface,
  onSecondaryContainer: LightThemeColors.onSurface,
  surfaceContainerHighest: LightThemeColors.surfaceContainerHightest,
  surfaceContainerHigh: LightThemeColors.surfaceContainerHight,
  surfaceContainer: LightThemeColors.surfaceContainer,
  surfaceContainerLow: LightThemeColors.surfaceContainerLow,
  surfaceContainerLowest: LightThemeColors.surfaceContainerLowest,
  surfaceTint: LightThemeColors.surfaceTint,
  surfaceDim: LightThemeColors.surfaceDim,
  surfaceBright: LightThemeColors.surfaceBright,

  // --
  inversePrimary: LightThemeColors.inversePrimary,
  inverseSurface: LightThemeColors.inverseSurface,
  onInverseSurface: LightThemeColors.inverseOnSurface,

  shadow: LightThemeColors.shadow,
  scrim: LightThemeColors.scrim,
);

ColorScheme? get colorSchemeLight => _colorSchemeLight;
