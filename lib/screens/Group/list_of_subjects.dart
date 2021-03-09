import 'package:flutter/material.dart';

//import 'package:quotes/Level.dart';
import 'subject.dart';
import 'subject_card.dart';

class SubjectList extends StatefulWidget {
  static const String id = 'subject_list';

  @override
  _SubjectListState createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  List<Subject> subjects = [
    Subject(text: 'Mathematics'),
    Subject(text: 'Add Maths'),
    Subject(text: 'Chemistry'),
    Subject(text: 'Physics'),
    Subject(text: 'Biology'),
    Subject(text: 'English'),
    Subject(text: 'French'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Groups',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search_rounded),
            tooltip: 'Search groups',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_on_rounded),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            GroupsOfSubjects(
              text: 'Mathematics',
              onPressed: () {print('Maths pressed');},
            ),
            GroupsOfSubjects(
              text: 'English',
              onPressed: () {print('english pressed');},
            ),
            GroupsOfSubjects(
              text: 'French',
              onPressed: () {print('French pressed');},
            ),
          ]
            //subjects.map((subject) => SubjectCard(subject: subject)).toList(),
        ),
      ),
    );
  }
}
