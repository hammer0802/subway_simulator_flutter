import 'package:flutter/cupertino.dart';

class Dressing {
  Dressing({
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
