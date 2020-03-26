import 'package:subway_simulator_flutter/models/enums.dart';
import 'package:subway_simulator_flutter/models/recipe_items/bread.dart';
import 'package:subway_simulator_flutter/models/recipe_items/dressing.dart';
import 'package:subway_simulator_flutter/models/recipe_items/sandwich.dart';
import 'package:subway_simulator_flutter/models/recipe_items/topping.dart';
import 'package:subway_simulator_flutter/models/recipe_items/vegetable.dart';

class EditingRecipe {
  EditingRecipe({
    this.name,
    this.sandwich,
    this.isFootLong,
    this.bread,
    this.isToast,
    this.toppings,
    this.vegetables,
    this.dressings,
  });

  String name;
  Sandwich sandwich;
  bool isFootLong;
  Bread bread;
  bool isToast;
  Map<Topping, int> toppings;
  Map<Vegetable, Amount> vegetables;
  Map<Dressing, Amount> dressings;

  void toggleIsFootLong() {
    isFootLong = !isFootLong;
  }

  void toggleIsToast() {
    isToast = !isToast;
  }
}
