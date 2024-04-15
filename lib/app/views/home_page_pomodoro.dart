import 'package:flutter/material.dart';
import 'package:pomodoro/app/controllers/timer_controller.dart';

class HomePagePomodoro extends StatefulWidget {
  final TimerController controller;
  const HomePagePomodoro({super.key, required this.controller});

  @override
  State<HomePagePomodoro> createState() => _HomePagePomodoroState();
}

class _HomePagePomodoroState extends State<HomePagePomodoro> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pomodoro'),
        ),
        body: Center(
          child: Text('Conteúdo'),
        ), 
      ),
    );
  }
}
