import 'package:flutter/material.dart';

import '../styles/homebook_colors.dart';

class RoundedPanel extends StatelessWidget {
  const RoundedPanel({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final style = context.homeBookStyles;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: style.glass,
        borderRadius: BorderRadius.all(Radius.circular(0.5)),
      ),
      child: child,
    );
  }
}
