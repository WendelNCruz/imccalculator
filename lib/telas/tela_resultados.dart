import 'package:flutter/material.dart';
import 'package:imccalculator/constantes.dart';
import '../componentes/conteudo_padrao.dart';

import '../componentes/botao_inferior.dart';

class TelaResultados extends StatelessWidget {

  TelaResultados({required this.resultadoIMC, required this.resultadoTexto, required this.interpretacao});


  final String resultadoIMC;
  final String resultadoTexto;
  final String interpretacao;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULADORA IMC"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "RESULTADO",
                style: kEstiloTextoResultado,
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: CartaoPadrao(
                cor: Colors.orange,
                filhoCartao: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultadoTexto.toUpperCase(),
                      style: kEstiloTextoResultado,
                    ),
                    Text(
                      resultadoIMC,
                      style: kEstiloResultado,
                    ),
                    Text(
                      interpretacao,
                      style: kEstiloTextoResultado,
                      textAlign: TextAlign.center,
                    ),
                    BotaoInferior(aoPressionar: (){
                      Navigator.pop(context);
                    }, tituloBotao: "RECALCULAR")
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
