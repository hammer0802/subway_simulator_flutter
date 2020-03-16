import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {@required this.colour,
      @required this.onPress,
      @required this.imageUrl,
      @required this.title});
  final Color colour;
  final Function onPress;
  final String imageUrl;
  final String title;

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
              width: 80,
              height: 80,
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
