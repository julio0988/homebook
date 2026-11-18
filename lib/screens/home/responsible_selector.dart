import 'package:flutter/material.dart';

import '../../widgets/segmented_buttons.dart';

class ResponsibleSelector extends StatefulWidget {
  const ResponsibleSelector({super.key});

  @override
  State<ResponsibleSelector> createState() => _ResponsibleSelectorState();
}

class _ResponsibleSelectorState extends State<ResponsibleSelector> {
  String _selected = "All";

  @override
  Widget build(BuildContext context) {
    return HomeBookSegmentedButtons(
      segments: ["All", "Julio", "Alana"],
      onChange: (selected) => setState(() => _selected = selected),
      selected: _selected,
    );
  }
}
