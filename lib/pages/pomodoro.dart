import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/entrada_tempo.dart';
import '../store/pomodoro.store.dart';
import '../components/cronometro.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  titulo: 'Trabalho',
                  valor: store.tempoTrabalho,
                ),
                EntradaTempo(
                  titulo: 'Descanso',
                  valor: store.tempoDescanso,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
