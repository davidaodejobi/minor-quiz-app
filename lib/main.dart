import 'package:flutter/material.dart';

import 'screens/list_of_questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Quiz Questions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListOfQuestionScreen(),
    );
  }
}
