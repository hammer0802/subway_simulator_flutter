import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class ReusableGridCard extends StatelessWidget {
  const ReusableGridCard(
      {@required this.colour,
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
      child: InkWell(
        onTap: () => onPress,
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Image.network(imageUrl),
              width: width,
            ),
            const SizedBox(
              height: kItemPadding,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
