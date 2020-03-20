import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class ReusableGridCard extends StatelessWidget {
  const ReusableGridCard(
      {this.colour = Colors.white,
      @required this.onPress,
      @required this.imageUrl,
      @required this.title,
      @required this.width});
  final Color colour;
  final Function onPress;
  final String imageUrl;
  final String title;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: InkWell(
          onTap: () => onPress,
          child: Column(
            children: <Widget>[
              SizedBox(
                child: Image.network(imageUrl),
                width: width,
                height: 80,
              ),
              const SizedBox(
                height: kItemPadding,
              ),
              AutoSizeText(
                title,
                wrapWords: true,
                minFontSize: 8,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
