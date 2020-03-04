import 'package:flutter/material.dart';
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
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Text('test'),
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
