import 'package:flutter/material.dart';

import './question.dart';
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
  var _questionIndex = 0 ;

  void _answerQuestion() {
    setState((){
        _questionIndex++;
    });
    
    print(_questionIndex);
  }

  @override // declarator
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite time of the day?',
      'what\'s your favourite profession?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 chosen');
              },
            ),
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
