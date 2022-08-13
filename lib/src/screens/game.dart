import 'package:flutter/material.dart';
import 'package:study_app/src/screens/card_sum.dart';

class GameScreeen extends StatelessWidget {
  const GameScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ミニゲーム")),
        body: Card(
            margin: const EdgeInsets.all(50.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CardSumScreeen(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.all(10.0),
                width: 300,
                height: 100,
                child: const Text("トランプ足し合わせ", style: TextStyle(fontSize: 30)),
              ),
            )));
  }
}
