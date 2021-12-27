import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/models.dart';
import 'question_and_answer.dart';

class ListOfQuestionScreen extends StatefulWidget {
  const ListOfQuestionScreen({Key? key}) : super(key: key);

  @override
  _ListOfQuestionScreenState createState() => _ListOfQuestionScreenState();
}

class _ListOfQuestionScreenState extends State<ListOfQuestionScreen> {
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

Widget card(String text, BuildContext context, Color color) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.2,
    margin: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      boxShadow: kDefaultBoxShadow,
      color: color,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(text, textAlign: TextAlign.center, style: kDefaultTextStyle),
    ),
  );
}
