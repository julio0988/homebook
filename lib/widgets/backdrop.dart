import 'package:flutter/material.dart';

import '../styles/homebook_colors.dart';

class Backdrop extends StatelessWidget {

  const Backdrop({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final style = context.homeBookColors;

    return DecoratedBox(
      decoration: BoxDecoration(color: style.canvas),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topLeft,
            radius: 2.0,
            colors: [
              style.glowApricot,
              style.glowApricot.withValues(alpha: 0),
            ],
            stops: const [0, 0.7],
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.bottomRight,
              radius: 2.0,
              colors: [
                style.glowHoney,
                style.glowHoney.withValues(alpha: 0),
              ],
              stops: const [0, 0.7],
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}