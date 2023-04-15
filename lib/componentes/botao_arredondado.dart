import 'package:flutter/material.dart';

//Criação de um Action Button Personalizado
class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({required this.icone, required this.aoPressionar});

  final IconData? icone;
  final Function() aoPressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icone,
        color: Colors.purple,
      ),
      onPressed: aoPressionar,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.red,
    );
  }
}
