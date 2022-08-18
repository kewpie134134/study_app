import 'package:flutter/material.dart';

class StudyingScreeen extends StatelessWidget {
  const StudyingScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("勉強中")),
      body: const Center(
        child: Text("勉強中画面", style: TextStyle(fontSize: 32.0)),
      ),
    );
  }
}
