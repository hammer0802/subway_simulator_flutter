import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/screens/top_screen.dart';
import 'screens/edit_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TopScreen.id,
      routes: {
        TopScreen.id: (context) => TopScreen(),
        EditScreen.id: (context) => EditScreen()
      },
    );
  }
}
