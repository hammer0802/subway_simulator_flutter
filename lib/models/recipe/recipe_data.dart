import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:subway_simulator_flutter/models/recipe/recipe.dart';
import 'package:subway_simulator_flutter/models/recipe_items/bread.dart';
import 'package:subway_simulator_flutter/models/recipe_items/dressing.dart';
import 'package:subway_simulator_flutter/models/recipe_items/sandwich.dart';
import 'package:subway_simulator_flutter/models/recipe_items/topping.dart';
import 'package:subway_simulator_flutter/models/recipe_items/vegetable.dart';
import '../enums.dart';

class RecipeData extends ChangeNotifier {
  final List<Recipe> _recipes = [];

  UnmodifiableListView<Recipe> get recipes {
    return UnmodifiableListView(_recipes);
  }

  int get recipeCount {
    return _recipes.length;
  }

  void addRecipe({
    String newRecipeTitle,
    Sandwich sandwich,
    bool isFootLong,
    Bread bread,
    bool isToast,
    Map<Topping, int> toppings,
    Map<Vegetable, Amount> vegetables,
    Map<Dressing, Amount> dressings,
  }) {
    final recipe = Recipe(
        name: newRecipeTitle,
        sandwich: sandwich,
        isFootLong: isFootLong,
        bread: bread,
        isToast: isToast,
        toppings: toppings,
        vegetables: vegetables,
        dressings: dressings,
        editTime: DateTime.now());
    _recipes.add(recipe);
    notifyListeners();
  }

  void updateRecipe({
    Recipe recipe,
    String newRecipeTitle,
    Sandwich sandwich,
    bool isFootLong,
    Bread bread,
    bool isToast,
    Map<Topping, int> toppings,
    Map<Vegetable, Amount> vegetables,
    Map<Dressing, Amount> dressings,
  }) {
    recipe.updateRecipe(
      name: newRecipeTitle,
      sandwich: sandwich,
      isFootLong: isFootLong,
      bread: bread,
      isToast: isToast,
      toppings: toppings,
      vegetables: vegetables,
      dressings: dressings,
    );
    notifyListeners();
  }

  void deleteRecipe(Recipe recipe) {
    _recipes.remove(recipe);
    notifyListeners();
  }
}
