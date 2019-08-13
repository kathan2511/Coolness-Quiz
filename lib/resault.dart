import 'package:flutter/material.dart';

class Resault extends StatelessWidget {
  final int resaultScore;
  final Function resetHandler;
  Resault(this.resaultScore, this.resetHandler);

  String get resaultPhrase {
    String resaultText;
    if (resaultScore <= 40) {
      resaultText = 'You need a life Dude!';
    } else {
      resaultText = 'Your life is great';
    }
    return resaultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resaultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your Score is ' + resaultScore.toString(),
            style: TextStyle(color: Colors.blue,fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
