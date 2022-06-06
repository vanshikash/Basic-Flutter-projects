import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget{
  final String answerText;
  TextOutput(this.answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(answerText);
  }
}