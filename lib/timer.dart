import 'package:flutter/material.dart';
import 'package:pomodoro_app/coundount_timer.dart';
import 'package:ndialog/ndialog.dart';
import 'package:pomodoro_app/utils/constants.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final CountDownController _controller = CountDownController();
  Icon _clockButton = kPlayClockButton;
  bool isClockStarted = false;

 void switchClockActionButton() {
    if (_clockButton == kPlayClockButton) {
      _clockButton = kPauseClockButton;

      if (!_isClockStarted) {
        // Processed on init
        _isClockStarted = true;
        _clockController.start();
      } else {
        // Processed on play
        _clockController.resume();
      }
    } else {
      // Processed on pause
      _clockButton = kPlayClockButton;
      _clockController.pause();
    }
  }
  }

  @override
  Widget build(BuildContext context) {
    int indexTimesComplete = 0;

    CountDownTimer _countDownTimer = CountDownTimer(duration: kWorkDuration, fillcolor: Colors.pink, onComplete: () {
      
    }
    );

    Circularcoun

    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(right: 55, left: 55),
          child: Column(
            children: [
              const SizedBox(height: 130),
              const Text(
                'DASHBOARD DESIGN',
                style: kTimer,
              ),
              const SizedBox(height: 20),
              const Text(
                'Settings page wireframe',
                style: kTitleTimer,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleAvatar('assets/1crop.png'),
                  circleAvatar('assets/2crop.png'),
                  circleAvatar('assets/6crop.png'),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget circleAvatar(String path) {
  return CircleAvatar(
    child: Image.asset(path),
  );
}
