import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

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

Widget questionCard(String text, BuildContext context, Color color) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.8,
    margin: const EdgeInsets.all(24),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: color,
      boxShadow: kDefaultBoxShadow,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: kDefaultTextStyle,
        ),
      ),
    ),
  );
}
