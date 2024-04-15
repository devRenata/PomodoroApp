import 'package:flutter/material.dart';
import 'package:pomodoro/app/controllers/timer_controller.dart';
import 'package:pomodoro/app/views/home_page_pomodoro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TimerController controller = TimerController();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePagePomodoro(controller: controller),
    );
  }
}