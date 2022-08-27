import 'package:flutter/material.dart';

class QuestionView extends StatelessWidget {
  const QuestionView(
      {Key? key, required this.questionIndex, required this.questions})
      : super(key: key);

  /// 問題文の id か index を渡す想定
  final int questionIndex;

  /// 問題文オブジェクト
  final List<Map<String, Object>> questions;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            questions[questionIndex]["question"].toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
