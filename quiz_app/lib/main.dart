import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite time of the day?',
      'answers': [{'text': 'morning', 'score': 5}, {'text' :'afternoon', 'score' : 2}, {'text': 'evening', 'score' : 7}, {'text': 'night', 'score' : 10}],
    },
    {
      'questionText': 'What\'s your spirit animal?',
      'answers': [{'text': 'panda', 'score': 10}, {'text' :'lion', 'score' : 8}, {'text': 'dog', 'score' : 7}, {'text': 'cat', 'score' : 5}],
    },
    {
      'questionText': 'What\'s your favorite genre of music',
      'answers': [{'text': 'pop', 'score': 10}, {'text' :'edm', 'score' : 8}, {'text': 'rock', 'score' : 5}, {'text': 'lofi', 'score' : 9}],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz()
  {
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;


    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override // declarator
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

// class Person{
//   String? name;
//   int? age;

//   //add constructer by writing name of class and add arguments
//   // in {} - named arguments useful when many arguments used- as we dont need to remember position of arguments
//   Person({String inputName, int inputAge = 30 }){
//     //can assign default values in arguments
//     //@required - to make it cumpolsary
//     name = inputName;
//     age = inputAge; // or use this.age if arguments name is same as variable name
//   }
// }

// double addNumbers(double num1, double num2)
// {
// //   print(num1 + num2);
//    return (num1 + num2);
// }

// void main() {
//   var p1 = Person(inputName: 'Max', inputAge: 30);
//   var p2 = Person(inputName: 'Manu', inputAge: 31);
//   print(p1.age);
//   print(p2.name);
//   double firstResult = addNumbers(1, 2.6 );
//   firstResult = addNumbers(1,1);
//   print(firstResult+1);
//   print('Hello');
// }
