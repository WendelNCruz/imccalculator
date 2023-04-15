import 'package:flutter/material.dart';
import '../constantes.dart';


class BotaoInferior extends StatelessWidget {
  BotaoInferior({required this.aoPressionar, required this.tituloBotao});

  final Function aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar(),
      child: Container(
        color: const Color(0xFF8E57E9),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 30.0,
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Center(
            child: Text(
              tituloBotao,
              style: kEstiloBotao,
            )),
      ),
    );
  }
}