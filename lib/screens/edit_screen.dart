import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:subway_simulator_flutter/components/show_dialog_message.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class EditScreen extends StatefulWidget {
  static const String id = 'edit_screen';

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  bool isDressingSelected = false;

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
          // FIXME : 後々消す
          actions: <Widget>[
            IconButton(
              icon: Icon(AntDesign.menu_fold),
              onPressed: () {
                setState(() {
                  isDressingSelected = !isDressingSelected;
                });
              },
            ),
          ],
        ),
        floatingActionButton: AnimatedOpacity(
          opacity: isDressingSelected ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: FloatingActionButton.extended(
            elevation: 4,
            icon: const Icon(Icons.receipt),
            label: const Text('完成'),
            onPressed: () {},
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
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
      style: kWhiteBoldTextStyle,
    ),
  );
}
