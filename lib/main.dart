import 'package:flutter/material.dart';
import '/store/pomodoro.store.dart';
import '/pages/pomodoro.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: const Color.fromARGB(255, 218, 38, 25),
        ),
        home: const Pomodoro(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
