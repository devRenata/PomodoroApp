import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    required this.texto,
    required this.icone,
    this.click,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        textStyle: const TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 25,
              color: store.estaTrabalhando() ? Theme.of(context).primaryColor : const Color.fromARGB(255, 24, 179, 29),
            ),
          ),
          Text(
            texto,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: store.estaTrabalhando() ? Theme.of(context).primaryColor : const Color.fromARGB(255, 24, 179, 29),
            ),
          ),
        ],
      ),
    );
  }
}
