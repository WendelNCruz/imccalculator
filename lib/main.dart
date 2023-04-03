import 'package:flutter/material.dart';
import 'tela_inicial.dart';


void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF8E57E9),
          //secondary: Colors.orange,
        ), textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.blue)),
        scaffoldBackgroundColor: Color(0xFFF4F6FA),
      ),
      home: TelaPrincipal(),
    );
  }
}