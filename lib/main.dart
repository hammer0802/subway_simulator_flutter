import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_simulator_flutter/models/recipe/recipe_data.dart';
import 'package:subway_simulator_flutter/screens/top_screen.dart';
import 'screens/edit_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecipeData(),
      child: MaterialApp(
        initialRoute: TopScreen.id,
        routes: {
          TopScreen.id: (context) => TopScreen(),
          EditScreen.id: (context) => EditScreen()
        },
      ),
    );
  }
}
