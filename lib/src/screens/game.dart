import 'package:flutter/material.dart';

class GameScreeen extends StatelessWidget {
  const GameScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ミニゲーム")),
      body: const Center(
        child: Text("ミニゲーム画面", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
