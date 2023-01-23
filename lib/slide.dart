import 'package:flutter/material.dart';
import 'package:pomodoro_app/timer.dart';
import 'package:pomodoro_app/utils/constants.dart';

class SlidePage extends StatefulWidget {
  const SlidePage({Key? key}) : super(key: key);

  @override
  State<SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff93A2C4),
              Color(0xffCAD0E3),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 100,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(colors: [
                    Color(0xffCAD0E2),
                    Color(0xff7E95BD),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.2,
                color: const Color(0xffBCC6DE),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('assets/1.png'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(7),
                padding: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 2 * 0.8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Column(
                    children: [
                      const Text(
                        'Never Stress',
                        style: kTextStyle,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Plan your day, stay productive and accomplish your goals',
                        textAlign: TextAlign.center,
                        style: kSubtitle,
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: const Color(0xff706FB8),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 20,
                                color: Color(0xffC9C8E5),
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: IconButton(
                          onPressed: () {
                            MaterialPageRoute(
                                builder: (context) => const TimerPage());
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
