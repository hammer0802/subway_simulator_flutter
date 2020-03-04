import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class RecipeTile extends StatelessWidget {
  const RecipeTile(
      {this.recipeTitle,
      this.recipeSubTitle,
      this.tapCallback,
      this.longPressCallback,
      this.imageUrl});

  final String recipeTitle;
  final String recipeSubTitle;
  final Function tapCallback;
  final Function longPressCallback;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(4),
        child: ListTile(
          leading: Image(
            image: NetworkImage(imageUrl),
          ),
          onLongPress: () => longPressCallback,
          onTap: () => tapCallback,
          title: Text(
            recipeTitle,
            style: kTileTitleTextStyle,
          ),
          subtitle: Text(
            recipeSubTitle,
            style: kTileSubTitleTextStyle,
          ),
        ),
      ),
    );
  }
}
