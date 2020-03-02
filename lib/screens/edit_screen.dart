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
      ),
    );
  }
}
