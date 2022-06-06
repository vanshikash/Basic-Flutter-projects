import 'package:flutter/material.dart';
import './text_output.dart';
class TextControl extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextControlState();
  }
}
class _TextControlState extends State<TextControl>
{
  String _answerText = 'You pressed the button zero times!';
  @override
  Widget build(BuildContext context) {
   
    return Column(
          children: <Widget>[
            TextOutput(_answerText),
            RaisedButton(
              child: Text('Change text'),
              onPressed: () {
                setState(
                  () {
                    _answerText = 'This changed';
                  }
                );
              },
            ),
          ],
        );

  }
}