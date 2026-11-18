import 'package:flutter/material.dart';

abstract final class HbType {
  static const display = TextStyle(
    fontFamily: 'Fraunces',
    fontSize: 24,
    height: 30 / 24,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.24,
    leadingDistribution: TextLeadingDistribution.even,
    fontVariations: [
      FontVariation('SOFT', 100),
      FontVariation('WONK', 0),
      FontVariation('opsz', 24),
    ],
  );

  static const title = TextStyle(
    fontFamily: 'Fraunces',
    fontSize: 17,
    height: 22 / 17,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    leadingDistribution: TextLeadingDistribution.even,
    fontVariations: [
      FontVariation('SOFT', 100),
      FontVariation('WONK', 0),
      FontVariation('opsz', 17),
    ],
  );

  static const hero = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 34,
    height: 40 / 34,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.68,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const amount = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 15,
    height: 20 / 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    leadingDistribution: TextLeadingDistribution.even,
    fontFeatures: [FontFeature.tabularFigures()],
  );

  static const bodyLg = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 15,
    height: 22 / 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const body = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const label = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const labelSm = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.12,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const caption = TextStyle(
    fontFamily: 'Figtree',
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    leadingDistribution: TextLeadingDistribution.even,
  );
}
