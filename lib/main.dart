import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import './models.dart';

const kAppBarColor = Color(0xFFFCBD01);

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
      home: const CardScreen(),
    );
  }
}

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          "IOBC Year 2021 Student Quiz Questions",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuestionAndAnswerScreen(
                            question: questions[index].questionText,
                            answer: questions[index].questionAnswer,
                            appBarText: questions[index].title,
                            color: questions[index].questionColor,
                          )));
            },
            child: card(
              questions[index].title!,
              context,
              questions[index].questionColor!,
            ),
          );
        },
      ),
    );
  }
}

class QuestionAndAnswerScreen extends StatelessWidget {
  final String? question;
  final String? answer;
  final String? appBarText;
  final Color? color;

  const QuestionAndAnswerScreen({
    this.answer,
    this.question,
    this.appBarText,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          centerTitle: true,
          title: Text(appBarText!),
        ),
        body: Center(
          child: FlipCard(
            front: questionCard(question!, context, color!),
            back: questionCard(answer!, context, color!),
          ),
        ));
  }
}

Widget card(String text, BuildContext context, Color color) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.2,
    margin: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10.0, // has the effect of softening the shadow
          spreadRadius: 1.0, // has the effect of extending the shadow
          offset: Offset(
            5.0, // horizontal, move right 10
            5.0, // vertical, move down 10
          ),
        )
      ],
      color: color,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 48,
        ),
      ),
    ),
  );
}

Widget questionCard(String text, BuildContext context, Color color) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.8,
    margin: const EdgeInsets.all(24),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: color,
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10.0, // has the effect of softening the shadow
          spreadRadius: 1.0, // has the effect of extending the shadow
          offset: Offset(
            5.0, // horizontal, move right 10
            5.0, // vertical, move down 10
          ),
        )
      ],
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 48,
          ),
        ),
      ),
    ),
  );
}
