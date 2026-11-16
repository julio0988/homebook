import 'package:flutter/material.dart';

void main() {
  runApp(Homebook());
}


class Homebook extends StatelessWidget {

  const Homebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("Hello world", textDirection: TextDirection.ltr),
      ),
    );
  }
}
