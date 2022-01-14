import 'package:flutter/material.dart';

import './answers.dart';
import './questions.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // Application Root.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var _questionList = [
    "To make up for fleeting motivation, one should ______",
    "Reducing reliance on motivation helps in being ______",
    "Which of the following factors influence our habits the most?",
    "Which of the following helps to make smarter choice & develop positive habits?",
    "Q5",
    "Q6"
  ];
  List<List<Map<String, Object>>> _answerList = [
    [
      {'text': "Get Motivated", 'score': 0},
      {'text': "Make it consistent", 'score': 0},
      {'text': "Make the habit easy", 'score': 10},
      {'text': "Choose hard habits", 'score': 0},
    ],
    [
      {'text': "Disciplined", 'score': 0},
      {'text': "Consistent", 'score': 10},
      {'text': "Punctual", 'score': 0},
      {'text': "Happy", 'score': 0},
    ],
    [
      {'text': "Our environment, friends, and families", 'score': 10},
      {'text': "Our motivation levels", 'score': 0},
      {'text': "Our desire to succeed", 'score': 0},
      {'text': "All of the above", 'score': 0},
    ],
    [
      {'text': "Exercise", 'score': 0},
      {'text': "Healthy Eating", 'score': 0},
      {'text': "Mindfulness", 'score': 0},
      {'text': "All of the above", 'score': 10},
    ],
    [
      {'text': "Option 5.A", 'score': 0},
      {'text': "Option 5.B", 'score': 10},
      {'text': "Option 5.C", 'score': 0},
      {'text': "Option 5.D", 'score': 0},
    ],
    [
      {'text': "Option 6.A", 'score': 0},
      {'text': "Option 6.B", 'score': 0},
      {'text': "Option 6.C", 'score': 10},
      {'text': "Option 6.D", 'score': 0},
    ],
  ];
  double _score = 0;
  var _currentIndex = 0;

  void _updateIndex(int currentScore) {
    _score += currentScore;
    setState(() {
      _currentIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentIndex = 0;
      _score = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome to Quiz App',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 28),
          ),
        ),
        body: _currentIndex < _questionList.length
            ? Center(
                child: Column(
                  children: [
                    Question(_questionList[_currentIndex]),
                    ..._answerList[_currentIndex].map((temp) {
                      return Answer(temp['text'].toString(),
                          () => _updateIndex(temp['score'] as int));
                    }).toList(),
                  ],
                ),
              )
            : Result(_score.toString(), _resetQuiz),
      ),
    );
  }
}
