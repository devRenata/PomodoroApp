import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
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
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child:
                    CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 15),
              //   child: CronometroBotao(texto: 'Parar', icone: Icons.stop),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child:
                    CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
              ),
            ],
          )
        ],
      ),
    );
  }
}
