import 'package:flutter/material.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ホーム")),
      body: const Center(
        child: Text("ホーム画面", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
