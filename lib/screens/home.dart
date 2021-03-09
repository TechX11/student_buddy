import 'package:flutter/material.dart';
import 'package:student_buddy/screens/Group/list_of_subjects.dart';
import 'package:student_buddy/widget/widgets.dart';

class Home extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Buddy'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.notifications_none_rounded),
                onPressed: () {},
                iconSize: 40.0,
              )
            ],
          ),
          SizedBox(height: 50),
          Text(
            'Please choose where you want to go',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 30),
          LevelChoice(
            onPressed: () {
              Navigator.pushNamed(context, SubjectList.id);
            },
            grade: 'O Level',
            color: Colors.blue,
          ),
          SizedBox(height: 30),
          LevelChoice(
            onPressed: () {},
            grade: 'A Level',
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
