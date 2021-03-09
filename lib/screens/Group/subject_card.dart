import 'package:flutter/material.dart';
import 'subject.dart';
import 'list_of_subjects.dart';

// class SubjectCard extends StatelessWidget {
//   final Subject subject;
//   SubjectCard({this.subject, this.text});
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return GroupsOfSubjects(subject: subject);
//   }
// }

class GroupsOfSubjects extends StatelessWidget {

  GroupsOfSubjects({this.text, this.onPressed});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // if you need this
        ),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                text,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 6.0),
              // Text(
              //   'Go to community',
              //   style: TextStyle(
              //     fontSize: 16.0,
              //     color: Colors.grey[800],
              //   ),
              // ),
              TextButton.icon(
                onPressed: onPressed,
                label: Text('Go to Community'),
                style: TextButton.styleFrom(primary: Colors.grey),
                icon: Icon(Icons.arrow_forward_rounded),
              ),
            ],
          ),
        ));
  }
}
