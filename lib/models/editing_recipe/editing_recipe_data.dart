import 'package:flutter/foundation.dart';
import 'package:subway_simulator_flutter/models/editing_recipe/editing_recipe.dart';
import 'package:subway_simulator_flutter/models/recipe_items/bread.dart';
import 'package:subway_simulator_flutter/models/recipe_items/dressing.dart';
import 'package:subway_simulator_flutter/models/recipe_items/sandwich.dart';
import 'package:subway_simulator_flutter/models/recipe_items/topping.dart';
import 'package:subway_simulator_flutter/models/recipe_items/vegetable.dart';
import '../enums.dart';

class EditingRecipeData extends ChangeNotifier {
  final EditingRecipe _editingRecipe = EditingRecipe(vegetables: {});

  EditingRecipe get editingRecipe => _editingRecipe;

  bool get isCompleted {
    if (_editingRecipe.name.isNotEmpty &&
        _editingRecipe.sandwich != null &&
        _editingRecipe.bread != null &&
        _editingRecipe.dressings.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  void setName(String name) {
    _editingRecipe.name = name;
    notifyListeners();
  }

  void setSandwich(Sandwich sandwich) {
    _editingRecipe.sandwich = sandwich;
    notifyListeners();
  }

  void setIsFootLong() {
    _editingRecipe.toggleIsFootLong();
    notifyListeners();
  }

  void setBread(Bread bread) {
    _editingRecipe.bread = bread;
    notifyListeners();
  }

  void setIsToast() {
    _editingRecipe.toggleIsToast();
    notifyListeners();
  }

  void setToppings(Topping topping, int value) {
    _editingRecipe.toppings[topping] = value;
    notifyListeners();
  }

  void setVegetables(Vegetable vegetable, Amount amount) {
    _editingRecipe.vegetables[vegetable] = amount;
    notifyListeners();
  }

  void setDressings(Dressing dressing, Amount amount) {
    _editingRecipe.dressings[dressing] = amount;
    notifyListeners();
  }
}
