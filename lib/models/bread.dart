import 'package:flutter/cupertino.dart';

class Bread {
  Bread({
    @required this.name,
    @required this.kcal,
    @required this.carbo,
    @required this.imageUrl,
  });

  final String name;
  final int kcal;
  final double carbo;
  final String imageUrl;
}
