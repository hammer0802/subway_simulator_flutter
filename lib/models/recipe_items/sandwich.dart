import 'package:flutter/cupertino.dart';

class Sandwich {
  Sandwich({
    @required this.name,
    @required this.recommendBread,
    @required this.recommendDressing,
    @required this.kcal,
    @required this.carbo,
    @required this.price,
    @required this.footLongPrice,
    @required this.imageUrl,
  });

  final String name;
  final String recommendBread;
  final String recommendDressing;
  final int kcal;
  final double carbo;
  final int price;
  final int footLongPrice;
  final String imageUrl;
}
