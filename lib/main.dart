import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Application Root.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz on Habbit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('All about Habit'),
        ),
        body: Center(
          child: Text('Welcome to Quiz'),
        ),
      ),
    );
  }
}
