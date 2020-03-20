import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway_simulator_flutter/models/constants.dart';
import 'package:subway_simulator_flutter/models/recipe/recipe_data.dart';
import 'package:subway_simulator_flutter/ui/screens/top_screen.dart';
import 'ui/screens/edit_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecipeData(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          bottomAppBarColor: kPrimaryColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: kAccentColor,
            foregroundColor: Colors.white,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: kAccentColor,
            foregroundColor: Colors.white,
          ),
        ),
        initialRoute: TopScreen.id,
        routes: {
          TopScreen.id: (context) => TopScreen(),
          EditScreen.id: (context) => EditScreen()
        },
      ),
    );
  }
}
