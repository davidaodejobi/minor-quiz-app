import 'package:flutter/material.dart';

const kAppBarColor = Color(0xFFFCBD01);

const kDefaultTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w800,
  fontSize: 20,
);

const kDefaultBoxShadow = [
  BoxShadow(
    color: Colors.grey,
    blurRadius: 10.0, // has the effect of softening the shadow
    spreadRadius: 1.0, // has the effect of extending the shadow
    offset: Offset(
      5.0, // horizontal, move right 10
      5.0, // vertical, move down 10
    ),
  )
];
