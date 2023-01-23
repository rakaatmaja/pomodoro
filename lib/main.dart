import 'package:flutter/material.dart';
import 'package:pomodoro_app/slide.dart';
import 'package:pomodoro_app/timer.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerPage(),
    );
  }
}
