import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionsStr;
  final double size;

  Questions(this.questionsStr, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionsStr,
          style: TextStyle(fontSize: size),
          textAlign: TextAlign.center,
        ));
  }
}
