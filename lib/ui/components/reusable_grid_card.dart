import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      child: InkWell(
        onTap: () => onPress,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: <Widget>[
              SizedBox(
                child: CachedNetworkImage(
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    backgroundColor: kPrimaryColor,
                  ),
                  imageUrl: imageUrl,
                  errorWidget: (context, url, error) => Icon(
                    Icons.error,
                    color: kAccentColor,
                  ),
                ),
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
