import 'package:flutter/material.dart';

class ResponsibleSelector extends StatelessWidget {
  const ResponsibleSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: [true, true, false],
      borderRadius: BorderRadius.circular(100),

      children: [Text("All"), Text("Julio"), Text("Alana")],
    );
  }
}
