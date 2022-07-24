import 'package:flutter/material.dart';

class ListScreeen extends StatelessWidget {
  const ListScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("科目")),
      body: const Center(
        child: Text("科目画面", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
