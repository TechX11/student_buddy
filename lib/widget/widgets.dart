import 'package:flutter/material.dart';

class LevelChoice extends StatelessWidget {

  LevelChoice({this.onPressed, this.color, this.grade});

  final String grade;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),

        height: 100,
        width: 100,
        child: Center(
          child: Text(
            grade,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}