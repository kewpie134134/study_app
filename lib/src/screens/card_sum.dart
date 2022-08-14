import 'package:flutter/material.dart';

class CardSumScreeen extends StatelessWidget {
  const CardSumScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("トランプ足し合わせゲーム")),
      body: Center(
        child: Image.asset('images/trumps/card_-.png'),
      ),
    );
  }
}
