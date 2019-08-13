import 'package:flutter/material.dart';
import 'package:flutter_first/resault.dart';
import './quiz.dart';
import './resault.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
     var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'Smoked?',
      'answers': [
        {'text': 'Yes', 'score': 6},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Got drunk?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Kissed someone of opposite sex?',
      'answers': [
        {'text': 'Yes', 'score': 6},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Kissed someone of the same sex?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Peed in the pool?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Been suspended in college?',
      'answers': [
        {'text': 'Yes', 'score': 6},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Been in a fist fight?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Stole something?',
      'answers': [
        {'text': 'Yes', 'score': 3},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Done drugs?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Been in love?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Cried in love?',
      'answers': [
        {'text': 'Yes', 'score': 7},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Heartbroken?',
      'answers': [
        {'text': 'Yes', 'score': 7},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Got arrested?',
      'answers': [
        {'text': 'Yes', 'score': 12},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Made out in a car?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'questionText': 'Made out in public?',
      'answers': [
        {'text': 'Yes', 'score': 11},
        {'text': 'No', 'score': 0},
      ],
    },
  ];
  void _resetQuiz()
  {
    setState(() {
       _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coolness Quiz'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Resault(_totalScore,_resetQuiz),
      ),
    );
  }
}
