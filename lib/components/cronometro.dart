import 'package:flutter/material.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 15),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}