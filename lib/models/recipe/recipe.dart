import 'package:flutter/cupertino.dart';
import 'package:subway_simulator_flutter/models/enums.dart';
import 'package:subway_simulator_flutter/models/recipe_items/bread.dart';
import 'package:subway_simulator_flutter/models/recipe_items/dressing.dart';
import 'package:subway_simulator_flutter/models/recipe_items/sandwich.dart';
import 'package:subway_simulator_flutter/models/recipe_items/topping.dart';
import 'package:subway_simulator_flutter/models/recipe_items/vegetable.dart';

class Recipe {
  Recipe({
    @required this.name,
    @required this.sandwich,
    @required this.isFootLong,
    @required this.bread,
    @required this.isToast,
    @required this.toppings,
    @required this.vegetables,
    @required this.dressings,
    @required this.editTime,
  });

  String name;
  Sandwich sandwich;
  bool isFootLong;
  Bread bread;
  bool isToast;
  Map<Topping, int> toppings;
  Map<Vegetable, Amount> vegetables;
  Map<Dressing, Amount> dressings;
  DateTime editTime;

  void updateRecipe({
    String name,
    Sandwich sandwich,
    bool isFootLong,
    Bread bread,
    bool isToast,
    Map<Topping, int> toppings,
    Map<Vegetable, Amount> vegetables,
    Map<Dressing, Amount> dressings,
  }) {
    this
      ..name = name
      ..sandwich = sandwich
      ..isFootLong = isFootLong
      ..bread = bread
      ..isToast = isToast
      ..toppings = toppings
      ..vegetables = vegetables
      ..dressings = dressings;

    editTime = DateTime.now();
  }
}
