import 'package:flutter/cupertino.dart';

class Topping {
  Topping({
    @required this.name,
    @required this.kcal,
    @required this.carbo,
    @required this.price,
    @required this.imageUrl,
  });

  final String name;
  final int kcal;
  final double carbo;
  final int price;
  final String imageUrl;
}
