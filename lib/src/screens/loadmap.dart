import 'package:flutter/material.dart';

class LoadmapScreeen extends StatelessWidget {
  const LoadmapScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ロードマップ")),
      body: const Center(
        child: Text("ロードマップ画面", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
