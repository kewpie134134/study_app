import 'package:flutter/material.dart';
import 'package:study_app/src/utils/trumps.dart';

class CardSumScreeen extends StatefulWidget {
  const CardSumScreeen({Key? key}) : super(key: key);

  @override
  State<CardSumScreeen> createState() => _CardSumScreenState();
}

class _CardSumScreenState extends State<CardSumScreeen> {
  int counter = 0;
  int sum = 0;

  // ボタンを押したときの挙動
  void _onPressed(String path) {
    setState(() {
      counter += 1;
      sum += allTrumps[path] as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("トランプ足し合わせゲーム")),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(randomAllTrumpMarks[counter]),
            counter < randomAllTrumpMarks.length - 1
                // トランプの配列が 52 枚まで達していないとき
                ? ElevatedButton(
                    onPressed: () {
                      _onPressed(randomAllTrumpMarks[counter]);
                    },
                    child: const Text("ゲームスタート"))
                // トランプの枚数が 52 枚に達したとき
                : ElevatedButton(onPressed: () {}, child: const Text("終了！！")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: () {}, child: const Text("遊び方")),
                ElevatedButton(onPressed: () {}, child: const Text("ハイスコア"))
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
