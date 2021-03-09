import 'package:flutter/material.dart';
import 'package:student_buddy/screens/Group/list_of_subjects.dart';
import 'package:student_buddy/screens/home.dart';
import 'package:student_buddy/screens/login_screen.dart';
import 'package:student_buddy/screens/registration_screen.dart';
import 'package:student_buddy/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StudentBuddy());
}

class StudentBuddy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        Home.id: (context) => Home(),
        SubjectList.id: (context) => SubjectList()
      },
    );
  }
}

