import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/components/reusable_grid_card.dart';
import 'package:subway_simulator_flutter/components/show_dialog_message.dart';
import 'package:subway_simulator_flutter/models/constants.dart';

class EditScreen extends StatefulWidget {
  static const String id = 'edit_screen';

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
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
        ),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4,
          icon: const Icon(Icons.receipt),
          label: const Text('完成'),
          onPressed: () {},
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(kItemPadding),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'レシピ名',
                  hintText: '私のお気に入り',
                ),
              ),
            ),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('サンドウィッチ'),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: 0.7,
              crossAxisCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                ReusableGridCard(
                  colour: Colors.white,
                  onPress: () {},
                  imageUrl:
                      'https://1.bp.blogspot.com/-q0vC8T9XRSg/XiOwuwtXJLI/AAAAAAABXHk/clxgC9d2E8YrWluWTw0NFYP832mEMdN-ACNcBGAsYHQ/s1600/virus_corona.png',
                  title: 'test',
                  width: MediaQuery.of(context).size.width,
                ),
                ReusableGridCard(
                  colour: Colors.white,
                  onPress: () {},
                  imageUrl:
                      'https://1.bp.blogspot.com/-q0vC8T9XRSg/XiOwuwtXJLI/AAAAAAABXHk/clxgC9d2E8YrWluWTw0NFYP832mEMdN-ACNcBGAsYHQ/s1600/virus_corona.png',
                  title: 'test',
                  width: MediaQuery.of(context).size.width,
                ),
                ReusableGridCard(
                  colour: Colors.white,
                  onPress: () {},
                  imageUrl:
                      'https://1.bp.blogspot.com/-q0vC8T9XRSg/XiOwuwtXJLI/AAAAAAABXHk/clxgC9d2E8YrWluWTw0NFYP832mEMdN-ACNcBGAsYHQ/s1600/virus_corona.png',
                  title: 'test',
                  width: MediaQuery.of(context).size.width,
                ),
                ReusableGridCard(
                  colour: Colors.white,
                  onPress: () {},
                  imageUrl:
                      'https://1.bp.blogspot.com/-q0vC8T9XRSg/XiOwuwtXJLI/AAAAAAABXHk/clxgC9d2E8YrWluWTw0NFYP832mEMdN-ACNcBGAsYHQ/s1600/virus_corona.png',
                  title: 'test',
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('ブレッド'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('トッピング'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('野菜'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('アクセント野菜'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('ドレッシング'),
          ],
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

Widget editTitle(String title) {
  return Padding(
    padding: const EdgeInsets.all(kItemPadding),
    child: Text(
      title,
      textAlign: TextAlign.start,
      style: kEditTitleTextStyle,
    ),
  );
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
