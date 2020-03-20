import 'package:flutter/material.dart';
import 'package:subway_simulator_flutter/ui/components/reusable_grid_card.dart';
import 'package:subway_simulator_flutter/ui/components/show_dialog_message.dart';
import 'package:subway_simulator_flutter/models/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = Firestore.instance;

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
            const GridStream(path: 'sandwiches'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('ブレッド'),
            const GridStream(path: 'breads'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('トッピング'),
            const GridStream(path: 'toppings'),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('野菜'),
            const GridStream(
              path: 'vegetables',
              isVegetable: true,
            ),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('アクセント野菜'),
            const GridStream(
              path: 'vegetables',
              isAccent: true,
            ),
            const SizedBox(
              height: kItemPadding * 2,
            ),
            editTitle('ドレッシング'),
            const GridStream(path: 'dressings'),
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

class GridStream extends StatelessWidget {
  const GridStream({
    @required this.path,
    this.isVegetable = false,
    this.isAccent = false,
  });

  final String path;
  final bool isVegetable;
  final bool isAccent;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection(path).snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: kPrimaryColor,
            ),
          );
        }

        List<DocumentSnapshot> documents;

        if (isVegetable) {
          documents = snapshot.data.documents
              .where((d) => d.data['isAccent'] != true)
              .toList();
        } else if (isAccent) {
          documents = snapshot.data.documents
              .where((d) => d.data['isAccent'] == true)
              .toList();
        } else {
          documents = snapshot.data.documents;
        }
        final reusableGridCards = <ReusableGridCard>[];
        for (final document in documents) {
          final name = document.data['name'].toString();
          final imageUrl = document.data['imageUrl'].toString();

          final reusableGridCard = ReusableGridCard(
            onPress: () {},
            imageUrl: imageUrl,
            title: name,
            width: MediaQuery.of(context).size.width,
          );
          reusableGridCards.add(reusableGridCard);
        }
        return GridView.count(
          shrinkWrap: true,
          childAspectRatio: 0.6,
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          children: reusableGridCards,
        );
      },
    );
  }
}
