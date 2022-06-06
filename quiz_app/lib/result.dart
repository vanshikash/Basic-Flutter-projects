import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 10) {
      resultText = 'You are okay';
    } else if (resultScore <= 20) {
      resultText = 'you are pretty likable!';
    } else {
      resultText = 'you are awesome!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Restart quiz!'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
