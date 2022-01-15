import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _updateIndexOfMain;
  final String answer;
  Answer(this.answer, this._updateIndexOfMain);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _updateIndexOfMain,
        child: Text(
          answer,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
