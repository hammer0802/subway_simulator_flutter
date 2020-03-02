import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/models/constants.dart';
import 'package:subway_simulator_flutter/models/enums.dart';
import 'package:subway_simulator_flutter/screens/edit_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
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
          PopupMenuButton(
            icon: Icon(Icons.menu),
            onSelected: (value) {
              if (value == TopPopupMenuItems.privacyPolicy) {
                _launchURL(kPrivacyPolicyUrl);
              }
            },
            itemBuilder: (context) => <PopupMenuEntry>[
              const PopupMenuItem(
                value: TopPopupMenuItems.privacyPolicy,
                child: Text(kPrivacyPolicyButtonText),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Text("test"),
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
