import 'package:flutter/material.dart';
import 'package:homebook/styles/homebook_colors.dart';
import 'package:homebook/styles/typography.dart';

ThemeData homebookTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  final hb = isDark ? HomebookColors.dark : HomebookColors.light;
  final inverseAccent = isDark
      ? HomebookColors.light.primaryInk
      : HomebookColors.dark.primaryInk;

  final scheme = ColorScheme(
    brightness: brightness,
    primary: hb.primary,
    onPrimary: hb.onPrimary,
    primaryContainer: hb.primarySoft,
    onPrimaryContainer: hb.primaryInk,
    secondary: hb.primaryInk,
    onSecondary: hb.canvas,
    secondaryContainer: hb.primarySoft,
    onSecondaryContainer: hb.primaryInk,
    error: hb.danger,
    onError: hb.canvas,
    errorContainer: hb.dangerSoft,
    onErrorContainer: hb.danger,
    surface: hb.canvas,
    onSurface: hb.ink,
    onSurfaceVariant: hb.inkMuted,
    surfaceContainerLowest: hb.glass,
    surfaceContainerLow: hb.glass,
    surfaceContainer: hb.glass,
    surfaceContainerHigh: hb.glassStrong,
    surfaceContainerHighest: hb.field,
    outline: hb.outline,
    outlineVariant: hb.line,
    shadow: hb.onPrimary,
    scrim: hb.scrim,
    inverseSurface: hb.ink,
    onInverseSurface: hb.canvas,
    inversePrimary: inverseAccent,
    surfaceTint: Colors.transparent,
  );

  TextStyle c(TextStyle style, Color color) => style.copyWith(color: color);

  final textTheme = TextTheme(
    displayMedium: c(HbType.hero, hb.ink),
    displaySmall: c(HbType.display, hb.ink),
    headlineSmall: c(HbType.title, hb.ink),
    titleLarge: c(HbType.title, hb.ink),
    titleMedium: c(HbType.bodyLg, hb.ink),
    titleSmall: c(HbType.label, hb.ink),
    bodyLarge: c(HbType.bodyLg, hb.ink),
    bodyMedium: c(HbType.body, hb.ink),
    bodySmall: c(HbType.caption, hb.inkMuted),
    labelLarge: c(HbType.label, hb.ink),
    labelMedium: c(HbType.labelSm, hb.ink),
    labelSmall: c(HbType.caption, hb.inkMuted),
  );

  final textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: hb.primaryInk),
  );

  final iconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: hb.glass,
      foregroundColor: hb.inkMuted,
      side: BorderSide(color: hb.glassBorder, width: 1),
      shape: const CircleBorder(),
    ),
  );

  return ThemeData(
    colorScheme: scheme,
    fontFamily: 'Figtree',
    textTheme: textTheme,
    extensions: [hb],
    scaffoldBackgroundColor: hb.canvas,
    textButtonTheme: textButtonTheme,
    iconButtonTheme: iconButtonTheme,
    canvasColor: hb.canvas,
  );
}
