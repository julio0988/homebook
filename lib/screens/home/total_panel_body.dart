import 'package:flutter/cupertino.dart';
import 'package:homebook/screens/home/responsible_selector.dart';

class TotalPanelBody extends StatelessWidget {
  const TotalPanelBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [ResponsibleSelector()]),
        Row(
          children: [
            Column(children: [Text("R\$ XXXX"), Text("X transactions")]),

          ],
        ),
      ],
    );
  }
}
