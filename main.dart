import 'package:flutter/material.dart';
import 'package:TotalScore_52/Quiz.dart';
import 'package:TotalScore_52/Result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _listIndex = 0;
  var _totalScore, _score = 0;
  var _questions = [
    {
      'QuestionText': 'what\'s your name',
      'AnswerText': [
        {'text': 'Sakthivel', 'score': 10},
        {'text': 'Rani', 'score': 5},
        {'text': 'priyama', 'score': 4},
        {'text': 'Sangee', 'score': 0},
      ]
    },
    {
      'QuestionText': 'what\'s your favourite color',
      'AnswerText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 4},
        {'text': 'Orange', 'score': 0},
      ]
    },
    {
      'QuestionText': 'what\'s your favorite bike',
      'AnswerText': [
        {'text': 'Yamaha', 'score': 10},
        {'text': 'Suzuki', 'score': 5},
        {'text': 'Bajaj', 'score': 4},
        {'text': 'Honda', 'score': 00}
      ]
    },
    {
      'QuestionText': 'what\'s your favorite company',
      'AnswerText': [
        {'text': 'TCS', 'score': 10},
        {'text': 'Lnt', 'score': 4},
        {'text': 'TEL', 'score': 3},
        {'text': 'CTS', 'score': 2}
      ]
    },
    {
      'QuestionText': 'what\'s your favorite food',
      'AnswerText': [
        {'text': 'rice', 'score': 10},
        {'text': 'Chappathi', 'score': 10},
        {'text': 'parotta', 'score': 10},
        {'text': 'Dosa', 'score': 10}
      ]
    }
  ];

  void _answer() {
    _totalScore = _totalScore + _score;
    setState(() {
      _listIndex++;
    });

    print(_listIndex);
  }

  @override
  Widget build(BuildContext bContext) {
    return (MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First App'),
              backgroundColor: Color(0xff885566),
            ),
            body: _listIndex < _questions.length
                ? MyQuiz(
                    answer: _answer,
                    listIndex: _listIndex,
                    questions: _questions)
                : Result(_totalScore))));
  }
}

//void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}
