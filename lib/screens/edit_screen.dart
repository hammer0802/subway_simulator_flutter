import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/components/show_dialog_message.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class EditScreen extends StatelessWidget {
  static const String id = 'edit_screen';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => showDialogMessage(
        context,
        title: 'まだ編集中です',
        message: '編集画面を終了しますか？',
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(kEditAppBarTitle),
          backgroundColor: kPrimaryColor,
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: kSecondaryColor,
          elevation: 4,
          icon: const Icon(Icons.receipt),
          label: const Text('完成'),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: kPrimaryColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              bottomAppBarText(text: '合計金額 : xxx 円'),
              bottomAppBarText(text: 'カロリー : xxx kcal'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomAppBarText({String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
