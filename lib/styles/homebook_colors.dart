import 'package:flutter/material.dart';
import 'package:homebook/styles/colors.dart';

enum HbHue { pumpkin, pine, fig, honey, plum, olive, dusk, rosehip, other }

@immutable
class HbHueColors {
  const HbHueColors({required this.mark, required this.soft, required this.ink});

  final Color mark;
  final Color soft;
  final Color ink;

  static HbHueColors lerp(HbHueColors a, HbHueColors b, double t) => HbHueColors(
        mark: Color.lerp(a.mark, b.mark, t)!,
        soft: Color.lerp(a.soft, b.soft, t)!,
        ink: Color.lerp(a.ink, b.ink, t)!,
      );
}

@immutable
class HomebookColors extends ThemeExtension<HomebookColors> {
  const HomebookColors({
    required this.canvas,
    required this.glowApricot,
    required this.glowHoney,
    required this.glass,
    required this.glassStrong,
    required this.glassBorder,
    required this.field,
    required this.line,
    required this.outline,
    required this.scrim,
    required this.ink,
    required this.inkMuted,
    required this.inkFaint,
    required this.primary,
    required this.onPrimary,
    required this.primaryInk,
    required this.primarySoft,
    required this.success,
    required this.successSoft,
    required this.warning,
    required this.warningSoft,
    required this.danger,
    required this.dangerSoft,
    required this.hues,
  });

  final Color canvas;
  final Color glowApricot;
  final Color glowHoney;
  final Color glass;
  final Color glassStrong;
  final Color glassBorder;
  final Color field;
  final Color line;
  final Color outline;
  final Color scrim;
  final Color ink;
  final Color inkMuted;
  final Color inkFaint;
  final Color primary;
  final Color onPrimary;
  final Color primaryInk;
  final Color primarySoft;
  final Color success;
  final Color successSoft;
  final Color warning;
  final Color warningSoft;
  final Color danger;
  final Color dangerSoft;
  final Map<HbHue, HbHueColors> hues;

  HbHueColors hue(HbHue h) => hues[h]!;

  static const light = HomebookColors(
    canvas: ThemeColor.canvas,
    glowApricot: ThemeColor.glowApricot,
    glowHoney: ThemeColor.glowHoney,
    glass: ThemeColor.glass,
    glassStrong: ThemeColor.glassStrong,
    glassBorder: ThemeColor.glassBorder,
    field: ThemeColor.field,
    line: ThemeColor.line,
    outline: ThemeColor.outline,
    scrim: ThemeColor.scrim,
    ink: ThemeColor.ink,
    inkMuted: ThemeColor.inkMuted,
    inkFaint: ThemeColor.inkFaint,
    primary: ThemeColor.primary,
    onPrimary: ThemeColor.onPrimary,
    primaryInk: ThemeColor.primaryInk,
    primarySoft: ThemeColor.primarySoft,
    success: ThemeColor.success,
    successSoft: ThemeColor.successSoft,
    warning: ThemeColor.warning,
    warningSoft: ThemeColor.warningSoft,
    danger: ThemeColor.danger,
    dangerSoft: ThemeColor.dangerSoft,
    hues: {
      HbHue.pumpkin: HbHueColors(
        mark: ThemeColor.catPumpkin,
        soft: ThemeColor.catPumpkinSoft,
        ink: ThemeColor.catPumpkinInk,
      ),
      HbHue.pine: HbHueColors(
        mark: ThemeColor.catPine,
        soft: ThemeColor.catPineSoft,
        ink: ThemeColor.catPineInk,
      ),
      HbHue.fig: HbHueColors(
        mark: ThemeColor.catFig,
        soft: ThemeColor.catFigSoft,
        ink: ThemeColor.catFigInk,
      ),
      HbHue.honey: HbHueColors(
        mark: ThemeColor.catHoney,
        soft: ThemeColor.catHoneySoft,
        ink: ThemeColor.catHoneyInk,
      ),
      HbHue.plum: HbHueColors(
        mark: ThemeColor.catPlum,
        soft: ThemeColor.catPlumSoft,
        ink: ThemeColor.catPlumInk,
      ),
      HbHue.olive: HbHueColors(
        mark: ThemeColor.catOlive,
        soft: ThemeColor.catOliveSoft,
        ink: ThemeColor.catOliveInk,
      ),
      HbHue.dusk: HbHueColors(
        mark: ThemeColor.catDusk,
        soft: ThemeColor.catDuskSoft,
        ink: ThemeColor.catDuskInk,
      ),
      HbHue.rosehip: HbHueColors(
        mark: ThemeColor.catRosehip,
        soft: ThemeColor.catRosehipSoft,
        ink: ThemeColor.catRosehipInk,
      ),
      HbHue.other: HbHueColors(
        mark: ThemeColor.catOther,
        soft: ThemeColor.catOtherSoft,
        ink: ThemeColor.catOtherInk,
      ),
    },
  );

  static const dark = HomebookColors(
    canvas: ThemeColorDark.canvas,
    glowApricot: ThemeColorDark.glowApricot,
    glowHoney: ThemeColorDark.glowHoney,
    glass: ThemeColorDark.glass,
    glassStrong: ThemeColorDark.glassStrong,
    glassBorder: ThemeColorDark.glassBorder,
    field: ThemeColorDark.field,
    line: ThemeColorDark.line,
    outline: ThemeColorDark.outline,
    scrim: ThemeColorDark.scrim,
    ink: ThemeColorDark.ink,
    inkMuted: ThemeColorDark.inkMuted,
    inkFaint: ThemeColorDark.inkFaint,
    primary: ThemeColorDark.primary,
    onPrimary: ThemeColorDark.onPrimary,
    primaryInk: ThemeColorDark.primaryInk,
    primarySoft: ThemeColorDark.primarySoft,
    success: ThemeColorDark.success,
    successSoft: ThemeColorDark.successSoft,
    warning: ThemeColorDark.warning,
    warningSoft: ThemeColorDark.warningSoft,
    danger: ThemeColorDark.danger,
    dangerSoft: ThemeColorDark.dangerSoft,
    hues: {
      HbHue.pumpkin: HbHueColors(
        mark: ThemeColorDark.catPumpkin,
        soft: ThemeColorDark.catPumpkinSoft,
        ink: ThemeColorDark.catPumpkinInk,
      ),
      HbHue.pine: HbHueColors(
        mark: ThemeColorDark.catPine,
        soft: ThemeColorDark.catPineSoft,
        ink: ThemeColorDark.catPineInk,
      ),
      HbHue.fig: HbHueColors(
        mark: ThemeColorDark.catFig,
        soft: ThemeColorDark.catFigSoft,
        ink: ThemeColorDark.catFigInk,
      ),
      HbHue.honey: HbHueColors(
        mark: ThemeColorDark.catHoney,
        soft: ThemeColorDark.catHoneySoft,
        ink: ThemeColorDark.catHoneyInk,
      ),
      HbHue.plum: HbHueColors(
        mark: ThemeColorDark.catPlum,
        soft: ThemeColorDark.catPlumSoft,
        ink: ThemeColorDark.catPlumInk,
      ),
      HbHue.olive: HbHueColors(
        mark: ThemeColorDark.catOlive,
        soft: ThemeColorDark.catOliveSoft,
        ink: ThemeColorDark.catOliveInk,
      ),
      HbHue.dusk: HbHueColors(
        mark: ThemeColorDark.catDusk,
        soft: ThemeColorDark.catDuskSoft,
        ink: ThemeColorDark.catDuskInk,
      ),
      HbHue.rosehip: HbHueColors(
        mark: ThemeColorDark.catRosehip,
        soft: ThemeColorDark.catRosehipSoft,
        ink: ThemeColorDark.catRosehipInk,
      ),
      HbHue.other: HbHueColors(
        mark: ThemeColorDark.catOther,
        soft: ThemeColorDark.catOtherSoft,
        ink: ThemeColorDark.catOtherInk,
      ),
    },
  );

  @override
  HomebookColors copyWith({
    Color? canvas,
    Color? glowApricot,
    Color? glowHoney,
    Color? glass,
    Color? glassStrong,
    Color? glassBorder,
    Color? field,
    Color? line,
    Color? outline,
    Color? scrim,
    Color? ink,
    Color? inkMuted,
    Color? inkFaint,
    Color? primary,
    Color? onPrimary,
    Color? primaryInk,
    Color? primarySoft,
    Color? success,
    Color? successSoft,
    Color? warning,
    Color? warningSoft,
    Color? danger,
    Color? dangerSoft,
    Map<HbHue, HbHueColors>? hues,
  }) {
    return HomebookColors(
      canvas: canvas ?? this.canvas,
      glowApricot: glowApricot ?? this.glowApricot,
      glowHoney: glowHoney ?? this.glowHoney,
      glass: glass ?? this.glass,
      glassStrong: glassStrong ?? this.glassStrong,
      glassBorder: glassBorder ?? this.glassBorder,
      field: field ?? this.field,
      line: line ?? this.line,
      outline: outline ?? this.outline,
      scrim: scrim ?? this.scrim,
      ink: ink ?? this.ink,
      inkMuted: inkMuted ?? this.inkMuted,
      inkFaint: inkFaint ?? this.inkFaint,
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      primaryInk: primaryInk ?? this.primaryInk,
      primarySoft: primarySoft ?? this.primarySoft,
      success: success ?? this.success,
      successSoft: successSoft ?? this.successSoft,
      warning: warning ?? this.warning,
      warningSoft: warningSoft ?? this.warningSoft,
      danger: danger ?? this.danger,
      dangerSoft: dangerSoft ?? this.dangerSoft,
      hues: hues ?? this.hues,
    );
  }

  @override
  HomebookColors lerp(covariant HomebookColors? other, double t) {
    if (other == null) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    return HomebookColors(
      canvas: c(canvas, other.canvas),
      glowApricot: c(glowApricot, other.glowApricot),
      glowHoney: c(glowHoney, other.glowHoney),
      glass: c(glass, other.glass),
      glassStrong: c(glassStrong, other.glassStrong),
      glassBorder: c(glassBorder, other.glassBorder),
      field: c(field, other.field),
      line: c(line, other.line),
      outline: c(outline, other.outline),
      scrim: c(scrim, other.scrim),
      ink: c(ink, other.ink),
      inkMuted: c(inkMuted, other.inkMuted),
      inkFaint: c(inkFaint, other.inkFaint),
      primary: c(primary, other.primary),
      onPrimary: c(onPrimary, other.onPrimary),
      primaryInk: c(primaryInk, other.primaryInk),
      primarySoft: c(primarySoft, other.primarySoft),
      success: c(success, other.success),
      successSoft: c(successSoft, other.successSoft),
      warning: c(warning, other.warning),
      warningSoft: c(warningSoft, other.warningSoft),
      danger: c(danger, other.danger),
      dangerSoft: c(dangerSoft, other.dangerSoft),
      hues: {for (final h in HbHue.values) h: HbHueColors.lerp(hue(h), other.hue(h), t)},
    );
  }
}

extension HomebookContext on BuildContext {
  HomebookColors get homeBookStyles => Theme.of(this).extension<HomebookColors>()!;
}
