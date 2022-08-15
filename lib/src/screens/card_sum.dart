import 'package:flutter/material.dart';

class CardSumScreeen extends StatelessWidget {
  const CardSumScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("トランプ足し合わせゲーム")),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('images/trumps/card_-.png'),
              ElevatedButton(onPressed: () {}, child: const Text("ゲームスタート")),
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
