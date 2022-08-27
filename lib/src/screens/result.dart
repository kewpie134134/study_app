import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.tapResetButton})
      : super(key: key);

  final void Function() tapResetButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("問題が終了しました！"),
        ElevatedButton(
          onPressed: tapResetButton,
          child: const Text("リセット"),
        )
      ],
    );
  }
}
