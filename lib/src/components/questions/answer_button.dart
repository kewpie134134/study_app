import 'package:flutter/material.dart';
import 'package:study_app/src/utils/hex_color.dart';
import '../../utils/_constants.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {Key? key,
      required this.questionIndex,
      required this.questions,
      required this.answerQuestion,
      required this.keyString})
      : super(key: key);

  final int questionIndex;
  final List<Map<String, Object>> questions;
  final void Function() answerQuestion;
  final String keyString;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Constants().answerButtonHeight / 2),
      child: SizedBox(
        width: double.infinity,
        height: Constants().answerButtonHeight,
        child: ElevatedButton(
          onPressed: answerQuestion,
          style: ElevatedButton.styleFrom(
            primary: HexColor("#D6D7D7"),
          ),
          child: Text(
            questions[questionIndex][keyString] as String,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
