import 'package:flutter/material.dart';

import '../styles/homebook_colors.dart';

class RoundedPanel extends StatelessWidget {
  const RoundedPanel({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final style = context.homeBookColors;

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: style.glassBorder, width: 1),
        color: style.glass,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: child,
      ),
    );
  }
}
