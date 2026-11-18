import 'package:flutter/material.dart';
import 'package:homebook/screens/home/home.dart';
import 'package:homebook/styles/theme.dart';

void main() {
  runApp(Homebook());
}


class Homebook extends StatelessWidget {

  const Homebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homebook',
      theme: homebookTheme(Brightness.light),
      darkTheme: homebookTheme(Brightness.dark),
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
