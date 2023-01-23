import 'package:flutter/material.dart';

class CountDownTimer {
  int duration;
  Color fillcolor;
  Function onComplete;

  CountDownTimer(
      {required this.duration,
      required this.fillcolor,
      required this.onComplete});
}
