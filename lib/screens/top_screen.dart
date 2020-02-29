import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/constants.dart';

class TopScreen extends StatelessWidget {
  static const String id = 'top_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(kTopAppBarTitle),
        backgroundColor: Color(0xFF1E7931),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
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
        backgroundColor: Color(0xFFF5B710),
        onPressed: () {},
      ),
    );
  }
}
