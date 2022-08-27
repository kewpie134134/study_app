import 'package:flutter/material.dart';
import 'package:study_app/src/utils/hex_color.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.onPressedResetButton,
    required this.onPressedBackToUnitPageButton,
    required this.questionCount,
    required this.correctAnswerCount,
  }) : super(key: key);

  /// 選択時の処理
  final void Function() onPressedResetButton;

  /// 問題説明画面へ戻るボタン
  final void Function() onPressedBackToUnitPageButton;

  /// 全問台数
  final int questionCount;

  /// 正当数
  final int correctAnswerCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "終了",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "正当数: $correctAnswerCount / $questionCount",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: ElevatedButton(
              onPressed: onPressedResetButton,
              style: ElevatedButton.styleFrom(
                primary: HexColor("#6DDE00"),
              ),
              child: const Text(
                "リセットする",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width - 100,
            child: ElevatedButton(
              onPressed: onPressedBackToUnitPageButton,
              child: const Text(
                "問題説明画面へ戻る",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
