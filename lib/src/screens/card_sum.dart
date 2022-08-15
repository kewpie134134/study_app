import 'package:flutter/material.dart';
import 'package:study_app/src/utils/trumps.dart';

class CardSumScreeen extends StatefulWidget {
  const CardSumScreeen({Key? key}) : super(key: key);

  @override
  State<CardSumScreeen> createState() => _CardSumScreenState();
}

class _CardSumScreenState extends State<CardSumScreeen> {
  int counter = 0;
  var check = 0;

  void _onPressed() {
    counter += 1;
    setState(() {
      // counter = counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("トランプ足し合わせゲーム")),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(allTrumpsMarks[counter]),
              ElevatedButton(
                  onPressed: () {
                    _onPressed();
                  },
                  child: const Text("ゲームスタート")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed: () {}, child: const Text("遊び方")),
                  ElevatedButton(onPressed: () {}, child: const Text("ハイスコア"))
                ],
              )
            ],
          ),
        ));
  }
}
