import 'package:flutter/material.dart';
import 'package:TotalScore_52/questions.dart';
//import 'package:TotalScore_52/Answer.dart';

class MyQuiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int listIndex;
  final Function answer;

  MyQuiz(
      {@required this.questions,
      @required this.listIndex,
      @required this.answer});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Questions(questions[listIndex]['QuestionText'], 28),
        Questions('', 5),
        ...(questions[listIndex]['AnswerText'] as List<Map<String, Object>>)
            .map((answerTextValue) {
          //  return (AnswerQues(answer, answerTextValue['Text']));
          return (answerTextValue['Text']);
        }).toList(),
        Text('i can add'),
      ],
    ));
  }
}
