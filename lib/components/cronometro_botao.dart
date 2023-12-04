import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({
    super.key,
    required this.texto,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      )),
      onPressed: () {},
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icone,
              size: 25,
            ),
          ),
          Text(
            texto,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
