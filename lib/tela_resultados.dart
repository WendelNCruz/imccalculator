import 'package:flutter/material.dart';

class TelaResultados extends StatelessWidget {
  const TelaResultados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULADORA IMC"),
      ),
      body: Text("Minha Calculadora"),
    );
  }
}