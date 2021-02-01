import 'package:flutter/material.dart';

class AnswerQues extends StatelessWidget {
  final Function selectionHandler;
  final String str;

  AnswerQues(this.selectionHandler, this.str);

  @override
  Widget build(BuildContext context) {
    return (Container(
        width: double.infinity,
        child: RaisedButton(
          // margin: EdgeInsets.all(10),
          color: Colors.deepOrange,
          child: Text(str),
          onPressed: selectionHandler,
        )));
  }
}
