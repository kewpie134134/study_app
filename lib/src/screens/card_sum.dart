import 'package:flutter/material.dart';

class CardSumScreeen extends StatelessWidget {
  const CardSumScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("トランプ足し合わせゲーム")),
      body: const Center(
        child: Text("トランプ足し合わせゲーム画面", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
