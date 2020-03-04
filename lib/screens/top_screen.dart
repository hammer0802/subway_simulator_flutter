import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/components/recipe_tile.dart';
import 'package:subway_simulator_flutter/models/constants.dart';
import 'package:subway_simulator_flutter/models/enums.dart';
import 'package:subway_simulator_flutter/screens/edit_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';

  Future _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // ignore: only_throw_errors
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(kTopAppBarTitle),
        backgroundColor: kPrimaryColor,
        actions: <Widget>[
          PopupMenuButton<dynamic>(
            icon: Icon(Icons.menu),
            onSelected: (dynamic value) {
              if (value == TopPopupMenuItems.privacyPolicy) {
                _launchURL(kPrivacyPolicyUrl);
              }
            },
            itemBuilder: (context) => <PopupMenuEntry>[
              const PopupMenuItem<dynamic>(
                value: TopPopupMenuItems.privacyPolicy,
                child: Text(kPrivacyPolicyButtonText),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: <RecipeTile>[
          RecipeTile(
            recipeTitle: '仮タイトル',
            recipeSubTitle: '仮サブタイトル',
            tapCallback: () {},
            longPressCallback: () {},
            imageUrl:
                'https://2.bp.blogspot.com/-SFnAF95mlII/W0rqWy_AD0I/AAAAAAABNZw/Bsg2nGRpywAUqSaE7MGo4rKuoKPzsyFuwCLcBGAs/s800/food_bainmi_sandwich.png',
          ),
          RecipeTile(
            recipeTitle: '仮タイトル2',
            recipeSubTitle: '仮サブタイトル2',
            tapCallback: () {},
            longPressCallback: () {},
            imageUrl:
                'https://1.bp.blogspot.com/-U6FsvImKZrM/W3abQMwIp8I/AAAAAAABN_0/uv4IhygXf0MJerm2gywG8gjdfPxg7bFmwCLcBGAs/s800/food_sandwich_blt.png',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: kSecondaryColor,
        onPressed: () {
          Navigator.pushNamed(context, EditScreen.id);
        },
      ),
    );
  }
}
