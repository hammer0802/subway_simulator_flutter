import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_simulator_flutter/screens/top_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TopScreen(),
    );
  }
}
