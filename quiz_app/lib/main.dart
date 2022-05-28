import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
   final questions = const [
      {
        'questionText': 'What\'s your favourite time of the day?',
        'answers': ['morning', 'afternoon', 'evening', 'night'],
      },
      {
        'questionText':  'What\'s your spirit animal?',
        'answers': ['panda', 'lion', 'dog', 'cat'],
      },
      {
        'questionText':  'What\'s your favorite genre of music',
        'answers': ['pop', 'edm', 'rock', 'lofi'],
      },
     
    ];
  var _questionIndex = 0;

  void _answerQuestion() {
    
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    if(_questionIndex < questions.length){
      print('We have more questions!');
    }
  }

  @override // declarator
  Widget build(BuildContext context) {
    
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers']as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
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
