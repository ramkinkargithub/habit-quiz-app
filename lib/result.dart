import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String totalScore;
  final VoidCallback reset;
  Result(this.totalScore, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(totalScore),
        FlatButton(
          onPressed: reset,
          child: Text(
            'Try once more !',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    ));
  }
}
