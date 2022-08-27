import 'package:flutter/material.dart';
import 'package:study_app/src/components/questions/answer_button.dart';
import 'package:study_app/src/components/questions/question_view.dart';
import 'package:study_app/src/screens/result.dart';
import 'package:study_app/src/utils/_constants.dart';

class StudyingScreeen extends StatefulWidget {
  const StudyingScreeen({Key? key}) : super(key: key);

  @override
  State<StudyingScreeen> createState() => _StudyingScreenState();
}

class _StudyingScreenState extends State<StudyingScreeen> {
  /// 問題文の index
  var _questionIndex = 0;

  /// 正当数
  var _correctAnswerCount = 0;

  /// 問題
  final _questions = [
    {
      'question':
          'The weather in Merizo is very (x) year-round, though there are showers almost daily from December through March.',
      'a': 'agreeable',
      'b': 'agree',
      'c': 'agreement',
      'd': 'agreeably',
      'correctAnswer': 'A'
    },
    {
      'question':
          '(x) for the competition should be submitted by November 28 at the latest.',
      'a': 'Enter',
      'b': 'Entered',
      'c': 'Entering',
      'd': 'Entries',
      'correctAnswer': 'D'
    }
  ];

  void _onPressedAnswerButton() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void _onPressedResetButton() {
    setState(() {
      _questionIndex = 0;
      _correctAnswerCount = 0;
    });
  }

  void _incrementCorrectIndex() {
    setState(() {
      _correctAnswerCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("文法問題"),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: Constants().questionAreaHeight,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '(x) に入る単語をこたえよ。',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    height: Constants().questionAreaHeight,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        "Q${_questionIndex + 1}",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  QuestionView(
                      questionIndex: _questionIndex, questions: _questions),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AnswerButton(
                            questionIndex: _questionIndex,
                            questions: _questions,
                            onPressedAnswerButton: _onPressedAnswerButton,
                            incrementCorrect: _incrementCorrectIndex,
                            keyString: "a"),
                        AnswerButton(
                            questionIndex: _questionIndex,
                            questions: _questions,
                            onPressedAnswerButton: _onPressedAnswerButton,
                            incrementCorrect: _incrementCorrectIndex,
                            keyString: "b"),
                        AnswerButton(
                            questionIndex: _questionIndex,
                            questions: _questions,
                            onPressedAnswerButton: _onPressedAnswerButton,
                            incrementCorrect: _incrementCorrectIndex,
                            keyString: "c"),
                        AnswerButton(
                            questionIndex: _questionIndex,
                            questions: _questions,
                            onPressedAnswerButton: _onPressedAnswerButton,
                            incrementCorrect: _incrementCorrectIndex,
                            keyString: "d"),
                      ],
                    ),
                  )),
                ],
              )
            : ResultScreen(
                tapResetButton: _onPressedResetButton,
                questionCount: _questions.length,
                correctAnswerCount: _correctAnswerCount,
              ),
      ),
    );
  }
}
