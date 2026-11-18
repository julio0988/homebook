import 'package:flutter/material.dart';
import 'package:homebook/screens/home/total_panel_body.dart';
import 'package:homebook/styles/icons.dart';
import 'package:homebook/widgets/rounded_panel.dart';
import 'package:intl/intl.dart';

import '../../widgets/backdrop.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final currentMonth = DateFormat("MMMM").format(DateTime.now());

    return Backdrop(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            spacing: 32,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          currentMonth,
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                      TextButton(
                        child: Text("Close month"),
                        onPressed: () => {},
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: Icon(AppIcons.barChart),
                      ),
                    ],
                  ),
                  RoundedPanel(child: TotalPanelBody()),
                ],
              ),
              Column(children: [Text("test")]),
            ],
          ),
        ),
      ),
    );
  }
}
